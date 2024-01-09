// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:versal_cips:3.3
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
(* DONT_TOUCH = "true" *)
module exerciser_versal_cips_0_0 (
  pcie1_user_clk,
  cpm_misc_irq,
  cpm_cor_irq,
  cpm_uncor_irq,
  cpm_irq0,
  cpm_irq1,
  pcie1_user_reset,
  pcie1_user_lnk_up,
  pcie1_cfg_control_err_cor_in,
  pcie1_cfg_control_err_uncor_in,
  pcie1_cfg_control_flr_done,
  pcie1_cfg_control_flr_done_function_number,
  pcie1_cfg_control_flr_in_process,
  pcie1_cfg_control_hot_reset_in,
  pcie1_cfg_control_hot_reset_out,
  pcie1_cfg_control_per_function_req,
  pcie1_cfg_control_per_function_number,
  pcie1_cfg_control_power_state_change_ack,
  pcie1_cfg_control_power_state_change_interrupt,
  pcie1_cfg_interrupt_sent,
  pcie1_cfg_interrupt_intx_vector,
  pcie1_cfg_interrupt_pending,
  pcie1_s_axis_rq_tready,
  pcie1_s_axis_rq_tdata,
  pcie1_s_axis_rq_tkeep,
  pcie1_s_axis_rq_tlast,
  pcie1_s_axis_rq_tuser,
  pcie1_s_axis_rq_tvalid,
  pcie1_s_axis_cc_tready,
  pcie1_s_axis_cc_tdata,
  pcie1_s_axis_cc_tkeep,
  pcie1_s_axis_cc_tlast,
  pcie1_s_axis_cc_tuser,
  pcie1_s_axis_cc_tvalid,
  pcie1_m_axis_rc_tdata,
  pcie1_m_axis_rc_tkeep,
  pcie1_m_axis_rc_tlast,
  pcie1_m_axis_rc_tready,
  pcie1_m_axis_rc_tuser,
  pcie1_m_axis_rc_tvalid,
  pcie1_m_axis_cq_tdata,
  pcie1_m_axis_cq_tkeep,
  pcie1_m_axis_cq_tlast,
  pcie1_m_axis_cq_tready,
  pcie1_m_axis_cq_tuser,
  pcie1_m_axis_cq_tvalid,
  pcie1_cfg_mgmt_read_en,
  pcie1_cfg_mgmt_read_write_done,
  pcie1_cfg_mgmt_write_en,
  pcie1_cfg_mgmt_debug_access,
  pcie1_cfg_mgmt_read_data,
  pcie1_cfg_mgmt_addr,
  pcie1_cfg_mgmt_byte_en,
  pcie1_cfg_mgmt_write_data,
  pcie1_cfg_mgmt_function_number,
  pcie1_cfg_msi_fail,
  pcie1_cfg_msi_sent,
  pcie1_cfg_msi_mask_update,
  pcie1_cfg_msi_data,
  pcie1_cfg_msi_enable,
  pcie1_cfg_msi_mmenable,
  pcie1_cfg_msi_tph_present,
  pcie1_cfg_msi_attr,
  pcie1_cfg_msi_select,
  pcie1_cfg_msi_tph_type,
  pcie1_cfg_msi_tph_st_tag,
  pcie1_cfg_msi_int_vector,
  pcie1_cfg_msi_pending_status,
  pcie1_cfg_msi_function_number,
  pcie1_cfg_msi_pending_status_data_enable,
  pcie1_cfg_msi_pending_status_function_num,
  pcie1_cfg_ext_read_received,
  pcie1_cfg_ext_write_received,
  pcie1_cfg_ext_write_data,
  pcie1_cfg_ext_read_data_valid,
  pcie1_cfg_ext_function_number,
  pcie1_cfg_ext_register_number,
  pcie1_cfg_ext_read_data,
  pcie1_cfg_ext_write_byte_enable,
  pcie1_cfg_fc_ph,
  pcie1_cfg_fc_pd,
  pcie1_cfg_fc_nph,
  pcie1_cfg_fc_npd,
  pcie1_cfg_fc_vc_sel,
  pcie1_cfg_fc_pd_scale,
  pcie1_cfg_fc_ph_scale,
  pcie1_cfg_fc_npd_scale,
  pcie1_cfg_fc_nph_scale,
  pcie1_cfg_fc_sel,
  pcie1_cfg_fc_cplh,
  pcie1_cfg_fc_cpld,
  pcie1_cfg_fc_cpld_scale,
  pcie1_cfg_fc_cplh_scale,
  pcie1_cfg_msg_tx_transmit_done,
  pcie1_cfg_msg_tx_transmit,
  pcie1_cfg_msg_tx_transmit_type,
  pcie1_cfg_msg_tx_transmit_data,
  pcie1_cfg_status_err_cor_out,
  pcie1_cfg_status_err_fatal_out,
  pcie1_cfg_status_err_nonfatal_out,
  pcie1_cfg_status_local_error_valid,
  pcie1_cfg_status_local_error_out,
  pcie1_cfg_status_pasid_enable,
  pcie1_cfg_status_pasid_control,
  pcie1_cfg_status_max_pasid_width_control,
  pcie1_cfg_status_pasid_exec_permission_enable,
  pcie1_cfg_status_pasid_privil_mode_enable,
  pcie1_cfg_status_rq_tag_vld0,
  pcie1_cfg_status_rq_tag_vld1,
  pcie1_cfg_status_rq_seq_num_vld0,
  pcie1_cfg_status_rq_seq_num_vld1,
  pcie1_cfg_status_rq_seq_num_vld2,
  pcie1_cfg_status_rq_seq_num_vld3,
  pcie1_cfg_status_rq_tag_av,
  pcie1_cfg_status_rq_tag0,
  pcie1_cfg_status_rq_tag1,
  pcie1_cfg_status_rq_seq_num0,
  pcie1_cfg_status_rq_seq_num1,
  pcie1_cfg_status_rq_seq_num2,
  pcie1_cfg_status_rq_seq_num3,
  pcie1_cfg_status_cq_np_req_count,
  pcie1_cfg_status_cq_np_req,
  pcie1_cfg_status_function_power_state,
  pcie1_cfg_status_atomic_requester_enable,
  pcie1_cfg_status_bus_number,
  pcie1_cfg_status_phy_link_down,
  pcie1_cfg_status_ext_tag_enable,
  pcie1_cfg_status_pl_status_change,
  pcie1_cfg_status_rcb_status,
  pcie1_cfg_status_ltssm_state,
  pcie1_cfg_status_max_payload,
  pcie1_cfg_status_tph_st_mode,
  pcie1_cfg_status_max_read_req,
  pcie1_cfg_status_current_speed,
  pcie1_cfg_status_rx_pm_state,
  pcie1_cfg_status_tx_pm_state,
  pcie1_cfg_status_phy_link_status,
  pcie1_cfg_status_function_status,
  pcie1_cfg_status_link_power_state,
  pcie1_cfg_status_negotiated_width,
  pcie1_cfg_status_tph_requester_enable,
  pcie1_cfg_status_10b_tag_requester_enable,
  pcie1_cfg_status_per_function_vld,
  pcie1_cfg_status_per_function_out,
  pcie1_cfg_status_wrreq_bme_vld,
  pcie1_cfg_status_wrreq_flr_vld,
  pcie1_cfg_status_wrreq_msi_vld,
  pcie1_cfg_status_wrreq_vfe_vld,
  pcie1_cfg_status_wrreq_msix_vld,
  pcie1_cfg_status_wrreq_out_value,
  pcie1_cfg_status_wrreq_function_number,
  pcie1_transmit_fc_npd_av,
  pcie1_transmit_fc_nph_av,
  pcie1_cfg_msg_recd_recd,
  pcie1_cfg_msg_recd_recd_data,
  pcie1_cfg_msg_recd_recd_type,
  PCIE1_GT_grx_n,
  PCIE1_GT_gtx_n,
  PCIE1_GT_grx_p,
  PCIE1_GT_gtx_p,
  gt_refclk1_clk_n,
  gt_refclk1_clk_p
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pcie1_user_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, ASSOCIATED_BUSIF pcie1_m_axis_cq:pcie1_m_axis_rc:pcie1_s_axis_cc:pcie1_s_axis_rq, ASSOCIATED_RESET pcie1_user_reset, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pcie1_user_clk CLK" *)
output wire pcie1_user_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_misc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_misc_irq INTERRUPT" *)
output wire cpm_misc_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_cor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_cor_irq INTERRUPT" *)
output wire cpm_cor_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_uncor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_uncor_irq INTERRUPT" *)
output wire cpm_uncor_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_irq0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_irq0 INTERRUPT" *)
input wire cpm_irq0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.cpm_irq1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.cpm_irq1 INTERRUPT" *)
input wire cpm_irq1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.pcie1_user_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.pcie1_user_reset RST" *)
output wire pcie1_user_reset;
output wire pcie1_user_lnk_up;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control err_cor_in" *)
input wire pcie1_cfg_control_err_cor_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control err_uncor_in" *)
input wire pcie1_cfg_control_err_uncor_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_done" *)
input wire pcie1_cfg_control_flr_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_done_function_number" *)
input wire [15 : 0] pcie1_cfg_control_flr_done_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_in_process" *)
output wire [3 : 0] pcie1_cfg_control_flr_in_process;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control hot_reset_in" *)
input wire pcie1_cfg_control_hot_reset_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control hot_reset_out" *)
output wire pcie1_cfg_control_hot_reset_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control per_function_req" *)
input wire pcie1_cfg_control_per_function_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control per_function_number" *)
input wire [15 : 0] pcie1_cfg_control_per_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control power_state_change_ack" *)
input wire pcie1_cfg_control_power_state_change_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control power_state_change_interrupt" *)
output wire pcie1_cfg_control_power_state_change_interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt SENT" *)
output wire pcie1_cfg_interrupt_sent;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt INTx_VECTOR" *)
input wire [3 : 0] pcie1_cfg_interrupt_intx_vector;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt PENDING" *)
input wire [15 : 0] pcie1_cfg_interrupt_pending;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TREADY" *)
output wire pcie1_s_axis_rq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TDATA" *)
input wire [1023 : 0] pcie1_s_axis_rq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TKEEP" *)
input wire [31 : 0] pcie1_s_axis_rq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TLAST" *)
input wire pcie1_s_axis_rq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TUSER" *)
input wire [372 : 0] pcie1_s_axis_rq_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_rq, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 373, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TVALID" *)
input wire pcie1_s_axis_rq_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TREADY" *)
output wire pcie1_s_axis_cc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TDATA" *)
input wire [1023 : 0] pcie1_s_axis_cc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TKEEP" *)
input wire [31 : 0] pcie1_s_axis_cc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TLAST" *)
input wire pcie1_s_axis_cc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TUSER" *)
input wire [164 : 0] pcie1_s_axis_cc_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_cc, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 165, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TVALID" *)
input wire pcie1_s_axis_cc_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TDATA" *)
output wire [1023 : 0] pcie1_m_axis_rc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TKEEP" *)
output wire [31 : 0] pcie1_m_axis_rc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TLAST" *)
output wire pcie1_m_axis_rc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TREADY" *)
input wire pcie1_m_axis_rc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TUSER" *)
output wire [336 : 0] pcie1_m_axis_rc_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_rc, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 337, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TVALID" *)
output wire pcie1_m_axis_rc_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TDATA" *)
output wire [1023 : 0] pcie1_m_axis_cq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TKEEP" *)
output wire [31 : 0] pcie1_m_axis_cq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TLAST" *)
output wire pcie1_m_axis_cq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TREADY" *)
input wire pcie1_m_axis_cq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TUSER" *)
output wire [464 : 0] pcie1_m_axis_cq_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_cq, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 465, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TVALID" *)
output wire pcie1_m_axis_cq_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_EN" *)
input wire pcie1_cfg_mgmt_read_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_WRITE_DONE" *)
output wire pcie1_cfg_mgmt_read_write_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt WRITE_EN" *)
input wire pcie1_cfg_mgmt_write_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt DEBUG_ACCESS" *)
input wire pcie1_cfg_mgmt_debug_access;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_DATA" *)
output wire [31 : 0] pcie1_cfg_mgmt_read_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt ADDR" *)
input wire [9 : 0] pcie1_cfg_mgmt_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt BYTE_EN" *)
input wire [3 : 0] pcie1_cfg_mgmt_byte_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt WRITE_DATA" *)
input wire [31 : 0] pcie1_cfg_mgmt_write_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt FUNCTION_NUMBER" *)
input wire [15 : 0] pcie1_cfg_mgmt_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi fail" *)
output wire pcie1_cfg_msi_fail;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi sent" *)
output wire pcie1_cfg_msi_sent;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mask_update" *)
output wire pcie1_cfg_msi_mask_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi data" *)
output wire [31 : 0] pcie1_cfg_msi_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi enable" *)
output wire pcie1_cfg_msi_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mmenable" *)
output wire [2 : 0] pcie1_cfg_msi_mmenable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_present" *)
input wire pcie1_cfg_msi_tph_present;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi attr" *)
input wire [2 : 0] pcie1_cfg_msi_attr;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi select" *)
input wire [3 : 0] pcie1_cfg_msi_select;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_type" *)
input wire [1 : 0] pcie1_cfg_msi_tph_type;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_st_tag" *)
input wire [7 : 0] pcie1_cfg_msi_tph_st_tag;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi int_vector" *)
input wire [31 : 0] pcie1_cfg_msi_int_vector;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status" *)
input wire [31 : 0] pcie1_cfg_msi_pending_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi function_number" *)
input wire [15 : 0] pcie1_cfg_msi_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_data_enable" *)
input wire pcie1_cfg_msi_pending_status_data_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_function_num" *)
input wire [3 : 0] pcie1_cfg_msi_pending_status_function_num;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_received" *)
output wire pcie1_cfg_ext_read_received;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_received" *)
output wire pcie1_cfg_ext_write_received;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_data" *)
output wire [31 : 0] pcie1_cfg_ext_write_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_data_valid" *)
input wire pcie1_cfg_ext_read_data_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext function_number" *)
output wire [15 : 0] pcie1_cfg_ext_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext register_number" *)
output wire [9 : 0] pcie1_cfg_ext_register_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_data" *)
input wire [31 : 0] pcie1_cfg_ext_read_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_byte_enable" *)
output wire [3 : 0] pcie1_cfg_ext_write_byte_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PH" *)
output wire [7 : 0] pcie1_cfg_fc_ph;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PD" *)
output wire [11 : 0] pcie1_cfg_fc_pd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPH" *)
output wire [7 : 0] pcie1_cfg_fc_nph;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPD" *)
output wire [11 : 0] pcie1_cfg_fc_npd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc VC_SEL" *)
input wire pcie1_cfg_fc_vc_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PD_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_pd_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PH_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_ph_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPD_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_npd_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPH_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_nph_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc SEL" *)
input wire [2 : 0] pcie1_cfg_fc_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLH" *)
output wire [7 : 0] pcie1_cfg_fc_cplh;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLD" *)
output wire [11 : 0] pcie1_cfg_fc_cpld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLD_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_cpld_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLH_SCALE" *)
output wire [1 : 0] pcie1_cfg_fc_cplh_scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_DONE" *)
output wire pcie1_cfg_msg_tx_transmit_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT" *)
input wire pcie1_cfg_msg_tx_transmit;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_TYPE" *)
input wire [2 : 0] pcie1_cfg_msg_tx_transmit_type;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_DATA" *)
input wire [31 : 0] pcie1_cfg_msg_tx_transmit_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_cor_out" *)
output wire pcie1_cfg_status_err_cor_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_fatal_out" *)
output wire pcie1_cfg_status_err_fatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_nonfatal_out" *)
output wire pcie1_cfg_status_err_nonfatal_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status local_error_valid" *)
output wire pcie1_cfg_status_local_error_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status local_error_out" *)
output wire [4 : 0] pcie1_cfg_status_local_error_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_enable" *)
output wire pcie1_cfg_status_pasid_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_control" *)
output wire [47 : 0] pcie1_cfg_status_pasid_control;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_pasid_width_control" *)
output wire [79 : 0] pcie1_cfg_status_max_pasid_width_control;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_exec_permission_enable" *)
output wire pcie1_cfg_status_pasid_exec_permission_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_privil_mode_enable" *)
output wire pcie1_cfg_status_pasid_privil_mode_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_vld0" *)
output wire [1 : 0] pcie1_cfg_status_rq_tag_vld0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_vld1" *)
output wire [1 : 0] pcie1_cfg_status_rq_tag_vld1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld0" *)
output wire pcie1_cfg_status_rq_seq_num_vld0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld1" *)
output wire pcie1_cfg_status_rq_seq_num_vld1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld2" *)
output wire pcie1_cfg_status_rq_seq_num_vld2;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld3" *)
output wire pcie1_cfg_status_rq_seq_num_vld3;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_av" *)
output wire [3 : 0] pcie1_cfg_status_rq_tag_av;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag0" *)
output wire [19 : 0] pcie1_cfg_status_rq_tag0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag1" *)
output wire [19 : 0] pcie1_cfg_status_rq_tag1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num0" *)
output wire [5 : 0] pcie1_cfg_status_rq_seq_num0;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num1" *)
output wire [5 : 0] pcie1_cfg_status_rq_seq_num1;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num2" *)
output wire [5 : 0] pcie1_cfg_status_rq_seq_num2;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num3" *)
output wire [5 : 0] pcie1_cfg_status_rq_seq_num3;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status cq_np_req_count" *)
output wire [5 : 0] pcie1_cfg_status_cq_np_req_count;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status cq_np_req" *)
input wire [1 : 0] pcie1_cfg_status_cq_np_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status function_power_state" *)
output wire [2 : 0] pcie1_cfg_status_function_power_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status atomic_requester_enable" *)
output wire pcie1_cfg_status_atomic_requester_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status bus_number" *)
output wire [7 : 0] pcie1_cfg_status_bus_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status phy_link_down" *)
output wire pcie1_cfg_status_phy_link_down;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status ext_tag_enable" *)
output wire pcie1_cfg_status_ext_tag_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pl_status_change" *)
output wire pcie1_cfg_status_pl_status_change;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rcb_status" *)
output wire pcie1_cfg_status_rcb_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status ltssm_state" *)
output wire [5 : 0] pcie1_cfg_status_ltssm_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_payload" *)
output wire [1 : 0] pcie1_cfg_status_max_payload;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tph_st_mode" *)
output wire [11 : 0] pcie1_cfg_status_tph_st_mode;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_read_req" *)
output wire [2 : 0] pcie1_cfg_status_max_read_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status current_speed" *)
output wire [2 : 0] pcie1_cfg_status_current_speed;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rx_pm_state" *)
output wire [1 : 0] pcie1_cfg_status_rx_pm_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tx_pm_state" *)
output wire [1 : 0] pcie1_cfg_status_tx_pm_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status phy_link_status" *)
output wire [1 : 0] pcie1_cfg_status_phy_link_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status function_status" *)
output wire [3 : 0] pcie1_cfg_status_function_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status link_power_state" *)
output wire [1 : 0] pcie1_cfg_status_link_power_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status negotiated_width" *)
output wire [2 : 0] pcie1_cfg_status_negotiated_width;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tph_requester_enable" *)
output wire [3 : 0] pcie1_cfg_status_tph_requester_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status 10b_tag_requester_enable" *)
output wire pcie1_cfg_status_10b_tag_requester_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status per_function_vld" *)
output wire pcie1_cfg_status_per_function_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status per_function_out" *)
output wire [23 : 0] pcie1_cfg_status_per_function_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_bme_vld" *)
output wire pcie1_cfg_status_wrreq_bme_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_flr_vld" *)
output wire pcie1_cfg_status_wrreq_flr_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_msi_vld" *)
output wire pcie1_cfg_status_wrreq_msi_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_vfe_vld" *)
output wire pcie1_cfg_status_wrreq_vfe_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_msix_vld" *)
output wire pcie1_cfg_status_wrreq_msix_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_out_value" *)
output wire [3 : 0] pcie1_cfg_status_wrreq_out_value;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_function_number" *)
output wire [15 : 0] pcie1_cfg_status_wrreq_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc npd_av" *)
output wire [3 : 0] pcie1_transmit_fc_npd_av;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc nph_av" *)
output wire [3 : 0] pcie1_transmit_fc_nph_av;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd" *)
output wire pcie1_cfg_msg_recd_recd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd_data" *)
output wire [7 : 0] pcie1_cfg_msg_recd_recd_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd_type" *)
output wire [4 : 0] pcie1_cfg_msg_recd_recd_type;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *)
input wire [7 : 0] PCIE1_GT_grx_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *)
output wire [7 : 0] PCIE1_GT_gtx_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *)
input wire [7 : 0] PCIE1_GT_grx_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *)
output wire [7 : 0] PCIE1_GT_gtx_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *)
input wire gt_refclk1_clk_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *)
input wire gt_refclk1_clk_p;

  bd_6f6a inst (
    .pcie1_user_clk(pcie1_user_clk),
    .cpm_misc_irq(cpm_misc_irq),
    .cpm_cor_irq(cpm_cor_irq),
    .cpm_uncor_irq(cpm_uncor_irq),
    .cpm_irq0(cpm_irq0),
    .cpm_irq1(cpm_irq1),
    .pcie1_user_reset(pcie1_user_reset),
    .pcie1_user_lnk_up(pcie1_user_lnk_up),
    .pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in),
    .pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in),
    .pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done),
    .pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number),
    .pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process),
    .pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in),
    .pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out),
    .pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req),
    .pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number),
    .pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack),
    .pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt),
    .pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent),
    .pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector),
    .pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending),
    .pcie1_s_axis_rq_tready(pcie1_s_axis_rq_tready),
    .pcie1_s_axis_rq_tdata(pcie1_s_axis_rq_tdata),
    .pcie1_s_axis_rq_tkeep(pcie1_s_axis_rq_tkeep),
    .pcie1_s_axis_rq_tlast(pcie1_s_axis_rq_tlast),
    .pcie1_s_axis_rq_tuser(pcie1_s_axis_rq_tuser),
    .pcie1_s_axis_rq_tvalid(pcie1_s_axis_rq_tvalid),
    .pcie1_s_axis_cc_tready(pcie1_s_axis_cc_tready),
    .pcie1_s_axis_cc_tdata(pcie1_s_axis_cc_tdata),
    .pcie1_s_axis_cc_tkeep(pcie1_s_axis_cc_tkeep),
    .pcie1_s_axis_cc_tlast(pcie1_s_axis_cc_tlast),
    .pcie1_s_axis_cc_tuser(pcie1_s_axis_cc_tuser),
    .pcie1_s_axis_cc_tvalid(pcie1_s_axis_cc_tvalid),
    .pcie1_m_axis_rc_tdata(pcie1_m_axis_rc_tdata),
    .pcie1_m_axis_rc_tkeep(pcie1_m_axis_rc_tkeep),
    .pcie1_m_axis_rc_tlast(pcie1_m_axis_rc_tlast),
    .pcie1_m_axis_rc_tready(pcie1_m_axis_rc_tready),
    .pcie1_m_axis_rc_tuser(pcie1_m_axis_rc_tuser),
    .pcie1_m_axis_rc_tvalid(pcie1_m_axis_rc_tvalid),
    .pcie1_m_axis_cq_tdata(pcie1_m_axis_cq_tdata),
    .pcie1_m_axis_cq_tkeep(pcie1_m_axis_cq_tkeep),
    .pcie1_m_axis_cq_tlast(pcie1_m_axis_cq_tlast),
    .pcie1_m_axis_cq_tready(pcie1_m_axis_cq_tready),
    .pcie1_m_axis_cq_tuser(pcie1_m_axis_cq_tuser),
    .pcie1_m_axis_cq_tvalid(pcie1_m_axis_cq_tvalid),
    .pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en),
    .pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done),
    .pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en),
    .pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access),
    .pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data),
    .pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr),
    .pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en),
    .pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data),
    .pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number),
    .pcie1_cfg_msi_fail(pcie1_cfg_msi_fail),
    .pcie1_cfg_msi_sent(pcie1_cfg_msi_sent),
    .pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update),
    .pcie1_cfg_msi_data(pcie1_cfg_msi_data),
    .pcie1_cfg_msi_enable(pcie1_cfg_msi_enable),
    .pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable),
    .pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present),
    .pcie1_cfg_msi_attr(pcie1_cfg_msi_attr),
    .pcie1_cfg_msi_select(pcie1_cfg_msi_select),
    .pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type),
    .pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag),
    .pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector),
    .pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status),
    .pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number),
    .pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable),
    .pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num),
    .pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received),
    .pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received),
    .pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data),
    .pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid),
    .pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number),
    .pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number),
    .pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data),
    .pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable),
    .pcie1_cfg_fc_ph(pcie1_cfg_fc_ph),
    .pcie1_cfg_fc_pd(pcie1_cfg_fc_pd),
    .pcie1_cfg_fc_nph(pcie1_cfg_fc_nph),
    .pcie1_cfg_fc_npd(pcie1_cfg_fc_npd),
    .pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel),
    .pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale),
    .pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale),
    .pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale),
    .pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale),
    .pcie1_cfg_fc_sel(pcie1_cfg_fc_sel),
    .pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh),
    .pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld),
    .pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale),
    .pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale),
    .pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done),
    .pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit),
    .pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type),
    .pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data),
    .pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out),
    .pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out),
    .pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out),
    .pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid),
    .pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out),
    .pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable),
    .pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control),
    .pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control),
    .pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable),
    .pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable),
    .pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0),
    .pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1),
    .pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0),
    .pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1),
    .pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2),
    .pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3),
    .pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av),
    .pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0),
    .pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1),
    .pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0),
    .pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1),
    .pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2),
    .pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3),
    .pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count),
    .pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req),
    .pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state),
    .pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable),
    .pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number),
    .pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down),
    .pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable),
    .pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change),
    .pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status),
    .pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state),
    .pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload),
    .pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode),
    .pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req),
    .pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed),
    .pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state),
    .pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state),
    .pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status),
    .pcie1_cfg_status_function_status(pcie1_cfg_status_function_status),
    .pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state),
    .pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width),
    .pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable),
    .pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable),
    .pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld),
    .pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out),
    .pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld),
    .pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld),
    .pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld),
    .pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld),
    .pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld),
    .pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value),
    .pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number),
    .pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av),
    .pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av),
    .pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd),
    .pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data),
    .pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type),
    .PCIE1_GT_grx_n(PCIE1_GT_grx_n),
    .PCIE1_GT_gtx_n(PCIE1_GT_gtx_n),
    .PCIE1_GT_grx_p(PCIE1_GT_grx_p),
    .PCIE1_GT_gtx_p(PCIE1_GT_gtx_p),
    .gt_refclk1_clk_n(gt_refclk1_clk_n),
    .gt_refclk1_clk_p(gt_refclk1_clk_p)
  );
endmodule
