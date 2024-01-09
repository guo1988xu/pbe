//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : Everest FPGA PCI Express Exerciser
// File       : EXERCISER_AXIST_CC_512.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_CC_512 #(
   parameter         AXISTEN_IF_CMP_ALIGNMENT_MODE = 0,
   parameter         AXISTEN_IF_CC_STRADDLE        = 0,
   parameter         AXISTEN_IF_CMP_PARITY_CHECK   = 0,
   parameter         AXI4_CQ_TUSER_WIDTH           = 183,
   parameter         AXI4_CC_TUSER_WIDTH           = 81,
   parameter         AXI4_RQ_TUSER_WIDTH           = 137,
   parameter         AXI4_RC_TUSER_WIDTH           = 161,
   parameter         TCQ                           = 1
)(
   // Clock and Reset
   input user_clk,
   input reset_n,

   // AXI-S Completer Competion Interface
   output reg  [511:0] s_axis_cc_tdata,
   output reg  [15:0]  s_axis_cc_tkeep,
   output reg          s_axis_cc_tlast,
   output reg          s_axis_cc_tvalid,
   output reg  [80:0]  s_axis_cc_tuser,
   input               s_axis_cc_tready,

   // TX Message Interface
   output reg          cfg_msg_transmit,
   output reg  [2:0]   cfg_msg_transmit_type,
   output reg  [31:0]  cfg_msg_transmit_data,

   // EXERCISER_AXIST RX Engine Interface
   input               req_compl,
   input               req_compl_wd,
   input               req_compl_ur,
   input               req_compl_error,

   input       [31:0]  aer_err_cor,
   input       [31:0]  aer_err_uncor,
   input       [31:0]  aer_control,
   output reg  [31:0]  aer_err_cor_done,
   output reg  [31:0]  aer_err_uncor_done,

   input               payload_len,
   output reg          compl_done,

   input       [2:0]    req_tc,
   input       [2:0]    req_attr,
   input       [15:0]   req_rid,
   input       [7:0]    req_tag,
   input       [7:0]    req_be,
   input       [12:0]   req_addr,
   input       [1:0]    req_at,

   //Indicate that the Request was a Mem lock Read Req  // Inputs to the TX Block in case of an UR
   // Required to form the completions
   input       [63:0]   req_des_qword0,
   input       [63:0]   req_des_qword1,
   input                req_des_tph_present,
   input       [1:0]    req_des_tph_type,
   input       [7:0]    req_des_tph_st_tag,

   input                req_mem_lock,
   input                req_mem,

   // EXERCISER_AXIST Memory Access Control Interface
   output wire [10:0] rd_addr,
   output wire [3:0]  rd_be,
   input       [31:0] rd_data   // To Store the 1st rd_data in case of 2DW payload
);

   reg            dword_count;
   reg   [31:0]   rd_data_reg;
   reg   [6:0]    lower_addr;
   reg   [3:0]    state;
   reg            req_compl_q;
   reg            req_compl_qq;
   reg            req_compl_wd_q;
   reg            req_compl_wd_qq;
   reg            req_compl_ur_q;
   reg            req_compl_ur_qq;
   reg            req_compl_error_q;
   reg            req_compl_error_qq;

   reg   [31:0]   aer_err_cor_reg;
   reg   [31:0]   aer_err_uncor_reg;
   reg            posioned_completion;    // Posioned completion
   reg   [2:0]    completion_state;       // Completion Status - 000: Successful Completion 001: Unsupported Request (UR) 100: Completer Abort (CA)
   reg   [31:0]   aer_err_done_delay;
   reg            aer_done;

   reg   [511:0]  s_axis_cc_tdata_wire;
   wire  [63:0]   s_axis_cc_parity;
   reg   [6:0]    lower_addr_q;


   // TODO: Legacy code, need to review
   localparam EXERCISER_AXIST_TX_RST_STATE                 = 4'b0000;
   localparam EXERCISER_AXIST_TX_COMPL_C1                  = 4'b0001;
   localparam EXERCISER_AXIST_TX_COMPL_WD_C1               = 4'b0011;
   localparam EXERCISER_AXIST_TX_COMPL_PYLD                = 4'b0101;
   localparam EXERCISER_AXIST_TX_CPL_UR_C1                 = 4'b0110;
   localparam EXERCISER_AXIST_TX_COMPL_WD_2DW              = 4'b1010;
   localparam EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C1 = 4'b1011;
   localparam EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C2 = 4'b1100;

   localparam EXERCISER_AXIST_TX_COMPL_ERROR               = 4'b1111;

   always @(posedge user_clk)
	if (~reset_n)
		req_compl_q <= #(TCQ) 'd0;
	else
		req_compl_q <= #(TCQ) req_compl;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_wd_q <= #(TCQ) 'd0;
	else
		req_compl_wd_q <= #(TCQ) req_compl_wd;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_ur_q <= #(TCQ) 'd0;
	else
		req_compl_ur_q <= #(TCQ) req_compl_ur;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_error_q <= #(TCQ) 'd0;
	else
		req_compl_error_q <= #(TCQ) req_compl_error;

   always @(posedge user_clk)
	if (~reset_n)
		req_compl_qq <= #(TCQ) 'd0;
	else
		req_compl_qq <= #(TCQ) req_compl_q;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_wd_qq <= #(TCQ) 'd0;
	else
		req_compl_wd_qq <= #(TCQ) req_compl_wd_q;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_ur_qq <= #(TCQ) 'd0;
	else
		req_compl_ur_qq <= #(TCQ) req_compl_ur_q;
   always @(posedge user_clk)
	if (~reset_n)
		req_compl_error_qq <= #(TCQ) 'd0;
	else
		req_compl_error_qq <= #(TCQ) req_compl_error_q;

/*
   always @(posedge user_clk)
	if (~reset_n)
    begin
        aer_done <= 1'b0;
        aer_err_done_delay <= 0;
    end
    else if (aer_err_done_delay==32'h100)
    begin
        aer_err_done_delay <= 0;
        aer_done <= 1'b1;
    end
    else
    begin
        if (aer_err_cor)
            aer_err_done_delay <= aer_err_done_delay+1;
    end
*/

   // Calculate lower address based on byte enable
   always @(*)
	casex ({req_compl_wd_qq, rd_be[3:0]})
		5'b0xxxx: lower_addr = 8'h00;
		5'b10000: lower_addr = {req_addr[6:2], 2'b00};
		5'b1xxx1: lower_addr = {req_addr[6:2], 2'b00};
		5'b1xx10: lower_addr = {req_addr[6:2], 2'b01};
		5'b1x100: lower_addr = {req_addr[6:2], 2'b10};
		5'b11000: lower_addr = {req_addr[6:2], 2'b11};
	endcase

   always @(posedge user_clk)
	if (!reset_n)
		lower_addr_q <= #(TCQ) 'd0;
	else
		lower_addr_q <= #(TCQ) lower_addr;

   always @(posedge user_clk)
	if (!reset_n)
		aer_err_cor_reg <= #(TCQ) 'd0;
	else if ((aer_err_cor > 0) && (aer_err_cor < 32'h0000000a))
		aer_err_cor_reg <= #(TCQ) aer_err_cor;
    else
		aer_err_cor_reg <= #(TCQ) 'd0;

   always @(posedge user_clk)
	if (!reset_n)
		aer_err_uncor_reg <= #(TCQ) 'd0;
	else
		aer_err_uncor_reg <= #(TCQ) aer_err_uncor;
		
   // Generate parity for data
   always @(*)
	case (state)
        EXERCISER_AXIST_TX_COMPL_ERROR: begin

            if (aer_err_cor_reg == 32'h00000001) begin       // Timeout
                posioned_completion <= 1'b0;
                completion_state    <= 3'b000;
            end
            else if (aer_err_cor_reg == 32'h00000002) begin  //Unsupported Request (UR)
                posioned_completion <= 1'b0;
                completion_state    <= 3'b001;
            end
            else if (aer_err_cor_reg == 32'h00000003) begin  //Completer Abort (CA)
                posioned_completion <= 1'b0;
                completion_state    <= 3'b100;
            end
            else if (aer_err_cor_reg == 32'h00000004) begin  //Poisoned Completion
                posioned_completion <= 1'b1;
                completion_state    <= 3'b000;
            end
            else if (aer_err_cor_reg == 32'h00000005) begin  //Reserve
                posioned_completion <= 1'b0;
                completion_state    <= 3'b111;
            end
            else
              begin
                posioned_completion <= 1'b0;
                completion_state    <= 3'b001;
              end

            s_axis_cc_tdata_wire = {416'b0,        // Tied to 0 for 3DW completion descriptor
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    posioned_completion,          // Posioned completion
                                    completion_state,        // Completion Status - UR
                                    (req_mem ? (11'h1 + payload_len) : 11'b0),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    1'b0,          // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
        end
		EXERCISER_AXIST_TX_COMPL_C1:
            s_axis_cc_tdata_wire = {416'b0,        // Tied to 0 for 3DW completion descriptor
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b000,        // SuccessFull completion
                                    (req_mem ? (11'h1 + payload_len) : 11'b0),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    1'b0,          // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
         EXERCISER_AXIST_TX_COMPL_WD_C1 :
          if(AXISTEN_IF_CMP_ALIGNMENT_MODE == 2'b00) begin // DWORD_aligned_Mode
            s_axis_cc_tdata_wire = {384'b0,        // Tied to 0 for 3DW completion descriptor
                                    rd_data,       // 32- bit read data
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b000,        // SuccessFull completion
                                    (req_mem ? (11'h1 + payload_len) : 11'b1),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    (req_mem_lock? 1'b1 : 1'b0),  // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
          end
          else begin // Addr_aligned_mode
            s_axis_cc_tdata_wire[511:128]  =  (lower_addr[3:2]==2'b00)   ? {256'b0, 96'b0, rd_data}
                                             :(lower_addr[3:2]==2'b01)   ? {256'b0, 64'b0, rd_data, 32'b0}
                                             :(lower_addr[3:2]==2'b10)   ? {256'b0, 32'b0, rd_data, 64'b0}
                                             :/*(lower_addr[3:2]==2'b11)?*/{256'b0,        rd_data, 96'b0};
            s_axis_cc_tdata_wire[127:0]    =  {
                                    32'b0,         // Tied to 0 for 3DW completion descriptor
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b000,        // SuccessFull completion
                                    (req_mem ? (11'h1 + payload_len) : 11'b1),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    (req_mem_lock? 1'b1 : 1'b0),      // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
          end
         EXERCISER_AXIST_TX_CPL_UR_C1 :
            s_axis_cc_tdata_wire = {req_des_qword1, // 64 bits - Descriptor of the request 2 DW
                                    req_des_qword0, // 64 bits - Descriptor of the request 2 DW
                                    8'b0, // Rsvd
                                    req_des_tph_st_tag,   // TPH Steering tag - 8 bits
                                    5'b0,  // Rsvd
                                    req_des_tph_type,    // TPH type - 2 bits
                                    req_des_tph_present, // TPH present - 1 bit
                                    req_be,          // Request Byte enables - 8bits
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b001,        // Completion Status - UR
                                    11'h005,       // DWord Count -55
                                    2'b0,          // Rsvd
                                    (req_mem_lock? 1'b1 : 1'b0),   // Locked Read Completion
                                    13'h0014,      // Byte Count - 20 bytes of Payload
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
         EXERCISER_AXIST_TX_COMPL_PYLD :
            s_axis_cc_tdata_wire = {480'b0, rd_data};
         EXERCISER_AXIST_TX_COMPL_WD_2DW :
            s_axis_cc_tdata_wire = {
                                    96'b0,         // Tied to 0 for 3DW completion descriptor with 2DW Payload
                                    rd_data,       // 32 bit read data
                                    rd_data_reg,   // 32- bit read data
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b000,        // SuccessFull completion
                                    (req_mem ? (11'h1 + payload_len) : 11'b1),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    (req_mem_lock? 1'b1 : 1'b0),   // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr};   // Starting address of the mem byte - 7 bits
         EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C1 : begin // Completions with 2-DW Payload and Addr aligned mode -- Not implemented for 512
            s_axis_cc_tdata_wire[511:128] =  (lower_addr_q[3:2]==2'b00)   ? {256'b0, 64'b0, rd_data,rd_data_reg}
                                            :(lower_addr_q[3:2]==2'b01)   ? {256'b0, 32'b0, rd_data,rd_data_reg, 32'b0}
                                            :(lower_addr_q[3:2]==2'b10)   ? {256'b0,        rd_data,rd_data_reg, 64'b0}
                                            :/*(lower_addr_q[3:2]==2'b11)?*/{224'b0,        rd_data,rd_data_reg, 96'b0};
            s_axis_cc_tdata_wire[127:0]    = {
                                    32'b0,         // Tied to 0 for 3DW completion descriptor with 2DW Payload
                                    1'b0,          // Force ECRC
                                    req_attr,      // 3- bits
                                    req_tc,        // 3- bits
                                    1'b0,          // Completer ID to control selection of Client
                                                   // Supplied Bus number
                                    8'hAA,         // Completer Bus number - selected if Compl ID    = 1
                                    8'hBB,         // Compl Dev / Func no - sel if Compl ID = 1
                                    req_tag,       // Select Client Tag or core's internal tag
                                    req_rid,       // Requester ID - 16 bits
                                    1'b0,          // Rsvd
                                    1'b0,          // Posioned completion
                                    3'b000,        // SuccessFull completion
                                    (req_mem ? (11'h1 + payload_len) : 11'b1),         // DWord Count 0 - IO Write completions
                                    2'b0,          // Rsvd
                                    (req_mem_lock? 1'b1 : 1'b0),   // Locked Read Completion
                                    13'h0004,      // Byte Count
                                    6'b0,          // Rsvd
                                    req_at,        // Adress Type - 2 bits
                                    1'b0,          // Rsvd
                                    lower_addr_q}; // Starting address of the mem byte - 7 bits
         end
		default: s_axis_cc_tdata_wire = 512'd0;
	endcase

genvar var_i;
generate
	for (var_i = 0; var_i < 64; var_i = var_i + 1) begin : rq_parity_generation
		assign s_axis_cc_parity[var_i] = ~(^s_axis_cc_tdata_wire[(8 * (var_i + 1)) - 1:8 * var_i]);
	end
endgenerate

   always @(posedge user_clk)
	if (!reset_n) begin
		state                   <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
		s_axis_cc_tdata         <= #(TCQ) 'd0;
		s_axis_cc_tkeep         <= #(TCQ) 'd0;
		s_axis_cc_tlast         <= #(TCQ) 1'b0;
		s_axis_cc_tvalid        <= #(TCQ) 1'b0;
		s_axis_cc_tuser         <= #(TCQ) 81'b0;
		cfg_msg_transmit        <= #(TCQ) 1'b0;
		cfg_msg_transmit_type   <= #(TCQ) 3'b0;
		cfg_msg_transmit_data   <= #(TCQ) 32'b0;
		compl_done              <= #(TCQ) 1'b0;
		dword_count             <= #(TCQ) 1'b0;
        aer_err_cor_done        <= #(TCQ) 'd0;
        aer_err_done_delay      <= #(TCQ) 'd0;

	end // reset_else_block
	else
		case (state)
			EXERCISER_AXIST_TX_RST_STATE: begin  // Reset_State
				state                   <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
				s_axis_cc_tdata         <= #(TCQ) s_axis_cc_tdata_wire;
				s_axis_cc_tkeep         <= #(TCQ) 16'hffff;
				s_axis_cc_tlast         <= #(TCQ) 1'b0;
				s_axis_cc_tvalid        <= #(TCQ) 1'b0;
				s_axis_cc_tuser         <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 17'd0};
				//cfg_msg_transmit        <= #(TCQ) 1'b0;
				//cfg_msg_transmit_type   <= #(TCQ) 3'b0;
				//cfg_msg_transmit_data   <= #(TCQ) 32'b0;
				compl_done              <= #(TCQ) 1'b0;
				dword_count             <= #(TCQ) 1'b0;
                //aer_err_cor_done        <= #(TCQ) 'd0;
   
                if (aer_control[0] == 1'b1) 
                    aer_err_cor_done <= #(TCQ) 1'b0;
   
				if (req_compl)
					state <= #(TCQ) EXERCISER_AXIST_TX_COMPL_C1;
				else if (req_compl_wd)
					state <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_C1;
				else if (req_compl_ur)
					state <= #(TCQ) EXERCISER_AXIST_TX_CPL_UR_C1;
                else if (req_compl_error) begin
                    if (aer_err_cor_reg == 32'h00000001) begin
                        if (aer_err_done_delay == 32'h800000) begin
                            aer_err_done_delay   <= 0;
                            aer_err_cor_done     <= #(TCQ) 1'b1;
                            //state                <= #(TCQ) EXERCISER_AXIST_TX_COMPL_ERROR;
                        end
                        else
                            aer_err_done_delay <= aer_err_done_delay + 1'b1;
                        
                        state <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;

                    end
                    else if (aer_err_cor_reg == 32'h00000005) begin
                            if (aer_err_done_delay < 32'h8000) begin
                                aer_err_done_delay <= aer_err_done_delay + 1'b1;
                                state  <= #(TCQ) EXERCISER_AXIST_TX_COMPL_ERROR;
                            end
                            else begin
                               state <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
                               aer_err_cor_done     <= #(TCQ) 1'b1;
                            end
                    end
                    else
                        state <= #(TCQ) EXERCISER_AXIST_TX_COMPL_ERROR;
                    end
			end // EXERCISER_AXIST_TX_RST_STATE

			EXERCISER_AXIST_TX_COMPL_C1: // Completion Without Payload - Alignment doesnt matter
                                   // Sent in a Single Beat When Interface Width is 512 bit
				if (req_compl_qq) begin
					s_axis_cc_tvalid <= #(TCQ) 1'b1;
					s_axis_cc_tlast  <= #(TCQ) 1'b1;
					s_axis_cc_tkeep  <= #(TCQ) 16'h0007;
					s_axis_cc_tdata  <= #(TCQ) s_axis_cc_tdata_wire;
					s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 8'b00000010, 2'b01, 2'b00, 2'b00, 2'b01};
					if (s_axis_cc_tready) begin
						state        <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
						compl_done   <= #(TCQ) 1'b1;
					end
					else
						state        <= #(TCQ) EXERCISER_AXIST_TX_COMPL_C1;
				end  //EXERCISER_AXIST_TX_COMPL

			EXERCISER_AXIST_TX_COMPL_ERROR: // Completion Without Payload - Alignment doesnt matter
                                   // Sent in a Single Beat When Interface Width is 512 bit
				if (req_compl_error_qq) begin
					s_axis_cc_tvalid <= #(TCQ) 1'b1;
					s_axis_cc_tlast  <= #(TCQ) 1'b1;
					s_axis_cc_tkeep  <= #(TCQ) 16'h0007;
					s_axis_cc_tdata  <= #(TCQ) s_axis_cc_tdata_wire;
					s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 8'b00000010, 2'b01, 2'b00, 2'b00, 2'b01};
					if (s_axis_cc_tready) begin
						state             <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
                        if (aer_err_cor_reg == 32'h00000005)
                            aer_err_cor_done  <= 32'h0;
                        else
                            aer_err_cor_done  <= 32'h1;
                        //aer_err_cor_done    <= #(TCQ) aer_done;
						compl_done   <= #(TCQ) 1'b1;
                    end
					else
						state        <= #(TCQ) EXERCISER_AXIST_TX_COMPL_ERROR;
				end  //EXERCISER_AXIST_TX_COMPL_ERROR

			EXERCISER_AXIST_TX_COMPL_WD_C1:  // Completion With Payload
                                       // Possible Scenario's Payload can be 1 DW or 2 DW
                                       // Alignment can be either of Dword aligned or address aligned
				if (req_compl_wd_qq)
					if (payload_len == 0)  begin // 1DW_packet - Requires just one cycle to get the data rd_data from the BRAM.
						if (AXISTEN_IF_CMP_ALIGNMENT_MODE == 2'b00) begin // DWORD_aligned_Mode
							s_axis_cc_tvalid <= #(TCQ) 1'b1;
							s_axis_cc_tlast  <= #(TCQ) 1'b1;
							s_axis_cc_tkeep  <= #(TCQ) 16'h000f;
							s_axis_cc_tdata  <= #(TCQ) s_axis_cc_tdata_wire;
							s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 8'b00000011, 2'b01, 2'b00, 2'b00, 2'b01};
							if (s_axis_cc_tready) begin
								state        <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
								compl_done   <= #(TCQ) 1'b1;
							end
							else
								state        <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_C1;
						end  //DWORD_aligned_Mode

						else begin // Addr_aligned_mode
							s_axis_cc_tvalid <= #(TCQ) 1'b1;
							s_axis_cc_tlast  <= #(TCQ) 1'b1;
							s_axis_cc_tkeep  <= #(TCQ) (lower_addr[3:2] == 2'b00 ? 16'h001f :
                                                      (lower_addr[3:2] == 2'b01 ? 16'h003f :
                                                      (lower_addr[3:2] == 2'b10 ? 16'h007f :
                                                      /*(lower_addr_q[3:2]==2'b10) ?*/16'h00ff)));

							s_axis_cc_tdata <= #(TCQ) s_axis_cc_tdata_wire;
							s_axis_cc_tuser <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 4'b0000, {2'b01, lower_addr[3:2]}, 2'b01, 2'b00, 2'b00, 2'b01};

							if (s_axis_cc_tready) begin
								state       <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
								compl_done  <= #(TCQ) 1'b1;
							end
							else begin
								state       <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_C1;
								compl_done  <= #(TCQ) 1'b0;
							end
						end    // Addr_aligned_mode

					end //1DW_packet

                     // 2DW_packet -- Not implemented for 512
					else if (AXISTEN_IF_CMP_ALIGNMENT_MODE == 2'b00) begin // DWORD_aligned_Mode
						dword_count <= #(TCQ) 1'b1; // To increment the Read Address
						rd_data_reg <= #(TCQ) rd_data; // store the current read data
						state       <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_2DW;
                    end  //DWORD_aligned_Mode

                    else begin // Address ALigned Mode
						s_axis_cc_tvalid <= #(TCQ) 1'b0;
						s_axis_cc_tlast  <= #(TCQ) 1'b0;
						s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 17'd0};
						rd_data_reg      <= #(TCQ) rd_data; // store the current read data
						compl_done       <= #(TCQ) 1'b0;
						state            <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C1;
					end  // Address ALigned mode


			EXERCISER_AXIST_TX_COMPL_PYLD: begin // Completion with 1DW Payload in Address Aligned mode
				s_axis_cc_tvalid <= #(TCQ) 1'b1;
				s_axis_cc_tlast <= #(TCQ) 1'b1;
				s_axis_cc_tkeep <= #(TCQ) 16'h0001;
				s_axis_cc_tdata <= #(TCQ) s_axis_cc_tdata_wire;
				s_axis_cc_tuser <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 8'b00000000, 2'b01, 2'b00, 2'b00, 2'b00};

				if (s_axis_cc_tready) begin
					state       <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
					compl_done  <= #(TCQ) 1'b1;
				end
				else
					state       <= #(TCQ) EXERCISER_AXIST_TX_COMPL_PYLD;
			end // EXERCISER_AXIST_TX_COMPL_PYLD

			EXERCISER_AXIST_TX_COMPL_WD_2DW: begin // Completion with 2DW Payload in DWord Aligned mode ---- Not implemenetd for 512 case
                                          // Requires 2 states to get the 2DW Payload

				s_axis_cc_tvalid <= #(TCQ) 1'b1;
				s_axis_cc_tlast  <= #(TCQ) 1'b1;
				s_axis_cc_tkeep  <= #(TCQ) 8'h1f;
				s_axis_cc_tdata  <= #(TCQ) s_axis_cc_tdata_wire;
				s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 17'd0};

				if (s_axis_cc_tready) begin
				    state      <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
					compl_done <= #(TCQ) 1'b1;
				end
				else begin
					state       <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_2DW;
					dword_count <= #(TCQ) 1'b1; // To increment the Read Address
					rd_data_reg <= #(TCQ) rd_data; // store the current read data
				end
            end //  EXERCISER_AXIST_TX_COMPL_WD_2DW

			EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C1: begin // Completions with 2-DW Payload and Addr aligned mode -- Not implemented for 512

				s_axis_cc_tvalid <= #(TCQ) 1'b1;
				s_axis_cc_tlast  <= #(TCQ) 1'b1;
				s_axis_cc_tkeep  <= #(TCQ) (lower_addr_q[3:2] == 2'b00 ? 16'h003f :
                                           (lower_addr_q[3:2] == 2'b01 ? 16'h007f :
                                           (lower_addr_q[3:2] == 2'b10 ? 16'h00ff :
                                           /*(lower_addr_q[3:2]==2'b10) ?*/16'h01ff)));
				s_axis_cc_tdata  <= #(TCQ) s_axis_cc_tdata_wire;

				s_axis_cc_tuser  <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), // parity 64 bit -[80:17]
                                           1'b0,                    // Discontinue
                                           4'b0000,                 // is_eop1_ptr
                                           4'b0000,                 // is_eop0_ptr
                                           2'b01,                   // is_eop[1:0]
                                           2'b00,                   // is_sop1_ptr[1:0]
                                           2'b00,                   // is_sop0_ptr[1:0]
                                           2'b01};                  // is_sop[1:0]


				dword_count      <= #(TCQ) 1'b0;
				if (s_axis_cc_tready) begin
					state <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
					compl_done <= #(TCQ) 1'b1;
				end // EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN
				else
					state <= #(TCQ) EXERCISER_AXIST_TX_COMPL_WD_2DW_ADDR_ALGN_C1;
			end

			EXERCISER_AXIST_TX_CPL_UR_C1: // Completions with UR - Alignement mode matters here
				if (req_compl_ur_qq) begin
					s_axis_cc_tvalid <= #(TCQ) 1'b1;
					s_axis_cc_tlast <= #(TCQ) 1'b1;
					s_axis_cc_tkeep <= #(TCQ) 16'h00ff;
					s_axis_cc_tdata <= #(TCQ) s_axis_cc_tdata_wire;
					s_axis_cc_tuser <= #(TCQ) {(AXISTEN_IF_CMP_PARITY_CHECK ? s_axis_cc_parity : 64'd0), 1'b0, 8'b00000111, 2'b01, 2'b00, 2'b00, 2'b01};
					if (s_axis_cc_tready) begin
						state <= #(TCQ) EXERCISER_AXIST_TX_RST_STATE;
						compl_done <= #(TCQ) 1'b1;
					end
					else
						state <= #(TCQ) EXERCISER_AXIST_TX_CPL_UR_C1;
				end // EXERCISER_AXIST_TX_CPL_UR

		endcase

   // Present address and byte enable to memory module
   assign rd_addr = (dword_count == 0 ? req_addr[12:2] : req_addr[12:2] + 11'h001);
   assign rd_be = (dword_count == 0 ? req_be[3:0] : req_be[7:4]);

axis_ila_1 axi_cc_states (
  .clk(user_clk),                   // input wire clk
  .probe0(state),                   // input wire [3 : 0] probe0
  .probe1(req_compl_error_q),       // input wire [0 : 0] probe1
  .probe2(cfg_msg_transmit),        // input wire [0 : 0] probe2
  .probe3(cfg_msg_transmit_type),   // input wire [2 : 0] probe3
  .probe4(cfg_msg_transmit_data),   // input wire [31 : 0] probe4
  .probe5(req_compl_error),         // input wire [0 : 0] probe5
  .probe6(req_compl_wd),            // input wire [0 : 0] probe6
  .probe7(req_compl_ur),            // input wire [0 : 0] probe7
  .probe8(completion_state),        // input wire [2 : 0] probe8
  .probe9(aer_err_cor_done),        // input wire [31 : 0] probe9
  .probe10(aer_err_cor_reg),        // input wire [31 : 0] probe10
  .probe11(aer_control),            // input wire [31 : 0] probe11
  .probe12(posioned_completion),    // input wire [0 : 0] probe12
  .probe13(aer_err_done_delay)      // input wire [31 : 0] probe13

);

endmodule // EXERCISER_AXIST_CC_512
