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
// File       : EXERCISER_AXIST_RQ_RW_1024.v
// Version    : 1.0
//-----------------------------------------------------------------------------


(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_RQ_RW_1024 #(
  parameter       AXISTEN_IF_REQ_ALIGNMENT_MODE = 0,
  parameter       AXISTEN_IF_RQ_STRADDLE        = 2'b10, //00: max 1 packet, 01: max 2, 10: max 4, 11: rsvd
  parameter       AXISTEN_IF_REQ_PARITY_CHECK   = 0,
  parameter       AXI4_RQ_TUSER_WIDTH           = 137,
  parameter       SEQ_NUM_IGNORE                = 0,
  parameter [0:0] AXISTEN_IF_ENABLE_CLIENT_TAG  = 0,
  parameter       RQ_AVAIL_TAG_IDX              = 8,
  parameter       RQ_AVAIL_TAG                  = 256,
  parameter       TCQ                           = 1,
  parameter       C_DATA_WIDTH                  = 1024,
  parameter       KEEP_WIDTH                    = C_DATA_WIDTH / 32
)(
   // Clock and Reset
  input user_clk,
  input reset_n,
  input init_rst_i,

  // AXI-S Requester Request Interface
  output reg                                s_axis_rq_tlast,
  output wire [C_DATA_WIDTH - 1:0]          s_axis_rq_tdata,
  output wire [AXI4_RQ_TUSER_WIDTH - 1:0]   s_axis_rq_tuser,
  output reg [KEEP_WIDTH - 1:0]             s_axis_rq_tkeep,
  input                                     s_axis_rq_tready,
  output reg                                s_axis_rq_tvalid,

  input       [5:0] curr_seq_num,
  output wire       seq_num_assigned_0,
  output wire       seq_num_assigned_1,

  // Client Tag
  input                          client_tag_released_0,
  input                          client_tag_released_1,
  input                          client_tag_released_2,
  input                          client_tag_released_3,
  input                          client_tag_released_4,
  input                          client_tag_released_5,
  input                          client_tag_released_6,
  input                          client_tag_released_7,

  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_0,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_1,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_2,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_3,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_4,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_5,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_6,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_7,

  output wire       tags_all_back,
  input             cfg_10b_tag_requester_enable,

  // from control register
  input              mwr_start_i,
  input       [10:0] mwr_len_i,
  input       [31:0] mwr_addr_i,
  input       [31:0] mwr_data_i,
  input       [15:0] mwr_count_i,
  input       [7:0]  mwr_wrr_cnt_i,
  output wire        mwr_done_o,

  input              mrd_start_i,
  input       [10:0] mrd_len_i,
  input       [31:0] mrd_addr_i,
  input       [15:0] mrd_count_i,
  input       [7:0]  mrd_wrr_cnt_i,
  output wire       mrd_done_o,

  input       [31:0] aer_err_cor
);

  localparam READ_STRADDLE_NUM = (AXISTEN_IF_RQ_STRADDLE[1] ? 4 : 2);
//--------------------------------------------------------------------
//  States Overview
//--------------------------------------------------------------------
/*
enum {
  IDLE
 //,EVAL        // 0x0  : evaluation: take some cycles for straddling data
 ,WRITE_32DW_DW0   // 0x1  : WRITE data > 28 DW  -> Size will be multiple of 32, Header @ DW0           - NEXT STATE OF IDLE
 ,WRITE_32DW_DW8   // 0x2  : WRITE data > 28 DW  -> Size will be multiple of 32, Header @ DW8
 ,WRITE_32DW_DW16  // 0x3  : WRITE data > 28 DW  -> Size will be multiple of 32, Header @ DW16
 ,WRITE_32DW_DW24  // 0x4  : WRITE data > 28 DW  -> Size will be multiple of 32, Header @ DW24
 ,WRITE_32DW_DATA  // 0x5  : WRITE data > 28 DW, Data only (no header)
 //,WRITE_20DW_DW0 // 0x-  : WRITE data - (20,28] DW -> not possible since size has to be power of 2
 //,WRITE_20DW_DW16// 0x-  : WRITE data - (20,28] DW -> not possible since size has to be power of 2
 ,WRITE_16DW_DW0   // 0x6  : WRITE data - (12,20] DW   -> must be 16 DW, Header @ DW0                   - NEXT STATE OF IDLE
 ,WRITE_16DW_DW16  // 0x7  : WRITE data - (12,20] DW   -> must be 16 DW, Header @ DW16 ** can start from this state when wr after rd
 ,WRITE_16DW_DW8   // 0x8  : WRITE data - (12,20] DW   -> must be 16 DW, Header @ DW8
 ,WRITE_16DW_DATA  // 0x9  : WRITE data - (12,20] DW   -> must be 16 DW, no header, only in end of write packet
 ,WRITE_8DW        // 0xa  : WRITE data - ( 4,12] DW   -> must be 8 DW - two TLP @ DW0, DW8             - NEXT STATE OF IDLE
 ,WRITE_SMALL_4    // 0xb  : WRITE data < 4 DW - 4 TLP @ DW0, DW8, DW16, DW24                           - NEXT STATE OF IDLE
 ,WRITE_SMALL_2    // 0xc  : WRITE data < 4 DW - 2 TLP @ DW0, DW8
 ,READ_ONLY_2     // 0xd  : READ TLP only
 ,READ_ONLY_4     // 0xe  : READ TLP only
 ,RAW           // 0xf  : READ after WRITE (WRITE + READ) - NEXT STATE OF IDLE
 ,WAR_1HDR      // 0x10  : WRITE after READ (READ + WRITE) 1 WRITE packet after READ  - **wr after rd only
 ,WAR_2HDR      // 0x11  : WRITE after READ (READ + WRITE) 2 WRITE packets after READ - **wr after rd only
 // no straddle states
 ,WRITE_HEADER     // 0x12
 ,WRITE_DATA       // 0x13
 ,READ            // 0x14
 ,DONE          // 0x15   // Last state before going back to IDLE to make sure last packet sent out correctly and then raise rq_done
} state, nxt_state;
*/
  (* make_debug *) (* keep *) reg [4:0] state;
  reg [4:0] nxt_state;

  localparam IDLE         = 5'h00;
  localparam WRITE_HEADER = 5'h12;
  localparam WRITE_DATA   = 5'h13;
  localparam READ         = 5'h14;
  localparam DONE         = 5'h15; // Last state before going back to IDLE to make sure last packet sent out correctly and then raise rq_done

//--------------------------------------------------------------------
//  Internal Signal Declare
//--------------------------------------------------------------------

  wire [29:0] wr_addr_31_2_0;
  wire [29:0] rd_addr_31_2_0;
  reg  [15:0] w_tcnt;
  reg  [15:0] w_tcnt_w;
  reg  [15:0] r_tcnt;
  reg  [15:0] r_tcnt_w;

  // counters/flags for state machine
  reg  [15:0] curr_mwr_count;
  reg  [15:0] curr_mrd_count;
  reg  [26:0] curr_mwr_len;
  reg  [15:0] curr_mwr_wrr_cnt;
  reg  [15:0] curr_mrd_wrr_cnt;
  wire        mwr_en;
  wire        mrd_en;

  reg  [15:0] curr_mwr_count_w;
  reg  [15:0] curr_mrd_count_w;
  reg  [26:0] curr_mwr_len_w;
  reg  [15:0] curr_mwr_wrr_cnt_w;
  reg  [15:0] curr_mrd_wrr_cnt_w;

  reg         rq_done;
  reg         rq_done_w;
  wire [3:0]  mwr_len_log2;
  wire [3:0]  mrd_len_log2;

   // internal AXI RQ bus
  reg  [1023:0]           s_axis_rq_tdata_w;
  reg  [1023:0]           s_axis_rq_tdata_reg;
  reg  [KEEP_WIDTH - 1:0] s_axis_rq_tkeep_w;
  reg                     s_axis_rq_tlast_w;
  reg                     s_axis_rq_tvalid_w;
  reg  [372:0]            s_axis_rq_tuser_w;
  reg  [372:0]            s_axis_rq_tuser_reg;
  reg  [372:0]            s_axis_rq_tuser_w_parity;
  wire [63:0]             s_axis_rq_parity; // TODO

//--------------------------------------------------------------------
//  Wire Assignment
//--------------------------------------------------------------------

  // counter for address
  assign mwr_en = (mwr_start_i & (mwr_count_i[15:0] != 0)) & ~rq_done;
  assign mrd_en = (mrd_start_i & (mrd_count_i[15:0] != 0)) & ~rq_done;
  assign mwr_done_o = mwr_start_i & rq_done;
  assign mrd_done_o = mrd_start_i & rq_done;

  function [3:0] log_case;
	input [10:0] wr_len;
	case (1'b1)
		wr_len[0]: log_case = 0;
		wr_len[1]: log_case = 1;
		wr_len[2]: log_case = 2;
		wr_len[3]: log_case = 3;
		wr_len[4]: log_case = 4;
		wr_len[5]: log_case = 5;
		wr_len[6]: log_case = 6;
		wr_len[7]: log_case = 7;
		wr_len[8]: log_case = 8;
		wr_len[9]: log_case = 9;
		wr_len[10]: log_case = 10;
		default: log_case = 0;
	endcase
  endfunction

  assign mwr_len_log2 = log_case(mwr_len_i);
  assign mrd_len_log2 = log_case(mrd_len_i);
  assign wr_addr_31_2_0 = mwr_addr_i[31:2] + (w_tcnt[15:0] << mwr_len_log2);
  assign rd_addr_31_2_0 = mrd_addr_i[31:2] + (r_tcnt[15:0] << mrd_len_log2);

//TODO
  assign seq_num_assigned_0 = 0;
  assign seq_num_assigned_1 = 0;

  reg client_tag_assigned_0;
  reg client_tag_assigned_0_wire;
  reg client_tag_assigned_1;
  reg client_tag_assigned_1_wire;
  reg client_tag_assigned_2;
  reg client_tag_assigned_2_wire;
  reg client_tag_assigned_3;
  reg client_tag_assigned_3_wire;

// Client tag
  reg  [9:0] client_tag_assigned_num_0;
  reg  [9:0] client_tag_assigned_num_0_d1;
  reg  [9:0] client_tag_assigned_num_0_wire;
  reg  [9:0] client_tag_assigned_num_1;
  reg  [9:0] client_tag_assigned_num_1_d1;
  reg  [9:0] client_tag_assigned_num_1_wire;
  reg  [9:0] client_tag_assigned_num_2;
  reg  [9:0] client_tag_assigned_num_2_d1;
  reg  [9:0] client_tag_assigned_num_2_wire;
  reg  [9:0] client_tag_assigned_num_3;
  reg  [9:0] client_tag_assigned_num_3_d1;
  reg  [9:0] client_tag_assigned_num_3_wire;
  wire [9:0] client_tag_assigned_num_10bit_0;
  wire [9:0] client_tag_assigned_num_10bit_1;
  wire [9:0] client_tag_assigned_num_10bit_2;
  wire [9:0] client_tag_assigned_num_10bit_3;

  reg  [1023:0] avail_client_tag;
  wire [1023:0] avail_client_tag_wire;

  wire [RQ_AVAIL_TAG - 1:0] client_tag_assigned_vec_0;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_assigned_vec_1;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_assigned_vec_2;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_assigned_vec_3;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_0;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_1;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_2;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_3;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_4;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_5;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_6;
  wire [RQ_AVAIL_TAG - 1:0] client_tag_released_vec_7;

  wire [3:0] next_client_tag_available;
  reg        waiting_for_next_tag;
  wire [3:0] tags_all_back_i;

  reg  [31:0] aer_err_cor_reg;
  reg  [31:0] aer_err_delay;
  reg         aer_err_done;

 // Make encoded tags become vectors
genvar var_j;
generate
  for (var_j = 0; var_j < RQ_AVAIL_TAG; var_j = var_j + 1) begin : gen_tag_vec
	assign client_tag_assigned_vec_0[var_j] = client_tag_assigned_0 & (client_tag_assigned_num_0_d1[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_assigned_vec_1[var_j] = client_tag_assigned_1 & (client_tag_assigned_num_1_d1[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_assigned_vec_2[var_j] = client_tag_assigned_2 & (client_tag_assigned_num_2_d1[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_assigned_vec_3[var_j] = client_tag_assigned_3 & (client_tag_assigned_num_3_d1[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_0[var_j] = client_tag_released_0 & (client_tag_released_num_0[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_1[var_j] = client_tag_released_1 & (client_tag_released_num_1[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_2[var_j] = client_tag_released_2 & (client_tag_released_num_2[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_3[var_j] = client_tag_released_3 & (client_tag_released_num_3[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_4[var_j] = client_tag_released_4 & (client_tag_released_num_4[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_5[var_j] = client_tag_released_5 & (client_tag_released_num_5[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_6[var_j] = client_tag_released_6 & (client_tag_released_num_6[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
	assign client_tag_released_vec_7[var_j] = client_tag_released_7 & (client_tag_released_num_7[RQ_AVAIL_TAG_IDX - 1:0] == var_j);
  end
endgenerate

  assign avail_client_tag_wire = (((((((((((avail_client_tag & ~({RQ_AVAIL_TAG {client_tag_assigned_0}} & client_tag_assigned_vec_0))
                                        & ~({RQ_AVAIL_TAG {client_tag_assigned_1}} & client_tag_assigned_vec_1))
                                        & ~({RQ_AVAIL_TAG {client_tag_assigned_2}} & client_tag_assigned_vec_2))
                                        & ~({RQ_AVAIL_TAG {client_tag_assigned_3}} & client_tag_assigned_vec_3))
                                        | ({RQ_AVAIL_TAG {client_tag_released_0}} & client_tag_released_vec_0))
                                        | ({RQ_AVAIL_TAG {client_tag_released_1}} & client_tag_released_vec_1))
                                        | ({RQ_AVAIL_TAG {client_tag_released_2}} & client_tag_released_vec_2))
                                        | ({RQ_AVAIL_TAG {client_tag_released_3}} & client_tag_released_vec_3))
                                        | ({RQ_AVAIL_TAG {client_tag_released_4}} & client_tag_released_vec_4))
                                        | ({RQ_AVAIL_TAG {client_tag_released_5}} & client_tag_released_vec_5))
                                        | ({RQ_AVAIL_TAG {client_tag_released_6}} & client_tag_released_vec_6))
                                        | ({RQ_AVAIL_TAG {client_tag_released_7}} & client_tag_released_vec_7);

  always @(posedge user_clk)
	if (~(reset_n & ~init_rst_i))
		avail_client_tag <= #(TCQ) {RQ_AVAIL_TAG {1'b1}};
	else
		avail_client_tag <= #(TCQ) avail_client_tag_wire;

  assign client_tag_assigned_num_10bit_0 = (cfg_10b_tag_requester_enable ? client_tag_assigned_num_0[9:0] : {2'b00, client_tag_assigned_num_0[7:0]});
  assign client_tag_assigned_num_10bit_1 = (cfg_10b_tag_requester_enable ? client_tag_assigned_num_1[9:0] : {2'b00, client_tag_assigned_num_1[7:0]});
  assign client_tag_assigned_num_10bit_2 = (cfg_10b_tag_requester_enable ? client_tag_assigned_num_2[9:0] : {2'b00, client_tag_assigned_num_2[7:0]});
  assign client_tag_assigned_num_10bit_3 = (cfg_10b_tag_requester_enable ? client_tag_assigned_num_3[9:0] : {2'b00, client_tag_assigned_num_3[7:0]});

  assign tags_all_back = (AXISTEN_IF_ENABLE_CLIENT_TAG ? (cfg_10b_tag_requester_enable ? &tags_all_back_i[3:0] : tags_all_back_i[0]) : 1'b1);
  assign tags_all_back_i[0] = &avail_client_tag[255:0];
  assign tags_all_back_i[1] = &avail_client_tag[511:256];
  assign tags_all_back_i[2] = &avail_client_tag[767:512];
  assign tags_all_back_i[3] = &avail_client_tag[1023:768];

  assign next_client_tag_available[0] = (AXISTEN_IF_ENABLE_CLIENT_TAG ? avail_client_tag[client_tag_assigned_num_10bit_0] : 1'b1);
  assign next_client_tag_available[1] = (AXISTEN_IF_ENABLE_CLIENT_TAG ? avail_client_tag[client_tag_assigned_num_10bit_1] : 1'b1);
  assign next_client_tag_available[2] = (AXISTEN_IF_ENABLE_CLIENT_TAG ? avail_client_tag[client_tag_assigned_num_10bit_2] : 1'b1);
  assign next_client_tag_available[3] = (AXISTEN_IF_ENABLE_CLIENT_TAG ? avail_client_tag[client_tag_assigned_num_10bit_3] : 1'b1);

  function [9:0] incr_tag;
	input       cfg_10b_tag_requester_enable;
	input [9:0] curr_value;
	input [3:0] incr_val;
	reg   [9:0] local_sum;
	begin
		local_sum[9:0] = curr_value[9:0] + incr_val[3:0];
		if (cfg_10b_tag_requester_enable) begin
			incr_tag[7:0] = local_sum[7:0];
			incr_tag[9:8] = (local_sum[9:8] == 2'b00 ? 2'b01 : local_sum[9:8]);
		end
		else begin
			incr_tag[7:0] = local_sum[7:0];
			incr_tag[9:8] = 2'b00;
		end
	end
  endfunction


//--------------------------------------------------------------------
//  State Machine
//--------------------------------------------------------------------
generate
if (AXISTEN_IF_REQ_ALIGNMENT_MODE != 2'b00) begin : genblk1
	always @(*) begin
		nxt_state          = IDLE;
		s_axis_rq_tdata_w  = 'd0;
		s_axis_rq_tkeep_w  = 'd0;
		s_axis_rq_tlast_w  = 'd0;
		s_axis_rq_tvalid_w = 'd0;
		s_axis_rq_tuser_w  = 'd0;
	end
end
else begin : genblk2 // DW-align mode. generate if(AXISTEN_IF_REQ_ALIGNMENT_MODE == "TRUE")
	always @(*) begin
        //**** Internal Signals **** //
		nxt_state               = state;
		w_tcnt_w                = w_tcnt;
		r_tcnt_w                = r_tcnt;
		curr_mwr_count_w        = curr_mwr_count;
		curr_mrd_count_w        = curr_mrd_count;
		curr_mwr_len_w          = curr_mwr_len;
		curr_mwr_wrr_cnt_w      = curr_mwr_wrr_cnt;
		curr_mrd_wrr_cnt_w      = curr_mrd_wrr_cnt;
        //**** RQ Interface **** //
		s_axis_rq_tdata_w       = s_axis_rq_tdata_reg;
		s_axis_rq_tkeep_w       = s_axis_rq_tkeep;
		s_axis_rq_tlast_w       = s_axis_rq_tlast;
		s_axis_rq_tvalid_w      = s_axis_rq_tvalid;
		s_axis_rq_tuser_w       = s_axis_rq_tuser_reg;
		rq_done_w               = rq_done;

        //aer_err_cor_reg <      = aer_err_cor;

	  case (state[4:0])
		IDLE: begin
			w_tcnt_w            = 'd0;
			r_tcnt_w            = 'd0;
			curr_mwr_count_w    = 'd0;
			curr_mrd_count_w    = 'd0;
			curr_mwr_wrr_cnt_w  = 'd0;
			curr_mrd_wrr_cnt_w  = 'd0;
			curr_mwr_len_w      = 'd0;

			s_axis_rq_tdata_w   = 'd0;
			s_axis_rq_tkeep_w   = 'd0;
			s_axis_rq_tlast_w   = 'd0;
			s_axis_rq_tvalid_w  = 'd0;
			s_axis_rq_tuser_w   = 'd0;
			rq_done_w           = rq_done;

            //seq_num_assigned_0     = 1'b0;
            //seq_num_assigned_1     = 1'b0;

            // WRITE Only -> start from write
			if (mwr_en) begin // Write start
				curr_mwr_len_w = mwr_len_i >> 5; // counting multiple of 32 for rest data

                // Write Size States
                nxt_state = WRITE_HEADER;
                curr_mwr_count_w = mwr_count_i - 1;
                curr_mwr_wrr_cnt_w = (mwr_wrr_cnt_i == 0 ? 0 : mwr_wrr_cnt_i - 1);
			end
            // READ only
			else if (mrd_en) begin
                curr_mrd_wrr_cnt_w = 0; // no interleave because no WRITE
                nxt_state = READ;
                curr_mrd_count_w = mrd_count_i - 1;
            end // mrd_en
			else // no requests
				nxt_state = IDLE;
        end // state IDLE

        // NO-STRADDLE
		WRITE_HEADER:
             if(s_axis_rq_tready) begin
                if(mwr_len_i > 28) begin // Need more beats
                  nxt_state = WRITE_DATA;
                  curr_mwr_len_w = curr_mwr_len - 1; // counting multiple of 32 for rest data
                end
                else if(curr_mwr_count == 0) begin // last write packet
                    nxt_state = DONE;
                end
                else begin // not last write
                    nxt_state = WRITE_HEADER;
                    curr_mwr_count_w = curr_mwr_count - 1;
                    curr_mwr_wrr_cnt_w = curr_mwr_wrr_cnt - 1;
                 end

                // Address counting counters:
                w_tcnt_w = w_tcnt + 1;

                //**** RQ Interface **** //
                s_axis_rq_tvalid_w = 1'b1;
                s_axis_rq_tlast_w  = (mwr_len_i[4:0]) ? 1'b1 : 1'b0;

                case(1'b1)
                  mwr_len_i[0] : s_axis_rq_tkeep_w = 32'h1F;       //DW4
                  mwr_len_i[1] : s_axis_rq_tkeep_w = 32'h3F;       //DW5
                  mwr_len_i[2] : s_axis_rq_tkeep_w = 32'hFF;       //DW7
                  mwr_len_i[3] : s_axis_rq_tkeep_w = 32'hFFF;      //DW11
                  mwr_len_i[4] : s_axis_rq_tkeep_w = 32'hFFFFF;    //DW19
                  default      : s_axis_rq_tkeep_w = 32'hFFFFFFFF; //all data are valid
                endcase

				s_axis_rq_tdata_w[1023:128] = {28 {mwr_data_i}};

                if (aer_err_cor == 32'h00006) begin
                       s_axis_rq_tdata_w[111:104] = 8'hFF;
                       s_axis_rq_tdata_w[79]    = 1'b0;
                       s_axis_rq_tdata_w[78-:4] = 4'b1100; // Any message
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;
                       s_axis_rq_tdata_w[36:0]  = 36'hFFFFFFFFF;
                end
                else if (aer_err_cor == 32'h00007) begin
                       s_axis_rq_tdata_w[111:104] = 8'hFF;
                       s_axis_rq_tdata_w[79]    = 1'b1;     // Posioned Request
                       s_axis_rq_tdata_w[78-:4] = 4'b1100; // Any message
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;
                       s_axis_rq_tdata_w[36:0]  = 36'hFFFFFFFFF;
               end
               else if (aer_err_cor == 32'h00008) begin
                       s_axis_rq_tdata_w[78-:4]  = 4'b0001; // MemWr
                       s_axis_rq_tdata_w[74-:11] = 11'h380;

                       s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                       // clear tdata to zero
                       s_axis_rq_tdata_w[127:79] = 'd0;
                       s_axis_rq_tdata_w[1-:2] = 2'b00;
               end
               else if (aer_err_cor_reg == 32'h0000b) begin
                       s_axis_rq_tdata_w[78-:4]  = 4'b0001; // MemWr
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;

                       s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                       // clear tdata to zero
                       s_axis_rq_tdata_w[127:79] = 'd0;
                       s_axis_rq_tdata_w[1-:2]   = 2'b00;
               end
               else if (aer_err_cor == 32'h0000c) begin
                       s_axis_rq_tdata_w[78-:4]  = 4'b0001; // IOW
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;

                       s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                       // clear tdata to zero
                       s_axis_rq_tdata_w[127:79] = 'd0;
                       s_axis_rq_tdata_w[1-:2]   = 2'b00;
               end
               else if (aer_err_cor == 32'h0000d) begin
                       s_axis_rq_tdata_w[78-:4]  = 4'b0001; // MemWr
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;

                       s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                       // clear tdata to zero
                       s_axis_rq_tdata_w[120]    = 1'b1;
                       s_axis_rq_tdata_w[119:96] = 'd0;
                       s_axis_rq_tdata_w[95:88]  = 8'h08;
                       s_axis_rq_tdata_w[87:80]  = 8'h1c;
                       s_axis_rq_tdata_w[79]     = 1'b0;
                       s_axis_rq_tdata_w[1-:2]   = 2'b11;
                end
               else if (aer_err_cor == 32'h0000e) begin
                       s_axis_rq_tdata_w[78-:4]  = 4'b0001; // MemWr
                       s_axis_rq_tdata_w[74-:11] = mwr_len_i;

                       s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                       // clear tdata to zero
                       s_axis_rq_tdata_w[127]    = 1'b1;
                       s_axis_rq_tdata_w[120]    = 1'b1;
                       s_axis_rq_tdata_w[119:96] = 'd0;
                       s_axis_rq_tdata_w[95:88]  = 8'h08;
                       s_axis_rq_tdata_w[87:80]  = 8'h1c;
                       s_axis_rq_tdata_w[79]     = 1'b0;
                       s_axis_rq_tdata_w[1-:2]   = 2'b00;
                end
                else begin
                    s_axis_rq_tdata_w[78-:4]  = 4'b0001; // MemWr
                    s_axis_rq_tdata_w[74-:11] = mwr_len_i;

                    s_axis_rq_tdata_w[63-:62] = {32'd0, wr_addr_31_2_0};
                    // clear tdata to zero
                    s_axis_rq_tdata_w[127:79] = 'd0;
                    s_axis_rq_tdata_w[1-:2] = 2'b00;
                end

				s_axis_rq_tuser_w[59-:2] = 2'b00;
				s_axis_rq_tuser_w[57-:2] = 2'b00;
				s_axis_rq_tuser_w[55-:2] = 2'b00;
				s_axis_rq_tuser_w[53-:2] = 2'b00;
				s_axis_rq_tuser_w[51-:4] = 4'b0001;
				s_axis_rq_tuser_w[83-:5] = 5'b00000;
				s_axis_rq_tuser_w[78-:5] = 5'b00000;
				s_axis_rq_tuser_w[73-:5] = 5'b00000;

                s_axis_rq_tuser_w[63-:4] = (mwr_len_i[4:0] ? 4'b0001 : 4'b0000);

                if (aer_err_cor_reg == 32'h0000c) begin
                    s_axis_rq_tuser_w[31-:16] = 16'h0000;
                end
                else begin
                    s_axis_rq_tuser_w[31-:16] = (mwr_len_i[0] ? 16'h0000 : 16'h000f);
                end
                s_axis_rq_tuser_w[15-:16] = 16'h000f;

                case (1'b1)
                    mwr_len_i[0]: s_axis_rq_tuser_w[68-:5] = 5'b00100; //DW4
                    mwr_len_i[1]: s_axis_rq_tuser_w[68-:5] = 5'b00101; //DW5
                    mwr_len_i[2]: s_axis_rq_tuser_w[68-:5] = 5'b00111; //DW7
                    mwr_len_i[3]: s_axis_rq_tuser_w[68-:5] = 5'b01011; //DW11
                    mwr_len_i[4]: s_axis_rq_tuser_w[68-:5] = 5'b10011; //DW19
                    default: s_axis_rq_tuser_w[68-:5] = 5'b00000; //no eop
                endcase
            end

        WRITE_DATA:
            if(s_axis_rq_tready) begin
                if(curr_mwr_len > 0) begin // Need more beats
                   nxt_state = WRITE_DATA;
                   curr_mwr_len_w = curr_mwr_len - 1; // counting multiple of 32 for rest data
                end
                else if(curr_mwr_count == 0) begin    // data finish in this beat, last write packet
                    // no read packet
                    nxt_state = DONE;
                end
                else begin // not last write -> fetch next header
                    nxt_state          = WRITE_HEADER;
                    curr_mwr_count_w   = curr_mwr_count - 1;
                    curr_mwr_wrr_cnt_w = curr_mwr_wrr_cnt - 1;
                    curr_mwr_len_w     = mwr_len_i >> 5; // counting multiple of 32 for rest data
                end

                //**** RQ Interface **** //
                if ((aer_err_cor_reg == 32'h0000b) && !aer_err_done) begin
                    s_axis_rq_tvalid_w = 1'b0;
                    s_axis_rq_tlast_w  = 1'b1;
                end
                else begin
                    s_axis_rq_tvalid_w = 1'b1;
                    s_axis_rq_tlast_w  = (curr_mwr_len > 0) ? 1'b0 : 1'b1;
                end

                // data can only ends @ DW3 (32 = 28 (header beat) + 4(data end beat))
                s_axis_rq_tkeep_w                = (curr_mwr_len > 0) ? 32'hFFFFFFFF : 32'hF;

                s_axis_rq_tdata_w[1023:0  ]       = {32{mwr_data_i}};

                s_axis_rq_tuser_w[59-:2] = 2'b00; // no sop
                s_axis_rq_tuser_w[57-:2] = 2'b00; // no sop
                s_axis_rq_tuser_w[55-:2] = 2'b00; // no sop
                s_axis_rq_tuser_w[53-:2] = 2'b00; // no sop
                s_axis_rq_tuser_w[51-:4] = 4'b0000;// no sop
                s_axis_rq_tuser_w[83-:5] = 5'b00000;
                s_axis_rq_tuser_w[78-:5] = 5'b00000;
                s_axis_rq_tuser_w[73-:5] = 5'b00000;
                s_axis_rq_tuser_w[68-:5] = (curr_mwr_len > 0 ? 5'b00000 : 5'b00011);
                s_axis_rq_tuser_w[63-:4] = (curr_mwr_len > 0 ? 4'b0000 : 4'b0001);
                s_axis_rq_tuser_w[31-:16] = 16'h0000;// no sop
                s_axis_rq_tuser_w[15-:16] = 16'h0000;// no sop

        end

        READ:
            if (s_axis_rq_tready)
                if (next_client_tag_available[0]) begin
                    waiting_for_next_tag = 'b0;
                    if (curr_mrd_count == 0) begin
                        if (curr_mwr_count == 0)
                            nxt_state = DONE;
                        else begin // only WRITE left
                            nxt_state = WRITE_HEADER;
                            curr_mwr_count_w = curr_mwr_count - 1;
                            curr_mwr_wrr_cnt_w = 0;
                            curr_mwr_len_w = mwr_len_i >> 5; // counting multiple of 32 for rest data
                        end
                    end
                    else begin
                        nxt_state = READ;
                        curr_mrd_count_w = curr_mrd_count - 1;
                        curr_mrd_wrr_cnt_w = curr_mrd_wrr_cnt - 1;
                    end
                    // Address counting counters:
                    r_tcnt_w = r_tcnt + 1;

                    if (AXISTEN_IF_ENABLE_CLIENT_TAG) begin
                        client_tag_assigned_0_wire     = 1'b1;
                        client_tag_assigned_num_0_wire = incr_tag(cfg_10b_tag_requester_enable, client_tag_assigned_num_10bit_0, 1);
                        client_tag_assigned_num_1_wire = incr_tag(cfg_10b_tag_requester_enable, client_tag_assigned_num_10bit_1, 1);
                        client_tag_assigned_num_2_wire = incr_tag(cfg_10b_tag_requester_enable, client_tag_assigned_num_10bit_2, 1);
                        client_tag_assigned_num_3_wire = incr_tag(cfg_10b_tag_requester_enable, client_tag_assigned_num_10bit_3, 1);
                        s_axis_rq_tdata_w[103-:8]      = client_tag_assigned_num_10bit_0[7:0];
                        s_axis_rq_tdata_w[120]         = client_tag_assigned_num_10bit_0[8];
                        s_axis_rq_tdata_w[127]         = client_tag_assigned_num_10bit_0[9];
                    end
                    else begin
                        s_axis_rq_tdata_w[103-:8] = 'd0;
                        s_axis_rq_tdata_w[120]    = 'd0;
                        s_axis_rq_tdata_w[127]    = 'd0;
                    end

                    //**** RQ Interface **** //
                    s_axis_rq_tvalid_w = 1'b1;
                    s_axis_rq_tlast_w  = 1'b1;  // READ always ends within 1 beat
                    s_axis_rq_tkeep_w  = 32'hF; // header -> 4 DW

                    s_axis_rq_tdata_w[1023:128] = 'd0;

                    s_axis_rq_tdata_w[78-:4]   = 4'b0000; // MemRd
                    s_axis_rq_tdata_w[74-:11]  = mrd_len_i;
                    s_axis_rq_tdata_w[63-:62]  = {32'd0, rd_addr_31_2_0}; //TODO: address count
                    //
                    // clear tdata to zero
                    s_axis_rq_tdata_w[1-:2]    = 2'b00;
                    s_axis_rq_tdata_w[95:79]   = 'd0; // req_id, poisoned_req
                    //s_axis_rq_tdata_w[79]      = 1'b0;   // req_id, poisoned_req
                    s_axis_rq_tdata_w[119:104] = 'd0; // cmpl_id
                    s_axis_rq_tdata_w[126:121] = 'd0; // attr, tc

                    s_axis_rq_tuser_w[59-:2] = 2'b00;
                    s_axis_rq_tuser_w[57-:2] = 2'b00;
                    s_axis_rq_tuser_w[55-:2] = 2'b00;
                    s_axis_rq_tuser_w[53-:2] = 2'b00;
                    s_axis_rq_tuser_w[51-:4] = 4'b0001;
                    s_axis_rq_tuser_w[83-:5] = 5'b00000;
                    s_axis_rq_tuser_w[78-:5] = 5'b00000;
                    s_axis_rq_tuser_w[73-:5] = 5'b00000;
                    s_axis_rq_tuser_w[68-:5] = 5'b00011;
                    s_axis_rq_tuser_w[63-:4] = 4'b0001;
                    s_axis_rq_tuser_w[31-:16] = (mrd_len_i[0] ? 16'h0000 : 16'h000f);
                    s_axis_rq_tuser_w[15-:16] = 16'h000f;
                end
                else begin
                    client_tag_assigned_0_wire = 1'b0;
                    client_tag_assigned_1_wire = 1'b0;
                    client_tag_assigned_2_wire = 1'b0;
                    client_tag_assigned_3_wire = 1'b0;
                    waiting_for_next_tag = 'b1;
                    s_axis_rq_tvalid_w = 1'b0;
                end
                DONE:
                    if (s_axis_rq_tready) begin
                        rq_done_w = 1'b1;
                        nxt_state = IDLE;
                        s_axis_rq_tvalid_w = 1'b0; // Pull down the valid if tag is not available
                    end
                endcase // case(state) - State Machine
            end
        end //DW-aligned
    endgenerate

  genvar var_i;
  generate
      for (var_i = 0; var_i < 64; var_i = var_i + 1) begin : rq_parity_generation
          assign s_axis_rq_parity[var_i] = ~(^s_axis_rq_tdata_w[(8 * (var_i + 1)) - 1:8 * var_i]);
      end
  endgenerate

  always @(*) begin
      s_axis_rq_tuser_w_parity = s_axis_rq_tuser_w;
      s_axis_rq_tuser_w_parity[256-:128] = (AXISTEN_IF_REQ_PARITY_CHECK ? s_axis_rq_parity : 64'd0);
  end

  assign s_axis_rq_tdata = s_axis_rq_tdata_reg;
  assign s_axis_rq_tuser = s_axis_rq_tuser_reg;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	s_axis_rq_tdata_reg <= #(TCQ) 1024'd0;
   else
	s_axis_rq_tdata_reg <= #(TCQ) s_axis_rq_tdata_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	s_axis_rq_tkeep <= #(TCQ) 32'd0;
   else
	s_axis_rq_tkeep <= #(TCQ) s_axis_rq_tkeep_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	s_axis_rq_tlast <= #(TCQ) 1'd0;
   else
	s_axis_rq_tlast <= #(TCQ) s_axis_rq_tlast_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	s_axis_rq_tvalid <= #(TCQ) 1'd0;
   else
	s_axis_rq_tvalid <= #(TCQ) s_axis_rq_tvalid_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	s_axis_rq_tuser_reg <= #(TCQ) 373'd0;
   else
	s_axis_rq_tuser_reg <= #(TCQ) s_axis_rq_tuser_w_parity;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	rq_done <= #(TCQ) 1'd0;
   else
	rq_done <= #(TCQ) rq_done_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	state <= #(TCQ) IDLE;
   else
	state <= #(TCQ) nxt_state;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	curr_mwr_count <= #(TCQ) 'd0;
   else
	curr_mwr_count <= #(TCQ) curr_mwr_count_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	curr_mrd_count <= #(TCQ) 'd0;
   else
	curr_mrd_count <= #(TCQ) curr_mrd_count_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	curr_mwr_wrr_cnt <= #(TCQ) 'd0;
   else
	curr_mwr_wrr_cnt <= #(TCQ) curr_mwr_wrr_cnt_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	curr_mrd_wrr_cnt <= #(TCQ) 'd0;
   else
	curr_mrd_wrr_cnt <= #(TCQ) curr_mrd_wrr_cnt_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	curr_mwr_len <= #(TCQ) 'd0;
   else
	curr_mwr_len <= #(TCQ) curr_mwr_len_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	w_tcnt <= #(TCQ) 'd0;
   else
	w_tcnt <= #(TCQ) w_tcnt_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	r_tcnt <= #(TCQ) 'd0;
   else
	r_tcnt <= #(TCQ) r_tcnt_w;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_0 <= #(TCQ) 1'b0;
   else
	client_tag_assigned_0 <= #(TCQ) client_tag_assigned_0_wire;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_1 <= #(TCQ) 1'b0;
   else
	client_tag_assigned_1 <= #(TCQ) client_tag_assigned_1_wire;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_2 <= #(TCQ) 1'b0;
   else
	client_tag_assigned_2 <= #(TCQ) client_tag_assigned_2_wire;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_3 <= #(TCQ) 1'b0;
   else
	client_tag_assigned_3 <= #(TCQ) client_tag_assigned_3_wire;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_num_0_d1 <= #(TCQ) 'd0;
   else
	client_tag_assigned_num_0_d1 <= #(TCQ) client_tag_assigned_num_0;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_num_1_d1 <= #(TCQ) 'd1;
   else
	client_tag_assigned_num_1_d1 <= #(TCQ) client_tag_assigned_num_1;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_num_2_d1 <= #(TCQ) 'd2;
   else
	client_tag_assigned_num_2_d1 <= #(TCQ) client_tag_assigned_num_2;

  always @(posedge user_clk)
   if (~(reset_n & ~init_rst_i))
	client_tag_assigned_num_3_d1 <= #(TCQ) 'd3;
   else
	client_tag_assigned_num_3_d1 <= #(TCQ) client_tag_assigned_num_3;

  always @(posedge user_clk)
   if (!reset_n) begin
	client_tag_assigned_num_0 <= 'd0;
	client_tag_assigned_num_1 <= 'd1;
	client_tag_assigned_num_2 <= 'd2;
	client_tag_assigned_num_3 <= 'd3;
   end
   else if (init_rst_i) begin
	client_tag_assigned_num_0 <= (cfg_10b_tag_requester_enable ? 'd256 : 'd0);
	client_tag_assigned_num_1 <= (cfg_10b_tag_requester_enable ? 'd257 : 'd1);
	client_tag_assigned_num_2 <= (cfg_10b_tag_requester_enable ? 'd258 : 'd2);
	client_tag_assigned_num_3 <= (cfg_10b_tag_requester_enable ? 'd259 : 'd3);
   end
   else begin
	client_tag_assigned_num_0 <= client_tag_assigned_num_0_wire;
	client_tag_assigned_num_1 <= client_tag_assigned_num_1_wire;
	client_tag_assigned_num_2 <= client_tag_assigned_num_2_wire;
	client_tag_assigned_num_3 <= client_tag_assigned_num_3_wire;
   end



   always @(posedge user_clk)
        if (~(reset_n & ~init_rst_i)) begin
           aer_err_delay <= 'd0;
           aer_err_done  <= 1'b0;
        end
        else begin
        if ((aer_err_cor_reg == 32'h0000b)) begin
            if (aer_err_delay == 'd3000) begin
                aer_err_delay   <= 'd0;
                aer_err_cor_reg <= 32'h0;
                aer_err_done    <= 1'b1;
            end
            else begin
                aer_err_delay <= aer_err_delay + 1'b1;
            end
        end
        else
            aer_err_cor_reg <= aer_err_cor;
	    end

axis_ila_2 rq_states (
  .clk(user_clk),             // input wire clk
  .probe0(s_axis_rq_tlast),   // input wire [0 : 0]    probe0
  .probe1(s_axis_rq_tdata),   // input wire [1023 : 0] probe1
  .probe2(s_axis_rq_tuser),   // input wire [448 : 0]  probe2
  .probe3(s_axis_rq_tkeep),   // input wire [31 : 0]   probe3
  .probe4(s_axis_rq_tready),  // input wire [0 : 0]    probe4
  .probe5(s_axis_rq_tvalid),  // input wire [0 : 0]    probe5
  .probe6(curr_mwr_count),    // input wire [15 : 0]   probe6
  .probe7(curr_mrd_count),    // input wire [15 : 0]   probe7
  .probe8(curr_mwr_len),      // input wire [26 : 0]   probe8
  .probe9(curr_mwr_wrr_cnt),  // input wire [15 : 0]   probe9
  .probe10(curr_mrd_wrr_cnt), // input wire [15 : 0]   probe10
  .probe11(aer_err_cor_reg),  // input wire [31 : 0]   probe11
  .probe12(aer_err_delay),    // input wire [31 : 0]   probe12
  .probe13(aer_err_done)      // input wire [0 : 0]    probe13
);
endmodule

