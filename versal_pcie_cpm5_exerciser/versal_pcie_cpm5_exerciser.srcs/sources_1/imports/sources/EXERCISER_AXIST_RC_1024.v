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
// File       : EXERCISER_AXIST_RC_1024.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_RC_1024 #(
	parameter AXISTEN_IF_REQ_ALIGNMENT_MODE    = 0,
	parameter AXISTEN_IF_RC_STRADDLE           = 2'b00,
	parameter AXISTEN_IF_REQ_PARITY_CHECK      = 0,
	parameter AXI4_RC_TUSER_WIDTH              = 161,
	parameter AXISTEN_IF_ENABLE_CLIENT_TAG     = 0,
	parameter RQ_AVAIL_TAG_IDX                 = 8,
	parameter C_DATA_WIDTH                     = 1024,
	parameter KEEP_WIDTH                       = C_DATA_WIDTH / 32,
	parameter TCQ                              = 1
)(
	user_clk,
	reset_n,
	init_rst_i,

	m_axis_rc_tdata,
	m_axis_rc_tuser,
	m_axis_rc_tkeep,
	m_axis_rc_tlast,
	m_axis_rc_tready,
	m_axis_rc_tvalid,

	client_tag_released_0,
	client_tag_released_1,
	client_tag_released_2,
	client_tag_released_3,
	client_tag_released_4,
	client_tag_released_5,
	client_tag_released_6,
	client_tag_released_7,
	client_tag_released_num_0,
	client_tag_released_num_1,
	client_tag_released_num_2,
	client_tag_released_num_3,
	client_tag_released_num_4,
	client_tag_released_num_5,
	client_tag_released_num_6,
	client_tag_released_num_7,

	cfg_10b_tag_requester_enable,

	cpld_data_i,
	cpld_found_o,
	cpld_data_size_o,
	cpld_data_err_o,
	cpld_parity_err_o
);
	input user_clk;
	input reset_n;
	input init_rst_i;

	(* mark_debug *) input       [C_DATA_WIDTH - 1:0]          m_axis_rc_tdata;
	(* mark_debug *) input       [AXI4_RC_TUSER_WIDTH - 1:0]   m_axis_rc_tuser;
	(* mark_debug *) input       [KEEP_WIDTH - 1:0]            m_axis_rc_tkeep;
	(* mark_debug *) input                                     m_axis_rc_tlast;
	(* mark_debug *) output reg                                m_axis_rc_tready;
	(* mark_debug *) input                                     m_axis_rc_tvalid;

	(* keep *) (* mark_debug *) output reg client_tag_released_0;
	(* keep *) (* mark_debug *) output reg client_tag_released_1;
	(* keep *) (* mark_debug *) output reg client_tag_released_2;
	(* keep *) (* mark_debug *) output reg client_tag_released_3;
	(* keep *) (* mark_debug *) output reg client_tag_released_4;
	(* keep *) (* mark_debug *) output reg client_tag_released_5;
	(* keep *) (* mark_debug *) output reg client_tag_released_6;
	(* keep *) (* mark_debug *) output reg client_tag_released_7;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_0;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_1;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_2;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_3;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_4;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_5;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_6;
	(* keep *) (* mark_debug *) output reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_7;

	input cfg_10b_tag_requester_enable;

	(* mark_debug *) input [31:0] cpld_data_i;
	(* keep *) (* mark_debug *) output reg [31:0] cpld_found_o;
	(* keep *) (* mark_debug *) output reg [31:0] cpld_data_size_o;
	(* keep *) (* mark_debug *) output reg cpld_data_err_o;
	(* mark_debug *) output reg cpld_parity_err_o;
	(* mark_debug *) wire [7:0] dqw_is_header;
	(* mark_debug *) wire [23:0] dqw_is_end;
	(* mark_debug *) wire [7:0] dqw_error_wire;
	(* mark_debug *) wire [7:0] dqw_parity_error_wire;

	(* mark_debug *) (* keep *) reg client_tag_released_0_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_1_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_2_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_3_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_4_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_5_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_6_wire;
	(* mark_debug *) (* keep *) reg client_tag_released_7_wire;

	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_0_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_1_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_2_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_3_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_4_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_5_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_6_wire;
	(* mark_debug *) (* keep *) reg [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_7_wire;

	wire [1023:0] m_axis_rc_tdata_in;
	wire [336:0] m_axis_rc_tuser_in;
	assign m_axis_rc_tdata_in = m_axis_rc_tdata;
	assign m_axis_rc_tuser_in = m_axis_rc_tuser;
	(* mark_debug *) (* keep *) wire [7:0] cpld_found_dw;
	wire [10:0] cpld_data_size [7:0];
	reg [31:0] cpld_found_wire;
	reg [31:0] cpld_data_size_wire;
	(* mark_debug *) (* keep *) reg cpld_data_err_wire;
	reg cpld_parity_err_wire;
	wire [127:0] exp_parity;

	// Header or data
	assign dqw_is_header[0] = m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd0);
	assign dqw_is_header[1] = (m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd1)) |
	                          (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd1));

	assign dqw_is_header[2] = ((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd2)) |
	                           (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd2))) |
	                           (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd2));

	assign dqw_is_header[3] = (((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd3)) |
	                            (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd3))) |
	                            (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd3))) |
	                            (m_axis_rc_tuser_in[131] & (m_axis_rc_tuser_in[147-:3] == 3'd3));

	assign dqw_is_header[4] = ((((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd4)) |
	                             (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd4))) |
	                             (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd4))) |
	                             (m_axis_rc_tuser_in[131] & (m_axis_rc_tuser_in[147-:3] == 3'd4))) |
	                             (m_axis_rc_tuser_in[132] & (m_axis_rc_tuser_in[150-:3] == 3'd4));

	assign dqw_is_header[5] = (((((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd5)) |
	                              (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd5))) |
	                              (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd5))) |
	                              (m_axis_rc_tuser_in[131] & (m_axis_rc_tuser_in[147-:3] == 3'd5))) |
	                              (m_axis_rc_tuser_in[132] & (m_axis_rc_tuser_in[150-:3] == 3'd5))) |
	                              (m_axis_rc_tuser_in[133] & (m_axis_rc_tuser_in[153-:3] == 3'd5));

	assign dqw_is_header[6] = ((((((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd6)) |
	                               (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd6))) |
	                               (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd6))) |
	                               (m_axis_rc_tuser_in[131] & (m_axis_rc_tuser_in[147-:3] == 3'd6))) |
	                               (m_axis_rc_tuser_in[132] & (m_axis_rc_tuser_in[150-:3] == 3'd6))) |
	                               (m_axis_rc_tuser_in[133] & (m_axis_rc_tuser_in[153-:3] == 3'd6))) |
	                               (m_axis_rc_tuser_in[134] & (m_axis_rc_tuser_in[156-:3] == 3'd6));

	assign dqw_is_header[7] = (((((((m_axis_rc_tuser_in[128] & (m_axis_rc_tuser_in[138-:3] == 3'd7)) |
	                                (m_axis_rc_tuser_in[129] & (m_axis_rc_tuser_in[141-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[130] & (m_axis_rc_tuser_in[144-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[131] & (m_axis_rc_tuser_in[147-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[132] & (m_axis_rc_tuser_in[150-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[133] & (m_axis_rc_tuser_in[153-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[134] & (m_axis_rc_tuser_in[156-:3] == 3'd7))) |
	                                (m_axis_rc_tuser_in[135] & (m_axis_rc_tuser_in[159-:3] == 3'd7));


generate
	if (AXISTEN_IF_RC_STRADDLE == 2'b01) begin : straddle_2_eop
		assign dqw_is_end[2:0] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd0) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0);
		assign dqw_is_end[5:3] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                         (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[8:6] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                         (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[11:9] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                          (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[14:12] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[17:15] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[20:18] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[23:21] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);
	end
	else if (AXISTEN_IF_RC_STRADDLE == 2'b10) begin : straddle_4_eop
		assign dqw_is_end[2:0] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd0) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0);
		assign dqw_is_end[5:3] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                         (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[8:6] = ((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                         (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                         (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0);

		assign dqw_is_end[11:9] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                          (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                          (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
		                          (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);

		assign dqw_is_end[14:12] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);
		assign dqw_is_end[17:15] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);

		assign dqw_is_end[20:18] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);
		assign dqw_is_end[23:21] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
		                           (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
		                           (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);
	end
	else if (AXISTEN_IF_RC_STRADDLE == 2'b11) begin : straddle_8_eop
		assign dqw_is_end[2:0] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd0) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0);

		assign dqw_is_end[5:3] = (m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
								 (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd1) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0);

		assign dqw_is_end[8:6] = ((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
								  (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
								  (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd2) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0);

		assign dqw_is_end[11:9] = (((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
								    (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
								    (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
								    (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd3) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0);

		assign dqw_is_end[14:12] = ((((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
									  (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
									  (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
									  (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0)) |
									  (m_axis_rc_tuser_in[164] & (m_axis_rc_tuser_in[192:190] == 3'd4) ? {1'b1, m_axis_rc_tuser_in[189:188]} : 3'd0);

		assign dqw_is_end[17:15] = (((((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
									   (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
									   (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
									   (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0)) |
									   (m_axis_rc_tuser_in[164] & (m_axis_rc_tuser_in[192:190] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[189:188]} : 3'd0)) |
									   (m_axis_rc_tuser_in[165] & (m_axis_rc_tuser_in[197:195] == 3'd5) ? {1'b1, m_axis_rc_tuser_in[194:193]} : 3'd0);

		assign dqw_is_end[20:18] = ((((((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
										(m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
										(m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
										(m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0)) |
										(m_axis_rc_tuser_in[164] & (m_axis_rc_tuser_in[192:190] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[189:188]} : 3'd0)) |
										(m_axis_rc_tuser_in[165] & (m_axis_rc_tuser_in[197:195] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[194:193]} : 3'd0)) |
										(m_axis_rc_tuser_in[166] & (m_axis_rc_tuser_in[202:200] == 3'd6) ? {1'b1, m_axis_rc_tuser_in[199:198]} : 3'd0);

		assign dqw_is_end[23:21] = (((((((((m_axis_rc_tuser_in[160] & (m_axis_rc_tuser_in[172:170] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[169:168]} : 3'd0) |
										   (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
										   (m_axis_rc_tuser_in[161] & (m_axis_rc_tuser_in[177:175] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[174:173]} : 3'd0)) |
										   (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
										   (m_axis_rc_tuser_in[162] & (m_axis_rc_tuser_in[182:180] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[179:178]} : 3'd0)) |
										   (m_axis_rc_tuser_in[163] & (m_axis_rc_tuser_in[187:185] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[184:183]} : 3'd0)) |
										   (m_axis_rc_tuser_in[164] & (m_axis_rc_tuser_in[192:190] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[189:188]} : 3'd0)) |
										   (m_axis_rc_tuser_in[165] & (m_axis_rc_tuser_in[197:195] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[194:193]} : 3'd0)) |
										   (m_axis_rc_tuser_in[166] & (m_axis_rc_tuser_in[202:200] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[199:198]} : 3'd0)) |
										   (m_axis_rc_tuser_in[167] & (m_axis_rc_tuser_in[207:205] == 3'd7) ? {1'b1, m_axis_rc_tuser_in[204:203]} : 3'd0);
	end
	else begin : non_straddle_using_tlast_tkeep
		assign dqw_is_end[1:0]   = 2'b00;
		assign dqw_is_end[2]     = (m_axis_rc_tlast & ~m_axis_rc_tkeep[4]) & |m_axis_rc_tkeep[3:0];
		assign dqw_is_end[4:3]   = 2'b00;
		assign dqw_is_end[5]     = (m_axis_rc_tlast & ~m_axis_rc_tkeep[8]) & |m_axis_rc_tkeep[7:4];
		assign dqw_is_end[7:6]   = 2'b00;
		assign dqw_is_end[8]     = (m_axis_rc_tlast & ~m_axis_rc_tkeep[12]) & |m_axis_rc_tkeep[11:8];
		assign dqw_is_end[10:9]  = 2'b00;
		assign dqw_is_end[11]    = (m_axis_rc_tlast & ~m_axis_rc_tkeep[16]) & |m_axis_rc_tkeep[15:12];
		assign dqw_is_end[13:12] = 2'b00;
		assign dqw_is_end[14]    = (m_axis_rc_tlast & ~m_axis_rc_tkeep[20]) & |m_axis_rc_tkeep[19:16];
		assign dqw_is_end[16:15] = 2'b00;
		assign dqw_is_end[17]    = (m_axis_rc_tlast & ~m_axis_rc_tkeep[24]) & |m_axis_rc_tkeep[23:20];
		assign dqw_is_end[19:18] = 2'b00;
		assign dqw_is_end[20]    = (m_axis_rc_tlast & ~m_axis_rc_tkeep[28]) & |m_axis_rc_tkeep[27:24];
		assign dqw_is_end[22:21] = 2'b00;
		assign dqw_is_end[23]    = m_axis_rc_tlast & |m_axis_rc_tkeep[31:28];
	end
endgenerate

genvar var_i;
function automatic f_rc_dqw_error_check;
	input         is_header_in;
	input [2:0]   is_end_in;
	input [127:0] data_in;
	input [127:0] exp_data_in;
	input [15:0]  be_in;
	if (is_header_in)
		f_rc_dqw_error_check = (|((data_in[127:96] ^ exp_data_in[127:96]) & {{8 {be_in[15]}}, {8 {be_in[14]}}, {8 {be_in[13]}}, {8 {be_in[12]}}}) | (data_in[15:12] != 4'd0)) | (is_end_in[2] & |data_in[42:33]);
	else
		f_rc_dqw_error_check = |((data_in ^ exp_data_in) & {{8 {be_in[15]}}, {8 {be_in[14]}}, {8 {be_in[13]}}, {8 {be_in[12]}}, {8 {be_in[11]}}, {8 {be_in[10]}}, {8 {be_in[9]}}, {8 {be_in[8]}}, {8 {be_in[7]}}, {8 {be_in[6]}}, {8 {be_in[5]}}, {8 {be_in[4]}}, {8 {be_in[3]}}, {8 {be_in[2]}}, {8 {be_in[1]}}, {8 {be_in[0]}}}) | (is_end_in[2] & ~|be_in[15:0]);
endfunction

// Function to check 4DW(Double Quad-Word) of incoming data in Address aligned mode
//function automatic f_rc_dqw_error_check_addr_align;
//   input          is_header_in;
//   input          is_firstQW_in;
//   input [2:0]    is_end_in;
//   input [127:0]  data_in;
//   input [127:0]  exp_data_in;
//   input [15:0]   be_in;
//   input [1:0]    addr_offset_in;
//
//   if (is_header_in) begin // Header Check
//      f_rc_dqw_error_check_addr_align =  (data_in[15:12] != 4'd0) ;                                   // Check Error Code
//   end else if (is_firstQW_in) begin // Header Check
//      case(addr_offset_in[1:0])
//        2'b00: begin
//                f_rc_dqw_error_check_addr_align = (|((data_in[127:0] ^ exp_data_in[127:0]) &
//                                        {{8{be_in[15]}}, {8{be_in[14]}}, {8{be_in[13]}}, {8{be_in[12]}},      // Check DW[3] if BE is set
//                                         {8{be_in[11]}}, {8{be_in[10]}}, {8{be_in[9] }}, {8{be_in[8] }},      // Check DW[2] if BE is set
//                                         {8{be_in[7] }}, {8{be_in[6] }}, {8{be_in[5] }}, {8{be_in[4] }},      // Check DW[1] if BE is set
//                                         {8{be_in[3] }}, {8{be_in[2] }}, {8{be_in[1] }}, {8{be_in[0] }}})) |  // Check DW[0] if BE is set
//                                     (is_end_in[2] & (~|be_in[15:0]));                                        // Check no EOP if no BE
//        end
//        2'b01: begin
//                f_rc_dqw_error_check_addr_align = (|((data_in[127:32] ^ exp_data_in[127:32]) &
//                                        {{8{be_in[15]}}, {8{be_in[14]}}, {8{be_in[13]}}, {8{be_in[12]}},      // Check DW[3] if BE is set
//                                         {8{be_in[11]}}, {8{be_in[10]}}, {8{be_in[9] }}, {8{be_in[8] }},      // Check DW[2] if BE is set
//                                         {8{be_in[7] }}, {8{be_in[6] }}, {8{be_in[5] }}, {8{be_in[4] }}})) |  // Check DW[0] if BE is set
//                                     (is_end_in[2] & (~|be_in[15:0]));                                        // Check no EOP if no BE
//        end
//        2'b10: begin
//                f_rc_dqw_error_check_addr_align = (|((data_in[127:64] ^ exp_data_in[127:64]) &
//                                        {{8{be_in[15]}}, {8{be_in[14]}}, {8{be_in[13]}}, {8{be_in[12]}},      // Check DW[3] if BE is set
//                                         {8{be_in[11] }},{8{be_in[10]}}, {8{be_in[9] }}, {8{be_in[8] }}})) |  // Check DW[0] if BE is set
//                                     (is_end_in[2] & (~|be_in[15:0]));                                        // Check no EOP if no BE
//        end
//        2'b11: begin
//                f_rc_dqw_error_check_addr_align = (|((data_in[127:96] ^ exp_data_in[127:96]) &
//                                        {{8{be_in[15]}}, {8{be_in[14]}}, {8{be_in[13]}}, {8{be_in[12] }}})) | // Check DW[3] if BE is set
//                                     (is_end_in[2] & (~|be_in[15:0]));                                        // Check no EOP if no BE
//        end
//      endcase
//   end else begin // Data Check
//      f_rc_dqw_error_check_addr_align = (|((data_in ^ exp_data_in) &
//                                {{8{be_in[15]}}, {8{be_in[14]}}, {8{be_in[13]}}, {8{be_in[12]}},      // Check DW[3] if BE is set
//                                 {8{be_in[11]}}, {8{be_in[10]}}, {8{be_in[9] }}, {8{be_in[8] }},      // Check DW[2] if BE is set
//                                 {8{be_in[7] }}, {8{be_in[6] }}, {8{be_in[5] }}, {8{be_in[4] }},      // Check DW[1] if BE is set
//                                 {8{be_in[3] }}, {8{be_in[2] }}, {8{be_in[1] }}, {8{be_in[0] }}})) |  // Check DW[0] if BE is set
//                             (is_end_in[2] & (~|be_in[15:0]));                                        // Check no EOP if no BE
//   end
//endfunction

   //------------
   // Functions
   //------------

//Function to check parity of incoming data
function automatic f_rc_dqw_parity_check;
	input is_header_in;
	input [15:0] parity_in;
	input [15:0] exp_parity_in;
	input [15:0] be_in;
	if (is_header_in)
		f_rc_dqw_parity_check = |(parity_in[11:0] ^ exp_parity_in[11:0]) | |((parity_in[15:12] ^ exp_parity_in[15:12]) & be_in[15:12]);
	else
		f_rc_dqw_parity_check = |((parity_in ^ exp_parity_in) & be_in);
endfunction

generate
	for (var_i = 0; var_i < 128; var_i = var_i + 1) begin : rc_parity_generation
	    // Generate expected parity for data
		assign exp_parity[var_i] = ~(^m_axis_rc_tdata[(8 * (var_i + 1)) - 1:8 * var_i]);
	end

	for (var_i = 0; var_i < 8; var_i = var_i + 1) begin : dqw_generation
	    // Check errors
		if (AXISTEN_IF_REQ_ALIGNMENT_MODE != "TRUE")  begin : genblk1  // DW-aligned
			assign dqw_error_wire[var_i] = f_rc_dqw_error_check(dqw_is_header[var_i], dqw_is_end[var_i * 3+:3], m_axis_rc_tdata[var_i * 128+:128], {4 {cpld_data_i}}, m_axis_rc_tuser_in[0 + (var_i * 16)+:16]);
		end
		else begin : genblk2  // Address aligned - not supported
			assign dqw_error_wire[var_i] = 1'b0;
		end

		// Check parity
		assign dqw_parity_error_wire[var_i] = f_rc_dqw_parity_check(dqw_is_header[var_i], m_axis_rc_tuser_in[209 + (var_i * 16)+:16], exp_parity[var_i * 16+:16], m_axis_rc_tuser_in[0 + (var_i * 16)+:16]);

		// Request Completed
		assign cpld_found_dw[var_i] = (dqw_is_header[var_i] ? m_axis_rc_tdata[(var_i * 128) + 30] : 1'b0);

		// Dword Count
		assign cpld_data_size[var_i] = (dqw_is_header[var_i] ? m_axis_rc_tdata[(var_i * 128) + 42:(var_i * 128) + 32] : 11'd0);
	end

endgenerate

    // Log results
    always @(*)
	if (m_axis_rc_tvalid) begin
		cpld_found_wire = (((((((cpld_found_o +
                                {31'd0, cpld_found_dw[0]}) +
                                {31'd0, cpld_found_dw[1]}) +
                                {31'd0, cpld_found_dw[2]}) +
                                {31'd0, cpld_found_dw[3]}) +
                                {31'd0, cpld_found_dw[4]}) +
                                {31'd0, cpld_found_dw[5]}) +
                                {31'd0, cpld_found_dw[6]}) +
                                {31'd0, cpld_found_dw[7]};

		cpld_data_size_wire = (((((((cpld_data_size_o +
                                {21'd0, cpld_data_size[0]}) +
                                {21'd0, cpld_data_size[1]}) +
                                {21'd0, cpld_data_size[2]}) +
                                {21'd0, cpld_data_size[3]}) +
                                {21'd0, cpld_data_size[4]}) +
                                {21'd0, cpld_data_size[5]}) +
                                {21'd0, cpld_data_size[6]}) +
                                {21'd0, cpld_data_size[7]};

		cpld_data_err_wire = |dqw_error_wire | cpld_data_err_o;
		cpld_parity_err_wire = (AXISTEN_IF_REQ_PARITY_CHECK ? |dqw_parity_error_wire : 1'b0);

		client_tag_released_0_wire = cpld_found_dw[0] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_1_wire = cpld_found_dw[1] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_2_wire = cpld_found_dw[2] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_3_wire = cpld_found_dw[3] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_4_wire = cpld_found_dw[4] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_5_wire = cpld_found_dw[5] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_6_wire = cpld_found_dw[6] & AXISTEN_IF_ENABLE_CLIENT_TAG;
		client_tag_released_7_wire = cpld_found_dw[7] & AXISTEN_IF_ENABLE_CLIENT_TAG;

		client_tag_released_num_0_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[47], m_axis_rc_tdata[31]} : 2'b00), m_axis_rc_tdata[71:64]};
		client_tag_released_num_1_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[175], m_axis_rc_tdata[159]} : 2'b00), m_axis_rc_tdata[199:192]};
		client_tag_released_num_2_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[303], m_axis_rc_tdata[287]} : 2'b00), m_axis_rc_tdata[327:320]};
		client_tag_released_num_3_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[431], m_axis_rc_tdata[415]} : 2'b00), m_axis_rc_tdata[455:448]};
		client_tag_released_num_4_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[559], m_axis_rc_tdata[543]} : 2'b00), m_axis_rc_tdata[583:576]};
		client_tag_released_num_5_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[687], m_axis_rc_tdata[671]} : 2'b00), m_axis_rc_tdata[711:704]};
		client_tag_released_num_6_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[815], m_axis_rc_tdata[799]} : 2'b00), m_axis_rc_tdata[839:832]};
		client_tag_released_num_7_wire = {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata[943], m_axis_rc_tdata[927]} : 2'b00), m_axis_rc_tdata[967:960]};
	end
	else begin
		cpld_found_wire = cpld_found_o;
		cpld_data_size_wire = cpld_data_size_o;
		cpld_data_err_wire = cpld_data_err_o;
		cpld_parity_err_wire = 1'b0;
		client_tag_released_0_wire = 1'b0;
		client_tag_released_1_wire = 1'b0;
		client_tag_released_2_wire = 1'b0;
		client_tag_released_3_wire = 1'b0;
		client_tag_released_4_wire = 1'b0;
		client_tag_released_5_wire = 1'b0;
		client_tag_released_6_wire = 1'b0;
		client_tag_released_7_wire = 1'b0;

		client_tag_released_num_0_wire = 'b0;
		client_tag_released_num_1_wire = 'b0;
		client_tag_released_num_2_wire = 'b0;
		client_tag_released_num_3_wire = 'b0;
		client_tag_released_num_4_wire = 'b0;
		client_tag_released_num_5_wire = 'b0;
		client_tag_released_num_6_wire = 'b0;
		client_tag_released_num_7_wire = 'b0;
	end
    (* keep *) (* mark_debug *) reg [7:0] cpld_found_dw_d1;
    (* keep *) (* mark_debug *) reg [9:0] rc_tdata_10btag;
    (* keep *) (* mark_debug *) reg m_axis_rc_tvalid_d1;
    (* keep *) (* mark_debug *) reg [1023:0] m_axis_rc_tdata_d1;
    (* keep *) (* mark_debug *) reg debug_client_tag_released_0;
    (* keep *) (* mark_debug *) reg [9:0] debug_client_tag_released_num_0;
    always @(posedge user_clk) begin
	cpld_found_dw_d1 <= cpld_found_dw;
	rc_tdata_10btag <= {m_axis_rc_tdata[47], m_axis_rc_tdata[31], m_axis_rc_tdata[71:64]};
	m_axis_rc_tvalid_d1 <= m_axis_rc_tvalid;
	m_axis_rc_tdata_d1 <= m_axis_rc_tdata;
	if (m_axis_rc_tvalid_d1) begin
		debug_client_tag_released_0 <= cpld_found_dw_d1[0];
		debug_client_tag_released_num_0 <= (cfg_10b_tag_requester_enable ? rc_tdata_10btag : {2'b00, rc_tdata_10btag[7:0]});
	end
	else
		debug_client_tag_released_0 <= 0;
end

always @(posedge user_clk)
	if (m_axis_rc_tvalid_d1) begin
		client_tag_released_0 <= cpld_found_dw_d1[0];
		client_tag_released_1 <= cpld_found_dw_d1[1];
		client_tag_released_2 <= cpld_found_dw_d1[2];
		client_tag_released_3 <= cpld_found_dw_d1[3];
		client_tag_released_4 <= cpld_found_dw_d1[4];
		client_tag_released_5 <= cpld_found_dw_d1[5];
		client_tag_released_6 <= cpld_found_dw_d1[6];
		client_tag_released_7 <= cpld_found_dw_d1[7];
		client_tag_released_num_0 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[47], m_axis_rc_tdata_d1[31]} : 2'b00), m_axis_rc_tdata_d1[71:64]};
		client_tag_released_num_1 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[175], m_axis_rc_tdata_d1[159]} : 2'b00), m_axis_rc_tdata_d1[199:192]};
		client_tag_released_num_2 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[303], m_axis_rc_tdata_d1[287]} : 2'b00), m_axis_rc_tdata_d1[327:320]};
		client_tag_released_num_3 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[431], m_axis_rc_tdata_d1[415]} : 2'b00), m_axis_rc_tdata_d1[455:448]};
		client_tag_released_num_4 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[559], m_axis_rc_tdata_d1[543]} : 2'b00), m_axis_rc_tdata_d1[583:576]};
		client_tag_released_num_5 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[687], m_axis_rc_tdata_d1[671]} : 2'b00), m_axis_rc_tdata_d1[711:704]};
		client_tag_released_num_6 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[815], m_axis_rc_tdata_d1[799]} : 2'b00), m_axis_rc_tdata_d1[839:832]};
		client_tag_released_num_7 <= {(cfg_10b_tag_requester_enable ? {m_axis_rc_tdata_d1[943], m_axis_rc_tdata_d1[927]} : 2'b00), m_axis_rc_tdata_d1[967:960]};
	end
	else begin
		client_tag_released_0 <= 'd0;
		client_tag_released_1 <= 'd0;
		client_tag_released_2 <= 'd0;
		client_tag_released_3 <= 'd0;
		client_tag_released_4 <= 'd0;
		client_tag_released_5 <= 'd0;
		client_tag_released_6 <= 'd0;
		client_tag_released_7 <= 'd0;
	end

always @(posedge user_clk)
	if (~reset_n)
		m_axis_rc_tready <= #(TCQ) 1'b0;
	else
		m_axis_rc_tready <= #(TCQ) 1'b1;

always @(posedge user_clk)
	if (~(reset_n & ~init_rst_i))
		cpld_found_o <= #(TCQ) 32'd0;
	else
		cpld_found_o <= #(TCQ) cpld_found_wire;

always @(posedge user_clk)
	if (~(reset_n & ~init_rst_i))
		cpld_data_size_o <= #(TCQ) 32'd0;
	else
		cpld_data_size_o <= #(TCQ) cpld_data_size_wire;

always @(posedge user_clk)
	if (~(reset_n & ~init_rst_i))
		cpld_data_err_o <= #(TCQ) 1'b0;
	else
		cpld_data_err_o <= #(TCQ) cpld_data_err_wire;

always @(posedge user_clk)
	if (~(reset_n & ~init_rst_i))
		cpld_parity_err_o <= #(TCQ) 1'b0;
	else
		cpld_parity_err_o <= #(TCQ) cpld_parity_err_wire;
endmodule
