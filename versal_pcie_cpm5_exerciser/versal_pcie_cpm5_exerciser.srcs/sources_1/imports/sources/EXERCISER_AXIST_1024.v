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
// File       : EXERCISER_AXIST_1024.v
// Version    : 1.0
//-----------------------------------------------------------------------------

(* DowngradeIPIdentifiedWarnings = "yes" *)
module EXERCISER_AXIST_1024 #(
    parameter        TCQ                             = 1,
    parameter        C_DATA_WIDTH                    = 1024,
    parameter        AXISTEN_IF_REQ_ALIGNMENT_MODE   = 2'b00,
    parameter        AXISTEN_IF_CMP_ALIGNMENT_MODE   = 2'b00,
    parameter        AXISTEN_IF_ENABLE_CLIENT_TAG    = 0,
    parameter        RQ_AVAIL_TAG_IDX                = 8,
    parameter        RQ_AVAIL_TAG                    = 256,
    parameter        AXISTEN_IF_REQ_PARITY_CHECK     = 0,
    parameter        AXISTEN_IF_CMP_PARITY_CHECK     = 0,
    parameter        AXISTEN_IF_RQ_STRADDLE          = 0,
    parameter        AXISTEN_IF_RC_STRADDLE          = 0,
    parameter        AXISTEN_IF_CQ_STRADDLE          = 0,
    parameter        AXISTEN_IF_CC_STRADDLE          = 0,
    parameter        AXISTEN_IF_ENABLE_RX_MSG_INTFC  = 0,
    parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE     = 18'h2ffff,
    parameter        AXI4_CQ_TUSER_WIDTH             = 465,
    parameter        AXI4_CC_TUSER_WIDTH             = 165,
    parameter        AXI4_RQ_TUSER_WIDTH             = 373,
    parameter        AXI4_RC_TUSER_WIDTH             = 337,
    parameter        KEEP_WIDTH                      = C_DATA_WIDTH / 32
)(
    input user_clk,
    input reset_n,
    input user_lnk_up,


 //--------------------------------------------------------------------//
 //  AXI Interface                                                     //
 //--------------------------------------------------------------------//
    output wire                                 s_axis_rq_tlast,
    output wire [C_DATA_WIDTH - 1:0]            s_axis_rq_tdata,
    output wire [AXI4_RQ_TUSER_WIDTH - 1:0]     s_axis_rq_tuser,
    output wire [KEEP_WIDTH - 1:0]              s_axis_rq_tkeep,
    input                                       s_axis_rq_tready,
    output wire                                 s_axis_rq_tvalid,

    input       [C_DATA_WIDTH - 1:0]            m_axis_rc_tdata,
    input       [AXI4_RC_TUSER_WIDTH - 1:0]     m_axis_rc_tuser,
    input       [KEEP_WIDTH - 1:0]              m_axis_rc_tkeep,
    input                                       m_axis_rc_tlast,
    output wire                                 m_axis_rc_tready,
    input                                       m_axis_rc_tvalid,

    input       [C_DATA_WIDTH - 1:0]            m_axis_cq_tdata,
    input       [AXI4_CQ_TUSER_WIDTH - 1:0]     m_axis_cq_tuser,
    input       [KEEP_WIDTH - 1:0]              m_axis_cq_tkeep,
    input                                       m_axis_cq_tlast,
    output wire                                 m_axis_cq_tready,
    input                                       m_axis_cq_tvalid,

    output wire                                 s_axis_cc_tlast,
    output wire [C_DATA_WIDTH - 1:0]            s_axis_cc_tdata,
    output wire [AXI4_CC_TUSER_WIDTH - 1:0]     s_axis_cc_tuser,
    output wire [KEEP_WIDTH - 1:0]              s_axis_cc_tkeep,
    input                                       s_axis_cc_tready,
    output wire                                 s_axis_cc_tvalid,

    input       [5:0]                           pcie_cq_np_req_count,
    output wire                                 pcie_cq_np_req,

    // TX Message Interface
    input                                       cfg_msg_transmit_done,
    output wire                                 cfg_msg_transmit,
    output wire [2:0]                           cfg_msg_transmit_type,
    output wire [31:0]                          cfg_msg_transmit_data,

    //Tag availability and Flow control Information
    input       [5:0]                           pcie_rq_tag,
    input                                       pcie_rq_tag_vld,
    input       [1:0]                           pcie_tfc_nph_av,
    input       [1:0]                           pcie_tfc_npd_av,
    input                                       pcie_tfc_np_pl_empty,
    input       [5:0]                           pcie_rq_seq_num0,
    input                                       pcie_rq_seq_num_vld0,
    input       [5:0]                           pcie_rq_seq_num1,
    input                                       pcie_rq_seq_num_vld1,

    //Cfg Flow Control Information
    input       [7:0]                           cfg_fc_ph,
    input       [7:0]                           cfg_fc_nph,
    input       [7:0]                           cfg_fc_cplh,
    input       [11:0]                          cfg_fc_pd,
    input       [11:0]                          cfg_fc_npd,
    input       [11:0]                          cfg_fc_cpld,
    output wire [2:0]                           cfg_fc_sel,
    input                                       cfg_err_fatal_out,

    //RX Message Interface
    input                                       cfg_msg_received,
    input       [4:0]                           cfg_msg_received_type,
    input       [7:0]                           cfg_msg_data,

    // EXERCISER_AXIST Interrupt Interface
    output wire                                 interrupt_done,
    input                                       cfg_interrupt_sent,
    output wire [3:0]                           cfg_interrupt_int,
    input       [3:0]                           cfg_interrupt_msi_enable,
    input                                       cfg_interrupt_msi_sent,
    input                                       cfg_interrupt_msi_fail,
    output wire [31:0]                          cfg_interrupt_msi_int,
    output wire [7:0]                           cfg_interrupt_msi_function_number,
    output wire [1:0]                           cfg_interrupt_msi_select,
    input       [3:0]                           cfg_interrupt_msix_enable,
    input       [3:0]                           cfg_interrupt_msix_mask,
    input       [251:0]                         cfg_interrupt_msix_vf_enable,
    input       [251:0]                         cfg_interrupt_msix_vf_mask,
    input                                       cfg_interrupt_msix_vec_pending_status,
    output wire                                 cfg_interrupt_msix_int,
    output wire [1:0]                           cfg_interrupt_msix_vec_pending,
    input                                       cfg_power_state_change_interrupt,
    output wire                                 cfg_power_state_change_ack,
    input       [2:0]                           cfg_current_speed,
    input       [5:0]                           cfg_negotiated_width,
    input       [1:0]                           cfg_max_payload,
    input       [2:0]                           cfg_max_read_req,
    input       [7:0]                           cfg_function_status,
    input                                       cfg_10b_tag_requester_enable,
    output wire                                 cfg_err_cor
);
    // Local wires
    wire req_completion;
    wire exerciser_reset_n;

    assign exerciser_reset_n = user_lnk_up && reset_n;

    //
    // EXERCISER_AXIST instance
    //
    EXERCISER_AXIST_EP_1024 #(
        .TCQ				(TCQ),
        .C_DATA_WIDTH			(C_DATA_WIDTH),
        .AXISTEN_IF_REQ_ALIGNMENT_MODE	(AXISTEN_IF_REQ_ALIGNMENT_MODE),
        .AXISTEN_IF_CMP_ALIGNMENT_MODE	(AXISTEN_IF_CMP_ALIGNMENT_MODE),
        .AXISTEN_IF_ENABLE_CLIENT_TAG	(AXISTEN_IF_ENABLE_CLIENT_TAG),
        .RQ_AVAIL_TAG_IDX		(RQ_AVAIL_TAG_IDX),
        .RQ_AVAIL_TAG			(RQ_AVAIL_TAG),
        .AXISTEN_IF_REQ_PARITY_CHECK	(AXISTEN_IF_REQ_PARITY_CHECK),
        .AXISTEN_IF_CMP_PARITY_CHECK	(AXISTEN_IF_CMP_PARITY_CHECK),
        .AXISTEN_IF_RQ_STRADDLE		(AXISTEN_IF_RQ_STRADDLE),
        .AXISTEN_IF_RC_STRADDLE		(AXISTEN_IF_RC_STRADDLE),
        .AXISTEN_IF_CQ_STRADDLE		(AXISTEN_IF_CQ_STRADDLE),
        .AXISTEN_IF_CC_STRADDLE		(AXISTEN_IF_CC_STRADDLE),
        .AXISTEN_IF_ENABLE_RX_MSG_INTFC	(AXISTEN_IF_ENABLE_RX_MSG_INTFC),
        .AXISTEN_IF_ENABLE_MSG_ROUTE	(AXISTEN_IF_ENABLE_MSG_ROUTE),
        .AXI4_CQ_TUSER_WIDTH		(AXI4_CQ_TUSER_WIDTH),
        .AXI4_CC_TUSER_WIDTH		(AXI4_CC_TUSER_WIDTH),
        .AXI4_RQ_TUSER_WIDTH		(AXI4_RQ_TUSER_WIDTH),
        .AXI4_RC_TUSER_WIDTH		(AXI4_RC_TUSER_WIDTH),
        .KEEP_WIDTH			(KEEP_WIDTH)
    ) EXERCISER_AXIST_EP_1024(
        .user_clk				(user_clk),
        .reset_n				(reset_n),
        .s_axis_cc_tdata			(s_axis_cc_tdata),
        .s_axis_cc_tkeep			(s_axis_cc_tkeep),
        .s_axis_cc_tlast			(s_axis_cc_tlast),
        .s_axis_cc_tvalid			(s_axis_cc_tvalid),
        .s_axis_cc_tuser			(s_axis_cc_tuser),
        .s_axis_cc_tready			(s_axis_cc_tready),
        .s_axis_rq_tvalid			(s_axis_rq_tvalid),
        .s_axis_rq_tlast			(s_axis_rq_tlast),
        .s_axis_rq_tuser			(s_axis_rq_tuser),
        .s_axis_rq_tkeep			(s_axis_rq_tkeep),
        .s_axis_rq_tdata			(s_axis_rq_tdata),
        .s_axis_rq_tready			(s_axis_rq_tready),
        .cfg_msg_transmit_done			(cfg_msg_transmit_done),
        .cfg_msg_transmit			(cfg_msg_transmit),
        .cfg_msg_transmit_type			(cfg_msg_transmit_type),
        .cfg_msg_transmit_data			(cfg_msg_transmit_data),
        .pcie_rq_tag				(pcie_rq_tag),
        .pcie_rq_tag_vld			(pcie_rq_tag_vld),
        .pcie_tfc_nph_av			(pcie_tfc_nph_av),
        .pcie_tfc_npd_av			(pcie_tfc_npd_av),
        .pcie_tfc_np_pl_empty			(pcie_tfc_np_pl_empty),
        .pcie_rq_seq_num0			(pcie_rq_seq_num0),
        .pcie_rq_seq_num_vld0			(pcie_rq_seq_num_vld0),
        .pcie_rq_seq_num1			(pcie_rq_seq_num1),
        .pcie_rq_seq_num_vld1			(pcie_rq_seq_num_vld1),
        .cfg_fc_ph				(cfg_fc_ph),
        .cfg_fc_nph				(cfg_fc_nph),
        .cfg_fc_cplh				(cfg_fc_cplh),
        .cfg_fc_pd				(cfg_fc_pd),
        .cfg_fc_npd				(cfg_fc_npd),
        .cfg_fc_cpld				(cfg_fc_cpld),
        .cfg_fc_sel				(cfg_fc_sel),
        .cfg_err_fatal_out			(cfg_err_fatal_out),
        .m_axis_cq_tvalid			(m_axis_cq_tvalid),
        .m_axis_cq_tlast			(m_axis_cq_tlast),
        .m_axis_cq_tuser			(m_axis_cq_tuser),
        .m_axis_cq_tkeep			(m_axis_cq_tkeep),
        .m_axis_cq_tdata			(m_axis_cq_tdata),
        .m_axis_cq_tready			(m_axis_cq_tready),
        .pcie_cq_np_req				(pcie_cq_np_req),
        .pcie_cq_np_req_count			(pcie_cq_np_req_count),
        .m_axis_rc_tvalid			(m_axis_rc_tvalid),
        .m_axis_rc_tlast			(m_axis_rc_tlast),
        .m_axis_rc_tuser			(m_axis_rc_tuser),
        .m_axis_rc_tkeep			(m_axis_rc_tkeep),
        .m_axis_rc_tdata			(m_axis_rc_tdata),
        .m_axis_rc_tready			(m_axis_rc_tready),
        .cfg_msg_received			(cfg_msg_received),
        .cfg_msg_received_type			(cfg_msg_received_type),
        .cfg_msg_data				(cfg_msg_data),
        .interrupt_done				(interrupt_done),
        .cfg_interrupt_sent			(cfg_interrupt_sent),
        .cfg_interrupt_int			(cfg_interrupt_int),
        .cfg_interrupt_msi_enable		(cfg_interrupt_msi_enable),
        .cfg_interrupt_msi_sent			(cfg_interrupt_msi_sent),
        .cfg_interrupt_msi_fail			(cfg_interrupt_msi_fail),
        .cfg_interrupt_msi_int			(cfg_interrupt_msi_int),
        .cfg_interrupt_msi_function_number	(cfg_interrupt_msi_function_number),
        .cfg_interrupt_msi_select		(cfg_interrupt_msi_select),
        .cfg_interrupt_msix_enable		(cfg_interrupt_msix_enable),
        .cfg_interrupt_msix_mask		(cfg_interrupt_msix_mask),
        .cfg_interrupt_msix_vf_enable		(cfg_interrupt_msix_vf_enable),
        .cfg_interrupt_msix_vf_mask		(cfg_interrupt_msix_vf_mask),
        .cfg_interrupt_msix_vec_pending_status	(cfg_interrupt_msix_vec_pending_status),
        .cfg_interrupt_msix_int			(cfg_interrupt_msix_int),
        .cfg_interrupt_msix_vec_pending		(cfg_interrupt_msix_vec_pending),
        .req_completion				(req_completion),
        .cfg_current_speed			(cfg_current_speed),
        .cfg_negotiated_width			(cfg_negotiated_width),
        .cfg_max_payload			(cfg_max_payload),
        .cfg_max_read_req			(cfg_max_read_req),
        .cfg_function_status			(cfg_function_status),
        .cfg_10b_tag_requester_enable		(cfg_10b_tag_requester_enable),
        .cfg_err_cor				(cfg_err_cor)
    );
    EXERCISER_AXIST_TO_CTRL EXERCISER_AXIST_TO(
        .clk					(user_clk),
        .rst_n					(exerciser_reset_n),
        .req_compl				(req_completion),
        .cfg_power_state_change_interrupt	(cfg_power_state_change_interrupt),
        .cfg_power_state_change_ack		(cfg_power_state_change_ack)
    );
endmodule
