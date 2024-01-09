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
// File       : pcie_app_exerciser.v
// Version    : 1.0
//-----------------------------------------------------------------------------
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pcie_app_versal_exerciser #(
    parameter        C_DATA_WIDTH                   = 1024,
    parameter        AXISTEN_IF_REQ_ALIGNMENT_MODE  = 2'b00,
    parameter        AXISTEN_IF_CMP_ALIGNMENT_MODE  = 2'b00,
    parameter        AXISTEN_IF_ENABLE_CLIENT_TAG   = 0,
    parameter        TAG_10B_SUPPORT_EN             = "FALSE",
    //parameter        TAG_10B_SUPPORT_EN             = "TRUE" ,
    parameter        RQ_AVAIL_TAG_IDX               = (TAG_10B_SUPPORT_EN == "TRUE" ? 10 : 8),
    parameter        RQ_AVAIL_TAG                   = (TAG_10B_SUPPORT_EN == "TRUE" ? 1024 : 256),
    parameter        AXISTEN_IF_REQ_PARITY_CHECK    = 0,
    parameter        AXISTEN_IF_CMP_PARITY_CHECK    = 0,
    parameter        AXISTEN_IF_RQ_STRADDLE         = 2'b00,  //00: max 1 packet, 01: max 2, 10: max 4, 11: rsvd
    parameter        AXISTEN_IF_RC_STRADDLE         = 2'b10,
    parameter        AXISTEN_IF_CQ_STRADDLE         = 0,
    parameter        AXISTEN_IF_CC_STRADDLE         = 0,
    parameter        AXISTEN_IF_ENABLE_RX_MSG_INTFC = 0,
    parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE    = 18'h2ffff,
    parameter        AXI4_CQ_TUSER_WIDTH            = 465,
    parameter        AXI4_CC_TUSER_WIDTH            = 165,
    parameter        AXI4_RQ_TUSER_WIDTH            = 373,
    parameter        AXI4_RC_TUSER_WIDTH            = 337,
    parameter        KEEP_WIDTH                     = C_DATA_WIDTH / 32,
    parameter        TCQ                            = 1
)(
   input wire user_clk,
   input wire user_reset,
   input wire user_lnk_up,
   input wire sys_rst,

   output wire [7:0] leds,

  //----------------------------------------------------------------------------------------------------------------//
  //  AXI Interface                                                                                                 //
  //----------------------------------------------------------------------------------------------------------------//
  output wire                             s_axis_rq_tlast,
  output wire [C_DATA_WIDTH - 1:0]        s_axis_rq_tdata,
  output wire [AXI4_RQ_TUSER_WIDTH - 1:0] s_axis_rq_tuser,
  output wire [KEEP_WIDTH - 1:0]          s_axis_rq_tkeep,
  input                                   s_axis_rq_tready,
  output wire                             s_axis_rq_tvalid,

  input       [C_DATA_WIDTH - 1:0]        m_axis_rc_tdata,
  input       [AXI4_RC_TUSER_WIDTH - 1:0] m_axis_rc_tuser,
  input       [KEEP_WIDTH - 1:0]          m_axis_rc_tkeep,
  input                                   m_axis_rc_tlast,
  output wire                             m_axis_rc_tready,

  input                                   m_axis_rc_tvalid,
  input       [C_DATA_WIDTH - 1:0]        m_axis_cq_tdata,
  input       [AXI4_CQ_TUSER_WIDTH - 1:0] m_axis_cq_tuser,
  input       [KEEP_WIDTH - 1:0]          m_axis_cq_tkeep,
  input                                   m_axis_cq_tlast,
  output wire                             m_axis_cq_tready,
  input                                   m_axis_cq_tvalid,

  output wire                             s_axis_cc_tlast,
  output wire [C_DATA_WIDTH - 1:0]        s_axis_cc_tdata,
  output wire [AXI4_CC_TUSER_WIDTH - 1:0] s_axis_cc_tuser,
  output wire [KEEP_WIDTH - 1:0]          s_axis_cc_tkeep,
  input                                   s_axis_cc_tready,
  output wire                             s_axis_cc_tvalid,

  output wire m_axis_cq_rts,
  output wire m_axis_rc_rts,

  //----------------------------------------------------------------------------------------------------------------//
  //  Configuration (CFG) Interface                                                                                 //
  //----------------------------------------------------------------------------------------------------------------//
  input       [5:0]   pcie_rq_seq_num0,
  input               pcie_rq_seq_num_vld0,
  input       [5:0]   pcie_rq_seq_num1,
  input               pcie_rq_seq_num_vld1,
  input       [5:0]   pcie_rq_tag,
  input               pcie_rq_tag_vld,
  input       [1:0]   pcie_tfc_nph_av,
  input       [1:0]   pcie_tfc_npd_av,
  output wire         pcie_cq_np_req,
  input       [5:0]   pcie_cq_np_req_count,

  //----------------------------------------------------------------------------------------------------------------//
  // EP and RP                                                                                                      //
  //----------------------------------------------------------------------------------------------------------------//
  input               cfg_phy_link_down,
  input       [2:0]   cfg_negotiated_width,
  input       [2:0]   cfg_current_speed,
  input       [1:0]   cfg_max_payload,
  input       [2:0]   cfg_max_read_req,
  input       [7:0]   cfg_function_status,
  input       [5:0]   cfg_function_power_state,
  input       [503:0] cfg_vf_status,
  input       [1:0]   cfg_link_power_state,
  output wire [9:0]   cfg_mgmt_addr,
  output wire         cfg_mgmt_write,
  output wire [31:0]  cfg_mgmt_write_data,
  output wire [3:0]   cfg_mgmt_byte_enable,
  output wire         cfg_mgmt_read,
  input       [31:0]  cfg_mgmt_read_data,
  input               cfg_mgmt_read_write_done,
  output wire         cfg_mgmt_type1_cfg_reg_access,

  // Error Reporting Interface
  input               cfg_err_cor_out,
  input               cfg_err_nonfatal_out,
  input               cfg_err_fatal_out,
  input               cfg_ltr_enable,
  input       [5:0]   cfg_ltssm_state,
  input       [1:0]   cfg_rcb_status,
  input       [1:0]   cfg_dpa_substate_change,
  input       [1:0]   cfg_obff_enable,
  input               cfg_pl_status_change,

  // Management Interface
  input               cfg_msg_received,
  input       [7:0]   cfg_msg_received_data,
  input       [4:0]   cfg_msg_received_type,
  output wire         cfg_msg_transmit,
  output wire [2:0]   cfg_msg_transmit_type,
  output wire [31:0]  cfg_msg_transmit_data,
  input               cfg_msg_transmit_done,
  input               cfg_10b_tag_requester_enable,
  input       [7:0]   cfg_fc_ph,
  input       [11:0]  cfg_fc_pd,
  input       [7:0]   cfg_fc_nph,
  input       [11:0]  cfg_fc_npd,
  input       [7:0]   cfg_fc_cplh,
  input       [11:0]  cfg_fc_cpld,
  output wire [2:0]   cfg_fc_sel,
  output wire [63:0]  cfg_dsn,
  output wire         cfg_power_state_change_ack,
  input               cfg_power_state_change_interrupt,
  output wire         cfg_err_cor_in,
  output wire         cfg_err_uncor_in,
  input       [3:0]   cfg_flr_in_process,
  output wire [3:0]   cfg_flr_done,
  input       [251:0] cfg_vf_flr_in_process,
  output wire         cfg_vf_flr_done,
  output wire [7:0]   cfg_vf_flr_func_num,
  output wire         cfg_link_training_enable,
  output wire [7:0]   cfg_ds_port_number,
  output wire [7:0]   cfg_ds_bus_number,
  output wire [4:0]   cfg_ds_device_number,
  output wire [2:0]   cfg_ds_function_number,

  //----------------------------------------------------------------------------------------------------------------//
  // EP Only                                                                                                        //
  //----------------------------------------------------------------------------------------------------------------//

  // Interrupt Interface Signals
  output wire         interrupt_done,
  output wire [3:0]   cfg_interrupt_int,
  output wire [1:0]   cfg_interrupt_pending,
  input               cfg_interrupt_sent,
  input       [3:0]   cfg_interrupt_msi_enable,
  input       [5:0]   cfg_interrupt_msi_vf_enable,
  input       [5:0]   cfg_interrupt_msi_mmenable,
  input               cfg_interrupt_msi_mask_update,
  input       [31:0]  cfg_interrupt_msi_data,
  output wire [1:0]   cfg_interrupt_msi_select,
  output wire [31:0]  cfg_interrupt_msi_int,
  output wire [63:0]  cfg_interrupt_msi_pending_status,
  input               cfg_interrupt_msi_sent,
  input               cfg_interrupt_msi_fail,
  output wire [2:0]   cfg_interrupt_msi_attr,
  output wire         cfg_interrupt_msi_tph_present,
  output wire [1:0]   cfg_interrupt_msi_tph_type,
  output wire [7:0]   cfg_interrupt_msi_tph_st_tag,
  output wire [7:0]   cfg_interrupt_msi_function_number,
  input       [3:0]   cfg_interrupt_msix_enable,
  input       [3:0]   cfg_interrupt_msix_mask,
  input       [251:0] cfg_interrupt_msix_vf_mask,
  input       [251:0] cfg_interrupt_msix_vf_enable,
  input               cfg_interrupt_msix_vec_pending_status,
  output wire         cfg_interrupt_msix_int,
  output wire [1:0]   cfg_interrupt_msix_vec_pending,

  // EP only
  input               cfg_hot_reset_in,
  output wire         cfg_config_space_enable,
  output wire         cfg_req_pm_transition_l23_ready,

  // RP only
  output wire         cfg_hot_reset_out
);

    reg cfg_flr_done_reg;
    wire m_axis_cq_tready_bit;
    wire m_axis_rc_tready_bit;

    wire user_reset_n;
    assign user_reset_n = ~user_reset;
    always @(posedge user_clk)
	if (~user_reset_n)
		cfg_flr_done_reg <= #(TCQ) 1'b0;
	else
		cfg_flr_done_reg <= #(TCQ) cfg_flr_in_process[0];

  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Block EP Tieoffs - Example PIO doesn't support the following outputs                                      //
  //----------------------------------------------------------------------------------------------------------------//
    assign cfg_dsn                          = 64'h10ee000101000a35;
    assign cfg_mgmt_addr                    = 10'h000;                // Zero out CFG MGMT 19-bit address port
    assign cfg_mgmt_write                   = 1'b0;                   // Do not write CFG space
    assign cfg_mgmt_write_data              = 32'h0;                  // Zero out CFG MGMT input data bus     0000;
    assign cfg_mgmt_byte_enable             = 4'h0;                   // Zero out CFG MGMT byte enables
    assign cfg_mgmt_read                    = 1'b0;                   // Do not read CFG space
    assign cfg_mgmt_type1_cfg_reg_access    = 1'b0;

  //assign cfg_err_cor_in                      = 1'b0;                 // Never report Correctable Error
    assign cfg_err_uncor_in                    = 1'b0;                 // Never report UnCorrectable Error

    assign cfg_flr_done                     = {3'b0, cfg_flr_done_reg};
    assign cfg_vf_flr_done                  = 1'b0;

    assign cfg_link_training_enable         = 1'b1;                   // Always enable LTSSM to bring up the Link


    assign cfg_interrupt_pending            = 2'h0;
    assign cfg_interrupt_msi_pending_status = 64'h0000000000000000;
    assign cfg_interrupt_msi_attr           = 3'h0;
    assign cfg_interrupt_msi_tph_present    = 1'b0;
    assign cfg_interrupt_msi_tph_type       = 2'h0;
    assign cfg_interrupt_msi_tph_st_tag     = 8'h00;
    assign cfg_config_space_enable          = 1'b1;
    assign cfg_req_pm_transition_l23_ready  = 1'b0;
    assign cfg_hot_reset_out                = 1'b0;
    assign cfg_ds_port_number               = 8'h00;
    assign cfg_ds_bus_number                = 8'h00;
    assign cfg_ds_device_number             = 5'h00;
    assign cfg_ds_function_number           = 3'h0;
    assign m_axis_cq_tready                 = m_axis_cq_tready_bit;
    assign m_axis_rc_tready                 = m_axis_rc_tready_bit;
    assign m_axis_cq_rts                    = 1'b1;
    assign m_axis_rc_rts                    = 1'b1;

////////////////////////////////////////////////////////////////////////
// Link width onehot encoding (Spec width encoding)
//  expanded for x16
    wire [5:0] negotiatedwidth;
    assign negotiatedwidth = 6'h01 << cfg_negotiated_width;

  // Funtion level reset register.
    reg [7:0] cfg_vf_flr_func_num_reg;

  // Counter to cycle through the virtual fucntion function level resets.
  // This counter will just loop over the virtual functions. Ths should be
  // repliced by user logic to perform the actual function level reset as
  // needed.
    always @(posedge user_clk)
	if (user_reset)
		cfg_vf_flr_func_num_reg <= 8'd0;
	else
      // PF function level reset can be looped back directly.
      // VF function level reset must index into a one-hot array.
		cfg_vf_flr_func_num_reg <= cfg_vf_flr_func_num_reg + 1'b1;

  // assign function level reset outputs.
    assign cfg_vf_flr_func_num = cfg_vf_flr_func_num_reg;

    reg [25:0] user_clk_heartbeat = 26'd0;
    always @(posedge user_clk)
	if (!sys_rst)
		user_clk_heartbeat <= 26'd0;
	else
		user_clk_heartbeat <= user_clk_heartbeat + 1'b1;

OBUF led_0_obuf(
	.O(leds[0]),
	.I(sys_rst)
);
OBUF led_1_obuf(
	.O(leds[1]),
	.I(user_lnk_up)
);
OBUF led_2_obuf(
	.O(leds[2]),
	.I(user_clk_heartbeat[25])
);
OBUF led_3_obuf(
	.O(leds[3]),
	.I(cfg_current_speed[0])
);
OBUF led_4_obuf(
	.O(leds[4]),
	.I(cfg_current_speed[1])
);
OBUF led_5_obuf(
	.O(leds[5]),
	.I(cfg_negotiated_width[0])
);
OBUF led_6_obuf(
	.O(leds[6]),
	.I(cfg_negotiated_width[1])
);
OBUF led_7_obuf(
	.O(leds[7]),
	.I(cfg_negotiated_width[2])
);

EXERCISER_AXIST_1024 #(
	.TCQ                                 (TCQ),
	.C_DATA_WIDTH                        (C_DATA_WIDTH),
	.AXISTEN_IF_REQ_ALIGNMENT_MODE       (AXISTEN_IF_REQ_ALIGNMENT_MODE),
	.AXISTEN_IF_CMP_ALIGNMENT_MODE       (AXISTEN_IF_CMP_ALIGNMENT_MODE),
	.AXISTEN_IF_ENABLE_CLIENT_TAG        (AXISTEN_IF_ENABLE_CLIENT_TAG),
	.RQ_AVAIL_TAG_IDX                    (RQ_AVAIL_TAG_IDX),
	.RQ_AVAIL_TAG                        (RQ_AVAIL_TAG),
	.AXISTEN_IF_REQ_PARITY_CHECK         (AXISTEN_IF_REQ_PARITY_CHECK),
	.AXISTEN_IF_CMP_PARITY_CHECK         (AXISTEN_IF_CMP_PARITY_CHECK),
	.AXISTEN_IF_RQ_STRADDLE              (AXISTEN_IF_RQ_STRADDLE),
	.AXISTEN_IF_RC_STRADDLE              (AXISTEN_IF_RC_STRADDLE),
	.AXISTEN_IF_CQ_STRADDLE              (AXISTEN_IF_CQ_STRADDLE),
	.AXISTEN_IF_CC_STRADDLE              (AXISTEN_IF_CC_STRADDLE),
	.AXISTEN_IF_ENABLE_RX_MSG_INTFC      (AXISTEN_IF_ENABLE_RX_MSG_INTFC),
	.AXISTEN_IF_ENABLE_MSG_ROUTE         (AXISTEN_IF_ENABLE_MSG_ROUTE),
	.AXI4_CQ_TUSER_WIDTH                 (AXI4_CQ_TUSER_WIDTH),
	.AXI4_CC_TUSER_WIDTH                 (AXI4_CC_TUSER_WIDTH),
	.AXI4_RQ_TUSER_WIDTH                 (AXI4_RQ_TUSER_WIDTH),
	.AXI4_RC_TUSER_WIDTH                 (AXI4_RC_TUSER_WIDTH),
	.KEEP_WIDTH                          (KEEP_WIDTH)
) EXERCISER_AXIST_1024(
	.user_clk                                (user_clk),
	.reset_n                                 (user_reset_n),

	.user_lnk_up                             (user_lnk_up),
	.cfg_current_speed                       (cfg_current_speed),
	.cfg_max_payload                         (cfg_max_payload),
	.cfg_function_status                     (cfg_function_status),
	.cfg_err_cor                             (cfg_err_cor_in),

	.s_axis_cc_tdata                         (s_axis_cc_tdata),
	.s_axis_cc_tkeep                         (s_axis_cc_tkeep),
	.s_axis_cc_tlast                         (s_axis_cc_tlast),
	.s_axis_cc_tvalid                        (s_axis_cc_tvalid),
	.s_axis_cc_tuser                         (s_axis_cc_tuser),
	.s_axis_cc_tready                        (s_axis_cc_tready),
	.s_axis_rq_tvalid                        (s_axis_rq_tvalid),
	.s_axis_rq_tlast                         (s_axis_rq_tlast),
	.s_axis_rq_tuser                         (s_axis_rq_tuser),
	.s_axis_rq_tkeep                         (s_axis_rq_tkeep),
	.s_axis_rq_tdata                         (s_axis_rq_tdata),
	.s_axis_rq_tready                        (s_axis_rq_tready),

	.cfg_msg_transmit_done                   (cfg_msg_transmit_done),
	.cfg_msg_transmit                        (cfg_msg_transmit),
	.cfg_msg_transmit_type                   (cfg_msg_transmit_type),
	.cfg_msg_transmit_data                   (cfg_msg_transmit_data),
	.pcie_rq_tag                             (pcie_rq_tag),
	.pcie_rq_tag_vld                         (pcie_rq_tag_vld),
	.pcie_tfc_nph_av                         (pcie_tfc_nph_av),
	.pcie_tfc_npd_av                         (pcie_tfc_npd_av),
	.pcie_tfc_np_pl_empty                    (),
	.pcie_rq_seq_num0                        (pcie_rq_seq_num0),
	.pcie_rq_seq_num_vld0                    (pcie_rq_seq_num_vld0),
	.pcie_rq_seq_num1                        (pcie_rq_seq_num1),
	.pcie_rq_seq_num_vld1                    (pcie_rq_seq_num_vld1),

	.cfg_fc_ph                               (cfg_fc_ph),
	.cfg_fc_nph                              (cfg_fc_nph),
	.cfg_fc_cplh                             (cfg_fc_cplh),
	.cfg_fc_pd                               (cfg_fc_pd),
	.cfg_fc_npd                              (cfg_fc_npd),
	.cfg_fc_cpld                             (cfg_fc_cpld),
	.cfg_fc_sel                              (cfg_fc_sel),
	.cfg_err_fatal_out                       (cfg_err_fatal_out),
	.cfg_negotiated_width                    (negotiatedwidth),
	.cfg_max_read_req                        (cfg_max_read_req),
	.cfg_10b_tag_requester_enable            (cfg_10b_tag_requester_enable),

	.m_axis_cq_tvalid                        (m_axis_cq_tvalid),
	.m_axis_cq_tlast                         (m_axis_cq_tlast),
	.m_axis_cq_tuser                         (m_axis_cq_tuser),
	.m_axis_cq_tkeep                         (m_axis_cq_tkeep),
	.m_axis_cq_tdata                         (m_axis_cq_tdata),
	.m_axis_cq_tready                        (m_axis_cq_tready_bit),
	.pcie_cq_np_req_count                    (pcie_cq_np_req_count),
	.pcie_cq_np_req                          (pcie_cq_np_req),
	.m_axis_rc_tvalid                        (m_axis_rc_tvalid),
	.m_axis_rc_tlast                         (m_axis_rc_tlast),
	.m_axis_rc_tuser                         (m_axis_rc_tuser),
	.m_axis_rc_tkeep                         (m_axis_rc_tkeep),
	.m_axis_rc_tdata                         (m_axis_rc_tdata),
	.m_axis_rc_tready                        (m_axis_rc_tready_bit),

	.cfg_msg_received                        (cfg_msg_received),
	.cfg_msg_received_type                   (cfg_msg_received_type),
	.cfg_msg_data                            (cfg_msg_received_data),

	.interrupt_done                          (interrupt_done),
	.cfg_interrupt_sent                      (cfg_interrupt_sent),
	.cfg_interrupt_int                       (cfg_interrupt_int),
	.cfg_interrupt_msi_enable                (cfg_interrupt_msi_enable),
	.cfg_interrupt_msi_sent                  (cfg_interrupt_msi_sent),
	.cfg_interrupt_msi_fail                  (cfg_interrupt_msi_fail),
	.cfg_interrupt_msi_int                   (cfg_interrupt_msi_int),
	.cfg_interrupt_msi_function_number       (cfg_interrupt_msi_function_number),
	.cfg_interrupt_msi_select                (cfg_interrupt_msi_select),
	.cfg_interrupt_msix_enable               (cfg_interrupt_msix_enable),
	.cfg_interrupt_msix_mask                 (cfg_interrupt_msix_mask),
	.cfg_interrupt_msix_vf_enable            (cfg_interrupt_msix_vf_enable),
	.cfg_interrupt_msix_vf_mask              (cfg_interrupt_msix_vf_mask),
	.cfg_interrupt_msix_vec_pending_status   (cfg_interrupt_msix_vec_pending_status),
	.cfg_interrupt_msix_int                  (cfg_interrupt_msix_int),
	.cfg_interrupt_msix_vec_pending          (cfg_interrupt_msix_vec_pending),

	.cfg_power_state_change_interrupt        (cfg_power_state_change_interrupt),
	.cfg_power_state_change_ack              (cfg_power_state_change_ack)
    );

/*
axis_ila_2 flr_states (
  .clk(user_clk),        // input wire clk
  .probe0(cfg_hot_reset_in),  // input wire [0 : 0] probe0
  .probe1(cfg_flr_in_process),  // input wire [3 : 0] probe1
  .probe2(cfg_flr_done)  // input wire [3 : 0] probe2
);
*/
endmodule
