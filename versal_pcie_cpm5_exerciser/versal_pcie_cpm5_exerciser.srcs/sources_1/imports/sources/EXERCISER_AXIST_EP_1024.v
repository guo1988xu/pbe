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
// File       : XERCISER_AXIST_EP_1024.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_EP_1024 #(
  parameter        TCQ                            = 1,
  parameter        C_DATA_WIDTH                   = 1024,
  parameter        AXISTEN_IF_REQ_ALIGNMENT_MODE  = 2'b00,
  parameter        AXISTEN_IF_CMP_ALIGNMENT_MODE  = 2'b00,
  parameter        AXISTEN_IF_ENABLE_CLIENT_TAG   = 0,
  parameter        RQ_AVAIL_TAG_IDX               = 8,
  parameter        RQ_AVAIL_TAG                   = 256,
  parameter        AXISTEN_IF_REQ_PARITY_CHECK    = 0,
  parameter        AXISTEN_IF_CMP_PARITY_CHECK    = 0,
  parameter        AXISTEN_IF_RQ_STRADDLE         = 0,
  parameter        AXISTEN_IF_RC_STRADDLE         = 0,
  parameter        AXISTEN_IF_CQ_STRADDLE         = 0,
  parameter        AXISTEN_IF_CC_STRADDLE         = 0,
  parameter        AXISTEN_IF_ENABLE_RX_MSG_INTFC = 0,
  parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE    = 18'h2ffff,
  parameter        AXI4_CQ_TUSER_WIDTH            = 465,
  parameter        AXI4_CC_TUSER_WIDTH            = 165,
  parameter        AXI4_RQ_TUSER_WIDTH            = 373,
  parameter        AXI4_RC_TUSER_WIDTH            = 337,
  parameter        KEEP_WIDTH                     = C_DATA_WIDTH / 32
)(
  input user_clk,
  input reset_n,

//--------------------------------------------------------------------//
//  AXI Interface                                                     //
//--------------------------------------------------------------------//
  output wire                                s_axis_rq_tlast,
  output wire [C_DATA_WIDTH - 1:0]           s_axis_rq_tdata,
  output wire [AXI4_RQ_TUSER_WIDTH - 1:0]    s_axis_rq_tuser,
  output wire [KEEP_WIDTH - 1:0]             s_axis_rq_tkeep,
  input                                      s_axis_rq_tready,
  output wire                                s_axis_rq_tvalid,
  input       [C_DATA_WIDTH - 1:0]           m_axis_rc_tdata,
  input       [AXI4_RC_TUSER_WIDTH - 1:0]    m_axis_rc_tuser,
  input       [KEEP_WIDTH - 1:0]             m_axis_rc_tkeep,
  input                                      m_axis_rc_tlast,
  output wire                                m_axis_rc_tready,
  input                                      m_axis_rc_tvalid,
  input       [C_DATA_WIDTH - 1:0]           m_axis_cq_tdata,
  input       [AXI4_CQ_TUSER_WIDTH - 1:0]    m_axis_cq_tuser,
  input       [KEEP_WIDTH - 1:0]             m_axis_cq_tkeep,
  input                                      m_axis_cq_tlast,
  output wire                                m_axis_cq_tready,
  input                                      m_axis_cq_tvalid,
  output wire                                s_axis_cc_tlast,
  output wire [C_DATA_WIDTH - 1:0]           s_axis_cc_tdata,
  output wire [AXI4_CC_TUSER_WIDTH - 1:0]    s_axis_cc_tuser,
  output wire [KEEP_WIDTH - 1:0]             s_axis_cc_tkeep,
  input                                      s_axis_cc_tready,
  output wire                                s_axis_cc_tvalid,

  // TX Message Interface
  input               cfg_msg_transmit_done,
  output wire         cfg_msg_transmit,
  output wire [2:0]   cfg_msg_transmit_type,
  output wire [31:0]  cfg_msg_transmit_data,

  //Tag availability and Flow control Information
  input       [5:0]    pcie_rq_tag,
  input                pcie_rq_tag_vld,
  input       [1:0]    pcie_tfc_nph_av,
  input       [1:0]    pcie_tfc_npd_av,
  input                pcie_tfc_np_pl_empty,
  input       [5:0]    pcie_rq_seq_num0,
  input                pcie_rq_seq_num_vld0,
  input       [5:0]    pcie_rq_seq_num1,
  input                pcie_rq_seq_num_vld1,

  //Cfg Flow Control Information
  input       [7:0]     cfg_fc_ph,
  input       [7:0]     cfg_fc_nph,
  input       [7:0]     cfg_fc_cplh,
  input       [11:0]    cfg_fc_pd,
  input       [11:0]    cfg_fc_npd,
  input       [11:0]    cfg_fc_cpld,
  output wire [2:0]     cfg_fc_sel,
  input                 cfg_err_fatal_out,

  //EXERCISER_AXIST RX Engine
  // Completer Request Interface
  input       [5:0]     pcie_cq_np_req_count,
  output wire           pcie_cq_np_req,

  // Requester Completion Interface
  //RX Message Interface
  input                 cfg_msg_received,
  input        [4:0]    cfg_msg_received_type,
  input        [7:0]    cfg_msg_data,

  // EXERCISER_AXIST Interrupt Interface
  output wire interrupt_done,

  // Legacy Interrupt Interface
  input                  cfg_interrupt_sent,
  output wire  [3:0]     cfg_interrupt_int,
  output wire  [3:0]     cfg_interrupt_pending,

  // MSI Interrupt Interface
  input        [3:0]     cfg_interrupt_msi_enable,
  input                  cfg_interrupt_msi_sent,
  input                  cfg_interrupt_msi_fail,
  output wire [31:0]     cfg_interrupt_msi_int,
  output wire [7:0]      cfg_interrupt_msi_function_number,
  output wire [1:0]      cfg_interrupt_msi_select,

   //MSI-X Interrupt Interface
  input       [3:0]      cfg_interrupt_msix_enable,
  input       [3:0]      cfg_interrupt_msix_mask,
  input       [251:0]    cfg_interrupt_msix_vf_mask,
  input       [251:0]    cfg_interrupt_msix_vf_enable,
  input                  cfg_interrupt_msix_vec_pending_status,
  output wire            cfg_interrupt_msix_int,
  output wire [1:0]      cfg_interrupt_msix_vec_pending,
  output wire            req_completion,
  input       [2:0]      cfg_current_speed,
  input       [5:0]      cfg_negotiated_width,
  input       [1:0]      cfg_max_payload,
  input       [2:0]      cfg_max_read_req,
  input       [7:0]      cfg_function_status,
  input                  cfg_10b_tag_requester_enable,

  output wire            cfg_err_cor
);

  wire        [10:0]     rd_addr;
  wire        [3:0]      rd_be;
  wire        [31:0]     rd_data;
  wire        [10:0]     wr_addr;
  wire        [7:0]      wr_be;
  wire        [63:0]     wr_data;
  wire                   wr_en;
  wire                   wr_busy;

  wire                   req_compl;
  wire                   req_compl_wd;
  wire                   req_compl_ur;
  wire                   compl_done;
  wire        [2:0]      req_tc;
  wire                   req_td;
  wire                   req_ep;
  wire        [2:0]      req_attr;
  wire        [10:0]     req_len;
  wire        [15:0]     req_rid;
  wire        [7:0]      req_tag;
  wire        [7:0]      req_be;
  wire        [12:0]     req_addr;
  wire        [1:0]      req_at;
  wire                   trn_sent;
  wire        [63:0]     req_des_qword0;
  wire        [63:0]     req_des_qword1;
  wire                   req_des_tph_present;
  wire        [1:0]      req_des_tph_type;
  wire        [7:0]      req_des_tph_st_tag;
  wire                   req_mem_lock;
  wire                   req_mem;
  wire                   payload_len;
  wire        [15:0]     completer_id;

  wire                   init_rst;
  wire                   mwr_start;
  wire                   mwr_int_dis_o;
  wire                   mwr_done;
  wire        [15:0]     mwr_len;
  wire        [7:0]      mwr_tag;
  wire        [3:0]      mwr_lbe;
  wire        [3:0]      mwr_fbe;
  wire        [31:0]     mwr_addr;
  wire        [15:0]     mwr_count;
  wire        [31:0]     mwr_data;
  wire        [2:0]      mwr_tlp_tc_o;
  wire                   mwr_64b_en_o;
  wire                   mwr_phant_func_en1;
  wire        [7:0]      mwr_up_addr_o;
  wire                   mwr_relaxed_order;
  wire                   mwr_nosnoop;
  wire        [7:0]      mwr_wrr_cnt;

  wire                   mrd_start;
  wire                   mrd_int_dis_o;
  (* mark_debug *) wire  mrd_done_tx_engine_o;
  (* mark_debug *) wire  mrd_done_mem_access_o;
  wire                   mrd_done;
  wire        [15:0]     mrd_len;
  wire        [7:0]      mrd_tag;
  wire        [3:0]      mrd_lbe;
  wire        [3:0]      mrd_fbe;
  wire        [31:0]     mrd_addr;
  wire        [15:0]     mrd_count;
  wire        [2:0]      mrd_tlp_tc_o;
  wire                   mrd_64b_en_o;
  wire                   mrd_phant_func_en1;
  wire        [7:0]      mrd_up_addr_o;
  wire                   mrd_relaxed_order;
  wire                   mrd_nosnoop;
  wire        [7:0]      mrd_wrr_cnt;
  wire                   mwr_zerolen_en_o;

  wire        [7:0]      cpl_ur_found;
  wire        [7:0]      cpl_ur_tag;
  wire        [31:0]     cpld_data;
  wire        [31:0]     cpld_data_size;
  wire        [31:0]     cpld_found;
  wire        [31:0]     cpld_size;
  wire                   cpld_malformed;
  wire                   cpld_data_err;
  wire                   cpld_parity_err;
  wire                   req_parity_err;

  wire                   mrd_start_o;
  wire                   cpl_streaming;
  wire                   rd_metering;
  wire        [3:0]      trn_wait_count;
  wire                   gen_leg_intr_wr;
  wire                   gen_leg_intr_rd;

  wire                   client_tag_released_0;
  wire                   client_tag_released_1;
  wire                   client_tag_released_2;
  wire                   client_tag_released_3;
  wire                   client_tag_released_4;
  wire                   client_tag_released_5;
  wire                   client_tag_released_6;
  wire                   client_tag_released_7;

  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_0;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_1;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_2;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_3;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_4;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_5;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_6;
  wire [RQ_AVAIL_TAG_IDX - 1:0] client_tag_released_num_7;

  wire tags_all_back;

  wire                  pcie_err_cor;
  wire      [31:0]      aer_err_cor_o;         // O [31:0]
  wire      [31:0]      aer_err_uncor_o;       // O [31:0]
  wire      [31:0]      aer_control_o;         // O [31:0]

  wire      [31:0]      aer_err_cor_done;         // O [31:0]
  wire      [31:0]      aer_err_uncor_done;       // O [31:0]

  reg                   req_compl_reg;
  reg                   req_compl_wd_reg;
  reg                   req_compl_ur_reg;
  reg                   req_compl_error_reg;

  assign mrd_done    = mrd_done_tx_engine_o & mrd_done_mem_access_o;
  assign cfg_err_cor = pcie_err_cor | cpld_parity_err | req_parity_err;

  wire [80:0]  s_axis_cc_tuser_512_int;
  wire [15:0]  s_axis_cc_tkeep_512_int;
  wire [511:0] s_axis_cc_tdata_512_int;
  wire [182:0] m_axis_cq_tuser_512_int;
  wire [15:0]  m_axis_cq_tkeep_512_int;
  wire [511:0] m_axis_cq_tdata_512_int;
  reg          cfg_10b_tag_requester_enable_reg;
  reg          cfg_10b_tag_requester_enable_reg2;

   always @(posedge user_clk)
	if (~reset_n)
	  cfg_10b_tag_requester_enable_reg <= #(TCQ) 1'b0;
	else
	  cfg_10b_tag_requester_enable_reg <= #(TCQ) cfg_10b_tag_requester_enable;

   always @(posedge user_clk)
	if (~reset_n)
	  cfg_10b_tag_requester_enable_reg2 <= #(TCQ) 1'b0;
	else
	  cfg_10b_tag_requester_enable_reg2 <= #(TCQ) cfg_10b_tag_requester_enable_reg;

EXERCISER_AXIST_CQ_CC_SHIM EP_CQ_CC_SHIM(
	.m_axis_cq_tuser_1024	(m_axis_cq_tuser),
	.m_axis_cq_tkeep_1024	(m_axis_cq_tkeep),
	.m_axis_cq_tdata_1024	(m_axis_cq_tdata),
	.m_axis_cq_tuser_512	(m_axis_cq_tuser_512_int),
	.m_axis_cq_tkeep_512	(m_axis_cq_tkeep_512_int),
	.m_axis_cq_tdata_512	(m_axis_cq_tdata_512_int),
	.s_axis_cc_tdata_512	(s_axis_cc_tdata_512_int),
	.s_axis_cc_tkeep_512	(s_axis_cc_tkeep_512_int),
	.s_axis_cc_tuser_512	(s_axis_cc_tuser_512_int),
	.s_axis_cc_tdata_1024	(s_axis_cc_tdata),
	.s_axis_cc_tkeep_1024	(s_axis_cc_tkeep),
	.s_axis_cc_tuser_1024	(s_axis_cc_tuser)
);
  wire mrd_phant_func_dis1;
  wire mwr_phant_func_dis1;

EXERCISER_AXIST_EP_MEM_ACCESS EP_MEM(
	.clk				            (user_clk),
	.rst_n				            (reset_n),
	.addr_i				            (req_addr[8:2]),
	.rd_be_i			            (rd_be),
	.rd_data_o			            (rd_data),
	.wr_be_i			            (wr_be),
	.wr_data_i			            (wr_data[31:0]),
	.wr_en_i			            (wr_en),
	.wr_busy_o			            (wr_busy),
	.init_rst_o			            (init_rst),
	.mrd_start_o			        (mrd_start),
	.mrd_int_dis_o			        (mrd_int_dis_o),
	.mrd_done_o			            (mrd_done_mem_access_o),
	.mrd_addr_o			            (mrd_addr),
	.mrd_count_o			        (mrd_count),
	.mrd_done_i			            (mrd_done),
	.mrd_len_o			            (mrd_len),
	.mrd_tlp_tc_o			        (mrd_tlp_tc_o),
	.mrd_64b_en_o			        (mrd_64b_en_o),
	.mrd_phant_func_dis1_o		    (mrd_phant_func_dis1),
	.mrd_up_addr_o			        (mrd_up_addr_o),
	.mrd_relaxed_order_o		    (mrd_relaxed_order),
	.mrd_nosnoop_o			        (mrd_nosnoop),
	.mrd_wrr_cnt_o			        (mrd_wrr_cnt),
	.mwr_start_o			        (mwr_start),
	.mwr_int_dis_o			        (mwr_int_dis_o),
	.mwr_done_i			            (mwr_done),
	.mwr_addr_o			            (mwr_addr),
	.mwr_len_o			            (mwr_len),
	.mwr_count_o			        (mwr_count),
	.mwr_data_o			            (mwr_data),
	.mwr_tlp_tc_o			        (mwr_tlp_tc_o),
	.mwr_64b_en_o			        (mwr_64b_en_o),
	.mwr_phant_func_dis1_o		    (mwr_phant_func_dis1),
	.mwr_up_addr_o			        (mwr_up_addr_o),
	.mwr_relaxed_order_o		    (mwr_relaxed_order),
	.mwr_nosnoop_o			        (mwr_nosnoop),
	.mwr_wrr_cnt_o			        (mwr_wrr_cnt),
	.mwr_zerolen_en_o		        (mwr_zerolen_en_o),
	.cpl_ur_found_i			        (cpl_ur_found),
	.cpl_ur_tag_i			        (cpl_ur_tag),
	.cpld_data_o			        (cpld_data),
	.cpld_found_i			        (cpld_found),
	.cpld_data_size_i		        (cpld_data_size),
	.cpld_malformed_i		        (1'b0),
	.cpld_data_err_i		        (cpld_data_err),
	.rd_metering_o			        (rd_metering),

	.cfg_err_cor_o                  (pcie_err_cor),          //o [31:0]
    .aer_err_cor_o                  (aer_err_cor_o),         // O [31:0]
    .aer_err_uncor_o                (aer_err_uncor_o),       // O [31:0]
    .aer_control_o                  (aer_control_o),         // O [31:0]

	.tags_all_back_i		        (tags_all_back),
	.trn_wait_count			        (trn_wait_count),
	.cfg_neg_max_link_width		    (cfg_negotiated_width[3:0]),
	.cfg_prg_max_payload_size	    (cfg_max_payload),
	.cfg_max_rd_req_size		    (cfg_max_read_req),
	.cfg_bus_mstr_enable		    (cfg_function_status[2:2])
);

EXERCISER_AXIST_RC_1024 #(
	.C_DATA_WIDTH			        (C_DATA_WIDTH),
	.AXISTEN_IF_REQ_ALIGNMENT_MODE	(AXISTEN_IF_REQ_ALIGNMENT_MODE),
	.AXISTEN_IF_RC_STRADDLE		    (AXISTEN_IF_RC_STRADDLE),
	.AXISTEN_IF_REQ_PARITY_CHECK	(AXISTEN_IF_REQ_PARITY_CHECK),
	.AXI4_RC_TUSER_WIDTH		    (AXI4_RC_TUSER_WIDTH),
	.AXISTEN_IF_ENABLE_CLIENT_TAG	(AXISTEN_IF_ENABLE_CLIENT_TAG),
	.RQ_AVAIL_TAG_IDX		        (RQ_AVAIL_TAG_IDX),
	.TCQ				            (TCQ)
) EP_RC_1024(
	.user_clk			            (user_clk),
	.reset_n			            (reset_n),
	.init_rst_i			            (init_rst),
	.m_axis_rc_tvalid		        (m_axis_rc_tvalid),
	.m_axis_rc_tlast		        (m_axis_rc_tlast),
	.m_axis_rc_tuser		        (m_axis_rc_tuser),
	.m_axis_rc_tkeep		        (m_axis_rc_tkeep),
	.m_axis_rc_tdata		        (m_axis_rc_tdata),
	.m_axis_rc_tready		        (m_axis_rc_tready),
	.cfg_10b_tag_requester_enable	(cfg_10b_tag_requester_enable_reg2),
	.client_tag_released_0		    (client_tag_released_0),
	.client_tag_released_1		    (client_tag_released_1),
	.client_tag_released_2		    (client_tag_released_2),
	.client_tag_released_3		    (client_tag_released_3),
	.client_tag_released_4		    (client_tag_released_4),
	.client_tag_released_5		    (client_tag_released_5),
	.client_tag_released_6		    (client_tag_released_6),
	.client_tag_released_7		    (client_tag_released_7),
	.client_tag_released_num_0	    (client_tag_released_num_0),
	.client_tag_released_num_1	    (client_tag_released_num_1),
	.client_tag_released_num_2	    (client_tag_released_num_2),
	.client_tag_released_num_3	    (client_tag_released_num_3),
	.client_tag_released_num_4	    (client_tag_released_num_4),
	.client_tag_released_num_5	    (client_tag_released_num_5),
	.client_tag_released_num_6	    (client_tag_released_num_6),
	.client_tag_released_num_7	    (client_tag_released_num_7),
	.cpld_data_i			        (cpld_data),
	.cpld_found_o			        (cpld_found),
	.cpld_data_size_o		        (cpld_data_size),
	.cpld_data_err_o		        (cpld_data_err),
	.cpld_parity_err_o		        (cpld_parity_err)
);

EXERCISER_AXIST_CQ_512 #(
	.AXISTEN_IF_CMP_ALIGNMENT_MODE	(AXISTEN_IF_CMP_ALIGNMENT_MODE),
	.AXISTEN_IF_CQ_STRADDLE		    (AXISTEN_IF_CQ_STRADDLE),
	.AXISTEN_IF_CMP_PARITY_CHECK	(AXISTEN_IF_CMP_PARITY_CHECK),
	.AXI4_CQ_TUSER_WIDTH		    (AXI4_CQ_TUSER_WIDTH),
	.AXI4_CC_TUSER_WIDTH		    (AXI4_CC_TUSER_WIDTH),
	.AXI4_RQ_TUSER_WIDTH		    (AXI4_RQ_TUSER_WIDTH),
	.AXI4_RC_TUSER_WIDTH		    (AXI4_RC_TUSER_WIDTH),
	.TCQ				            (TCQ)
) EP_CQ_512(
	.user_clk		        (user_clk),
	.reset_n		        (reset_n),
	.m_axis_cq_tvalid	    (m_axis_cq_tvalid),
	.m_axis_cq_tlast	    (m_axis_cq_tlast),
	.m_axis_cq_tuser	    (m_axis_cq_tuser_512_int),
	.m_axis_cq_tkeep	    (m_axis_cq_tkeep_512_int),
	.m_axis_cq_tdata	    (m_axis_cq_tdata_512_int),
	.m_axis_cq_tready	    (m_axis_cq_tready),
	.pcie_cq_np_req		    (pcie_cq_np_req),
	.req_compl		        (req_compl),
	.req_compl_wd		    (req_compl_wd),
	.req_compl_ur		    (req_compl_ur),
	.compl_done		        (compl_done),
	.req_tc			        (req_tc),
	.req_attr		        (req_attr),
	.req_len		        (req_len),
	.req_rid		        (req_rid),
	.req_tag		        (req_tag),
	.req_be			        (req_be),
	.req_addr		        (req_addr),
	.req_at			        (req_at),
	.req_des_qword0		    (req_des_qword0),
	.req_des_qword1		    (req_des_qword1),
	.req_des_tph_present	(req_des_tph_present),
	.req_des_tph_type	    (req_des_tph_type),
	.req_des_tph_st_tag	    (req_des_tph_st_tag),
	.req_mem_lock		    (req_mem_lock),
	.req_mem		        (req_mem),
	.wr_addr		        (wr_addr),
	.wr_be			        (wr_be),
	.wr_data		        (wr_data),
	.wr_en			        (wr_en),
	.payload_len		    (payload_len),
	.wr_busy		        (wr_busy),
	.req_parity_err		    (req_parity_err)
);

EXERCISER_AXIST_RQ_1024 #(
	.C_DATA_WIDTH			        (C_DATA_WIDTH),
	.KEEP_WIDTH			            (KEEP_WIDTH),
	.AXISTEN_IF_REQ_ALIGNMENT_MODE	(AXISTEN_IF_REQ_ALIGNMENT_MODE),
	.AXISTEN_IF_RQ_STRADDLE		    (AXISTEN_IF_RQ_STRADDLE),
	.AXISTEN_IF_REQ_PARITY_CHECK	(AXISTEN_IF_REQ_PARITY_CHECK),
	.AXI4_CQ_TUSER_WIDTH		    (AXI4_CQ_TUSER_WIDTH),
	.AXI4_CC_TUSER_WIDTH		    (AXI4_CC_TUSER_WIDTH),
	.AXI4_RQ_TUSER_WIDTH		    (AXI4_RQ_TUSER_WIDTH),
	.AXI4_RC_TUSER_WIDTH		    (AXI4_RC_TUSER_WIDTH),
	.AXISTEN_IF_ENABLE_CLIENT_TAG	(AXISTEN_IF_ENABLE_CLIENT_TAG),
	.RQ_AVAIL_TAG_IDX		        (RQ_AVAIL_TAG_IDX),
	.RQ_AVAIL_TAG			        (RQ_AVAIL_TAG),
	.TCQ				            (TCQ)
) EP_RQ_1024(
	.user_clk			            (user_clk),
	.reset_n			            (reset_n),
	.init_rst_i			            (init_rst),
	.s_axis_rq_tdata		        (s_axis_rq_tdata),
	.s_axis_rq_tkeep		        (s_axis_rq_tkeep),
	.s_axis_rq_tlast		        (s_axis_rq_tlast),
	.s_axis_rq_tvalid		        (s_axis_rq_tvalid),
	.s_axis_rq_tuser		        (s_axis_rq_tuser),
	.s_axis_rq_tready		        (s_axis_rq_tready),
	.client_tag_released_0		    (client_tag_released_0),
	.client_tag_released_1		    (client_tag_released_1),
	.client_tag_released_2		    (client_tag_released_2),
	.client_tag_released_3		    (client_tag_released_3),
	.client_tag_released_4		    (client_tag_released_4),
	.client_tag_released_5		    (client_tag_released_5),
	.client_tag_released_6		    (client_tag_released_6),
	.client_tag_released_7		    (client_tag_released_7),
	.client_tag_released_num_0	    (client_tag_released_num_0),
	.client_tag_released_num_1	    (client_tag_released_num_1),
	.client_tag_released_num_2	    (client_tag_released_num_2),
	.client_tag_released_num_3	    (client_tag_released_num_3),
	.client_tag_released_num_4	    (client_tag_released_num_4),
	.client_tag_released_num_5	    (client_tag_released_num_5),
	.client_tag_released_num_6	    (client_tag_released_num_6),
	.client_tag_released_num_7	    (client_tag_released_num_7),
	.tags_all_back			        (tags_all_back),
	.pcie_rq_seq_num0		        (pcie_rq_seq_num0),
	.pcie_rq_seq_num_vld0		    (pcie_rq_seq_num_vld0),
	.pcie_rq_seq_num1		        (pcie_rq_seq_num1),
	.pcie_rq_seq_num_vld1		    (pcie_rq_seq_num_vld1),
	.cfg_10b_tag_requester_enable	(cfg_10b_tag_requester_enable_reg2),
	.mrd_start_i			        (mrd_start),
	.mrd_done_o			            (mrd_done_tx_engine_o),
	.mrd_addr_i			            (mrd_addr),
	.mrd_len_i			            (mrd_len[10:0]),
	.mrd_count_i			        (mrd_count),
	.mrd_wrr_cnt_i			        (mrd_wrr_cnt),
	.mwr_start_i			        (mwr_start),
	.mwr_done_o			            (mwr_done),
	.mwr_addr_i			            (mwr_addr),
	.mwr_len_i			            (mwr_len[10:0]),
	.mwr_count_i			        (mwr_count),
	.mwr_data_i			            (mwr_data),
	.mwr_wrr_cnt_i			        (mwr_wrr_cnt),
	.wait_trn_time_i		        (trn_wait_count),
	.aer_err_cor                    (aer_err_cor_o)
);

EXERCISER_AXIST_CC_512 #(
	.AXISTEN_IF_CMP_ALIGNMENT_MODE	(AXISTEN_IF_CMP_ALIGNMENT_MODE),
	.AXISTEN_IF_CC_STRADDLE		    (AXISTEN_IF_CC_STRADDLE),
	.AXISTEN_IF_CMP_PARITY_CHECK	(AXISTEN_IF_CMP_PARITY_CHECK),
	.AXI4_CQ_TUSER_WIDTH		    (AXI4_CQ_TUSER_WIDTH),
	.AXI4_CC_TUSER_WIDTH		    (AXI4_CC_TUSER_WIDTH),
	.AXI4_RQ_TUSER_WIDTH		    (AXI4_RQ_TUSER_WIDTH),
	.AXI4_RC_TUSER_WIDTH		    (AXI4_RC_TUSER_WIDTH),
	.TCQ				            (TCQ)
) EP_CC_512(
	.user_clk		        (user_clk),
	.reset_n		        (reset_n),
	.s_axis_cc_tdata	    (s_axis_cc_tdata_512_int),
	.s_axis_cc_tkeep	    (s_axis_cc_tkeep_512_int),
	.s_axis_cc_tlast	    (s_axis_cc_tlast),
	.s_axis_cc_tvalid	    (s_axis_cc_tvalid),
	.s_axis_cc_tuser	    (s_axis_cc_tuser_512_int),
	.s_axis_cc_tready	    (s_axis_cc_tready),
	.cfg_msg_transmit	    (cfg_msg_transmit),
	.cfg_msg_transmit_type	(cfg_msg_transmit_type),
	.cfg_msg_transmit_data	(cfg_msg_transmit_data),

	.req_compl		        (req_compl_reg),
	.req_compl_wd		    (req_compl_wd_reg),
	.req_compl_ur		    (req_compl_ur_reg),
	.req_compl_error		(req_compl_error_reg),

    .aer_err_cor            (aer_err_cor_o),
    .aer_err_uncor          (aer_err_uncor_o),
    .aer_control            (aer_control_o),
    .aer_err_cor_done       (aer_err_cor_done),
    .aer_err_uncor_done     (aer_err_uncor_done),

	.payload_len		    (payload_len),
	.compl_done		        (compl_done),
	.req_tc			        (req_tc),
	.req_attr		        (req_attr),
	.req_rid		        (req_rid),
	.req_tag		        (req_tag),
	.req_be			        (req_be),
	.req_addr		        (req_addr),
	.req_at			        (req_at),
	.req_des_qword0		    (req_des_qword0),
	.req_des_qword1		    (req_des_qword1),
	.req_des_tph_present	(req_des_tph_present),
	.req_des_tph_type	    (req_des_tph_type),
	.req_des_tph_st_tag	    (req_des_tph_st_tag),
	.req_mem_lock		    (req_mem_lock),
	.req_mem		        (req_mem),
	.rd_addr		        (rd_addr),
	.rd_be			        (rd_be),
	.rd_data		        (rd_data)
);

EXERCISER_AXIST_INTR_CTRL EP_INTR_CTRL(
	.user_clk				                (user_clk),
	.reset_n				                (reset_n),
	.mrd_done_i				                (mrd_done),
	.mwr_done_i				                (mwr_done),
	.interrupt_done				            (interrupt_done),
	.cfg_interrupt_sent			            (cfg_interrupt_sent),
	.cfg_interrupt_int			            (cfg_interrupt_int),
	.cfg_interrupt_pending			        (cfg_interrupt_pending),
	.cfg_interrupt_msi_enable		        (cfg_interrupt_msi_enable),
	.cfg_interrupt_msi_sent			        (cfg_interrupt_msi_sent),
	.cfg_interrupt_msi_fail			        (cfg_interrupt_msi_fail),
	.cfg_interrupt_msi_int			        (cfg_interrupt_msi_int),
	.cfg_interrupt_msi_function_number	    (cfg_interrupt_msi_function_number),
	.cfg_interrupt_msi_select		        (cfg_interrupt_msi_select),
	.cfg_interrupt_msix_enable		        (cfg_interrupt_msix_enable),
	.cfg_interrupt_msix_mask		        (cfg_interrupt_msix_mask),
	.cfg_interrupt_msix_vf_enable		    (cfg_interrupt_msix_vf_enable),
	.cfg_interrupt_msix_vf_mask		        (cfg_interrupt_msix_vf_mask),
	.cfg_interrupt_msix_vec_pending_status	(cfg_interrupt_msix_vec_pending_status),
	.cfg_interrupt_msix_int			        (cfg_interrupt_msix_int),
	.cfg_interrupt_msix_vec_pending		    (cfg_interrupt_msix_vec_pending)
);

   always @(posedge user_clk)
	if ((aer_err_cor_o > 0) && (aer_err_cor_o < 32'd10) && !aer_err_cor_done) begin
        req_compl_reg       <= 1'b0;
        req_compl_wd_reg    <= 1'b0;
        req_compl_ur_reg    <= 1'b0;
        req_compl_error_reg <= 1'b1;
      end
      else begin
	    req_compl_reg       <= req_compl;
	    req_compl_wd_reg    <= req_compl_wd;
	    req_compl_ur_reg    <= req_compl_ur;
        req_compl_error_reg <= 1'b0;
	  end

   assign req_completion   = (req_compl | req_compl_wd) | req_compl_ur;
   assign cpl_ur_found     = 8'b00000000;
   assign cpl_ur_tag       = 8'b00000000;
   assign cfg_fc_sel       = 3'b000;

axis_ila_0 aer_set (
  .clk(user_clk),               // input wire clk
  .probe0(aer_err_cor_o),       // input wire [31 : 0] probe0
  .probe1(aer_err_cor_done),    // input wire [31 : 0] probe1
  .probe2(compl_done),          // input wire [0 : 0] probe2
  .probe3(req_compl_error_reg), // input wire [0 : 0] probe3
  .probe4(req_compl_reg),       // input wire [0 : 0] probe4
  .probe5(req_compl_wd_reg),    // input wire [0 : 0] probe5
  .probe6(req_compl_ur_reg)     // input wire [0 : 0] probe6
);

endmodule
