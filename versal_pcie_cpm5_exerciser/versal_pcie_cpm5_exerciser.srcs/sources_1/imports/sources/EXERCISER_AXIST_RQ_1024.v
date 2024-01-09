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
// File       : XERCISER_AXIST_RQ_1024.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_RQ_1024 #(
  parameter AXISTEN_IF_REQ_ALIGNMENT_MODE = 0,
  parameter AXISTEN_IF_RQ_STRADDLE        = 2'b10,  //00: max 1 packet, 01: max 2, 10: max 4, 11: rsvd
  parameter AXISTEN_IF_REQ_PARITY_CHECK   = 0,
  parameter AXISTEN_IF_ENABLE_CLIENT_TAG  = 0,
  parameter RQ_AVAIL_TAG_IDX              = 8,
  parameter RQ_AVAIL_TAG                  = 256,
  parameter RQ_AVAIL_SEQ_NUM_IDX          = 6,
  parameter RQ_AVAIL_SEQ_NUM              = 64,
  parameter AXI4_CQ_TUSER_WIDTH           = 183,
  parameter AXI4_CC_TUSER_WIDTH           = 81,
  parameter AXI4_RQ_TUSER_WIDTH           = 137,
  parameter AXI4_RC_TUSER_WIDTH           = 161,
  parameter TCQ                           = 1,
  parameter C_DATA_WIDTH                  = 1024,
  parameter KEEP_WIDTH                    = C_DATA_WIDTH / 32
)(
  input				 user_clk,
  input				 reset_n,
  input				 init_rst_i,

  (* mark_debug *) output wire	                            s_axis_rq_tlast,
  (* mark_debug *) output wire [C_DATA_WIDTH - 1:0]         s_axis_rq_tdata,
  (* mark_debug *) output wire [AXI4_RQ_TUSER_WIDTH - 1:0]  s_axis_rq_tuser,
  (* mark_debug *) output wire [KEEP_WIDTH - 1:0]           s_axis_rq_tkeep,
  (* mark_debug *) input	                                s_axis_rq_tready,
  (* mark_debug *) output wire	                            s_axis_rq_tvalid,

  input				             client_tag_released_0,
  input				             client_tag_released_1,
  input				             client_tag_released_2,
  input				             client_tag_released_3,
  input				             client_tag_released_4,
  input				             client_tag_released_5,
  input				             client_tag_released_6,

  input				             client_tag_released_7,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_0,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_1,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_2,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_3,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_4,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_5,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_6,
  input [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_7,

  output wire			 tags_all_back,
  input				     cfg_10b_tag_requester_enable,

  input [5:0]			 pcie_rq_seq_num0,
  input				     pcie_rq_seq_num_vld0,
  input [5:0]			 pcie_rq_seq_num1,
  input				     pcie_rq_seq_num_vld1,

  input				     mwr_start_i,
  input [10:0]			 mwr_len_i,
  input [31:0]			 mwr_addr_i,
  input [31:0]			 mwr_data_i,
  input [15:0]			 mwr_count_i,
  input [7:0]			 mwr_wrr_cnt_i,
  output wire			 mwr_done_o,

  input				     mrd_start_i,
  input [10:0]			 mrd_len_i,
  input [31:0]			 mrd_addr_i,
  input [15:0]			 mrd_count_i,
  input [7:0]			 mrd_wrr_cnt_i,
  output wire			 mrd_done_o,

  input [3:0]			 wait_trn_time_i,

  input [31:0]           aer_err_cor
);

   localparam			      SEQ_NUM_IGNORE = 0;
   wire				                  seq_num_assigned_0;
   wire				                  seq_num_assigned_1;
   wire [RQ_AVAIL_SEQ_NUM_IDX - 1:0]  seq_num_assigned_num_0;
   wire [RQ_AVAIL_SEQ_NUM_IDX - 1:0]  seq_num_assigned_num_1;
   reg  [RQ_AVAIL_SEQ_NUM_IDX - 1:0]  seq_num_assigned_num_0_q;
   reg  [RQ_AVAIL_SEQ_NUM_IDX - 1:0]  seq_num_assigned_num_1_q;
   reg  [RQ_AVAIL_SEQ_NUM - 1:0]	  avail_seq_num;
   wire [RQ_AVAIL_SEQ_NUM - 1:0]      seq_num_assigned_vec_0;
   wire [RQ_AVAIL_SEQ_NUM - 1:0]      seq_num_assigned_vec_1;
   wire [RQ_AVAIL_SEQ_NUM - 1:0]      seq_num_released_vec_0;
   wire [RQ_AVAIL_SEQ_NUM - 1:0]      seq_num_released_vec_1;
   reg  [RQ_AVAIL_SEQ_NUM_IDX - 1:0]  curr_seq_num;

   wire				     mrd_done_int;
   wire				     mwr_done_int;
   wire [5:0]			 s_axis_rq_tuser_seq_num;
   wire				     seq_num_all_back;

   genvar			     var_i;
   generate
      for (var_i = 0; var_i < RQ_AVAIL_SEQ_NUM; var_i = var_i + 1) begin : gen_seq_vec
	 assign seq_num_assigned_vec_0[var_i] = seq_num_assigned_num_0 == var_i;
	 assign seq_num_assigned_vec_1[var_i] = seq_num_assigned_num_1 == var_i;
	 assign seq_num_released_vec_0[var_i] = pcie_rq_seq_num0 == var_i;
	 assign seq_num_released_vec_1[var_i] = pcie_rq_seq_num1 == var_i;
      end
   endgenerate

   always @(posedge user_clk)
     if (!reset_n) begin
	seq_num_assigned_num_0_q <= 'b0;
	seq_num_assigned_num_1_q <= 'b0;
	curr_seq_num <= 'd1;
     end
     else begin
	seq_num_assigned_num_0_q <= seq_num_assigned_num_0;
	seq_num_assigned_num_1_q <= seq_num_assigned_num_1;
	curr_seq_num <= ({seq_num_assigned_1, seq_num_assigned_0} == 2'b11 ? (&curr_seq_num[5:1] ? 'd1 + curr_seq_num[0] : curr_seq_num + 2'd2) :
			({seq_num_assigned_1, seq_num_assigned_0} == 2'b10 ? (&curr_seq_num[5:0] ? 'd1 : curr_seq_num + 2'd1) :
			({seq_num_assigned_1, seq_num_assigned_0} == 2'b01 ? (&curr_seq_num[5:0] ? 'd1 : curr_seq_num + 2'd1) : curr_seq_num)));
     end

   assign seq_num_assigned_num_0 = curr_seq_num;
   assign seq_num_assigned_num_1 = ({seq_num_assigned_1, seq_num_assigned_0} == 2'b11 ? curr_seq_num + 1'b1 : curr_seq_num);
   always @(posedge user_clk)
     if (!reset_n)
       avail_seq_num <= {RQ_AVAIL_SEQ_NUM {1'b1}};
     else if (init_rst_i)
       avail_seq_num <= {RQ_AVAIL_SEQ_NUM {1'b1}};
     else
       avail_seq_num <= (((avail_seq_num & ~({RQ_AVAIL_SEQ_NUM {seq_num_assigned_0}} & seq_num_assigned_vec_0)) & ~({RQ_AVAIL_SEQ_NUM {seq_num_assigned_1}} & seq_num_assigned_vec_1)) |
			  ({RQ_AVAIL_SEQ_NUM {pcie_rq_seq_num_vld0}} & seq_num_released_vec_0)) |
			  ({RQ_AVAIL_SEQ_NUM {pcie_rq_seq_num_vld1}} & seq_num_released_vec_1);

   assign seq_num_all_back = &avail_seq_num[RQ_AVAIL_SEQ_NUM - 1:1];
   assign mwr_done_o = (seq_num_all_back | SEQ_NUM_IGNORE) & mwr_done_int;
   assign mrd_done_o = mrd_done_int;

EXERCISER_AXIST_RQ_RW_1024 #(
	.AXISTEN_IF_REQ_ALIGNMENT_MODE	(AXISTEN_IF_REQ_ALIGNMENT_MODE),
	.AXISTEN_IF_RQ_STRADDLE		    (AXISTEN_IF_RQ_STRADDLE),
	.AXISTEN_IF_REQ_PARITY_CHECK	(AXISTEN_IF_REQ_PARITY_CHECK),
	.AXI4_RQ_TUSER_WIDTH		    (AXI4_RQ_TUSER_WIDTH),
	.SEQ_NUM_IGNORE			        (SEQ_NUM_IGNORE),
	.TCQ				            (TCQ),
	.C_DATA_WIDTH			        (C_DATA_WIDTH),
	.KEEP_WIDTH			            (KEEP_WIDTH),
	.AXISTEN_IF_ENABLE_CLIENT_TAG	(AXISTEN_IF_ENABLE_CLIENT_TAG),
	.RQ_AVAIL_TAG_IDX		        (RQ_AVAIL_TAG_IDX),
	.RQ_AVAIL_TAG			        (RQ_AVAIL_TAG)
) EP_RQ_RW_1024(
	.user_clk			                (user_clk),
	.reset_n			                (reset_n),
	.init_rst_i			                (init_rst_i),

	.s_axis_rq_tdata		            (s_axis_rq_tdata),
	.s_axis_rq_tkeep		            (s_axis_rq_tkeep),
	.s_axis_rq_tlast		            (s_axis_rq_tlast),
	.s_axis_rq_tvalid		            (s_axis_rq_tvalid),
	.s_axis_rq_tuser		            (s_axis_rq_tuser),
	.s_axis_rq_tready		            (s_axis_rq_tready),

	.curr_seq_num			            (curr_seq_num),
	.seq_num_assigned_0		            (seq_num_assigned_0),
	.seq_num_assigned_1		            (seq_num_assigned_1),

	.client_tag_released_0		        (client_tag_released_0),
	.client_tag_released_1		        (client_tag_released_1),
	.client_tag_released_2		        (client_tag_released_2),
	.client_tag_released_3		        (client_tag_released_3),
	.client_tag_released_4		        (client_tag_released_4),
	.client_tag_released_5		        (client_tag_released_5),
	.client_tag_released_6		        (client_tag_released_6),
	.client_tag_released_7		        (client_tag_released_7),
	.client_tag_released_num_0	        (client_tag_released_num_0),
	.client_tag_released_num_1	        (client_tag_released_num_1),
	.client_tag_released_num_2	        (client_tag_released_num_2),
	.client_tag_released_num_3	        (client_tag_released_num_3),
	.client_tag_released_num_4	        (client_tag_released_num_4),
	.client_tag_released_num_5	        (client_tag_released_num_5),
	.client_tag_released_num_6	        (client_tag_released_num_6),
	.client_tag_released_num_7	        (client_tag_released_num_7),

	.tags_all_back			            (tags_all_back),
	.cfg_10b_tag_requester_enable	    (cfg_10b_tag_requester_enable),

	.mwr_start_i			            (mwr_start_i),
	.mwr_len_i			                (mwr_len_i),
	.mwr_addr_i			                (mwr_addr_i),
	.mwr_data_i			                (mwr_data_i),
	.mwr_count_i			            (mwr_count_i),
	.mwr_wrr_cnt_i			            (mwr_wrr_cnt_i),
	.mwr_done_o			                (mwr_done_int),
	.mrd_start_i			            (mrd_start_i),
	.mrd_len_i			                (mrd_len_i),
	.mrd_addr_i			                (mrd_addr_i),
	.mrd_count_i			            (mrd_count_i),
	.mrd_wrr_cnt_i			            (mrd_wrr_cnt_i),
	.mrd_done_o			                (mrd_done_int),

	.aer_err_cor                        (aer_err_cor)
);
endmodule
