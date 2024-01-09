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


//------------------------------------------------------------------------------------
// Filename:    exerciser_versal_cips_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module exerciser_versal_cips_0_0 (
  output bit_as_bool pcie1_user_clk,
  output bit_as_bool cpm_misc_irq,
  output bit_as_bool cpm_cor_irq,
  output bit_as_bool cpm_uncor_irq,
  input bit_as_bool cpm_irq0,
  input bit_as_bool cpm_irq1,
  output bit_as_bool pcie1_user_reset,
  output bit_as_bool pcie1_user_lnk_up,
  input bit_as_bool pcie1_cfg_control_err_cor_in,
  input bit_as_bool pcie1_cfg_control_err_uncor_in,
  input bit_as_bool pcie1_cfg_control_flr_done,
  input bit [15 : 0] pcie1_cfg_control_flr_done_function_number,
  output bit [3 : 0] pcie1_cfg_control_flr_in_process,
  input bit_as_bool pcie1_cfg_control_hot_reset_in,
  output bit_as_bool pcie1_cfg_control_hot_reset_out,
  input bit_as_bool pcie1_cfg_control_per_function_req,
  input bit [15 : 0] pcie1_cfg_control_per_function_number,
  input bit_as_bool pcie1_cfg_control_power_state_change_ack,
  output bit_as_bool pcie1_cfg_control_power_state_change_interrupt,
  output bit_as_bool pcie1_cfg_interrupt_sent,
  input bit [3 : 0] pcie1_cfg_interrupt_intx_vector,
  input bit [15 : 0] pcie1_cfg_interrupt_pending,
  output bit_as_bool pcie1_s_axis_rq_tready,
  input bit [1023 : 0] pcie1_s_axis_rq_tdata,
  input bit [31 : 0] pcie1_s_axis_rq_tkeep,
  input bit_as_bool pcie1_s_axis_rq_tlast,
  input bit [372 : 0] pcie1_s_axis_rq_tuser,
  input bit_as_bool pcie1_s_axis_rq_tvalid,
  output bit_as_bool pcie1_s_axis_cc_tready,
  input bit [1023 : 0] pcie1_s_axis_cc_tdata,
  input bit [31 : 0] pcie1_s_axis_cc_tkeep,
  input bit_as_bool pcie1_s_axis_cc_tlast,
  input bit [164 : 0] pcie1_s_axis_cc_tuser,
  input bit_as_bool pcie1_s_axis_cc_tvalid,
  output bit [1023 : 0] pcie1_m_axis_rc_tdata,
  output bit [31 : 0] pcie1_m_axis_rc_tkeep,
  output bit_as_bool pcie1_m_axis_rc_tlast,
  input bit_as_bool pcie1_m_axis_rc_tready,
  output bit [336 : 0] pcie1_m_axis_rc_tuser,
  output bit_as_bool pcie1_m_axis_rc_tvalid,
  output bit [1023 : 0] pcie1_m_axis_cq_tdata,
  output bit [31 : 0] pcie1_m_axis_cq_tkeep,
  output bit_as_bool pcie1_m_axis_cq_tlast,
  input bit_as_bool pcie1_m_axis_cq_tready,
  output bit [464 : 0] pcie1_m_axis_cq_tuser,
  output bit_as_bool pcie1_m_axis_cq_tvalid,
  input bit_as_bool pcie1_cfg_mgmt_read_en,
  output bit_as_bool pcie1_cfg_mgmt_read_write_done,
  input bit_as_bool pcie1_cfg_mgmt_write_en,
  input bit_as_bool pcie1_cfg_mgmt_debug_access,
  output bit [31 : 0] pcie1_cfg_mgmt_read_data,
  input bit [9 : 0] pcie1_cfg_mgmt_addr,
  input bit [3 : 0] pcie1_cfg_mgmt_byte_en,
  input bit [31 : 0] pcie1_cfg_mgmt_write_data,
  input bit [15 : 0] pcie1_cfg_mgmt_function_number,
  output bit_as_bool pcie1_cfg_msi_fail,
  output bit_as_bool pcie1_cfg_msi_sent,
  output bit_as_bool pcie1_cfg_msi_mask_update,
  output bit [31 : 0] pcie1_cfg_msi_data,
  output bit_as_bool pcie1_cfg_msi_enable,
  output bit [2 : 0] pcie1_cfg_msi_mmenable,
  input bit_as_bool pcie1_cfg_msi_tph_present,
  input bit [2 : 0] pcie1_cfg_msi_attr,
  input bit [3 : 0] pcie1_cfg_msi_select,
  input bit [1 : 0] pcie1_cfg_msi_tph_type,
  input bit [7 : 0] pcie1_cfg_msi_tph_st_tag,
  input bit [31 : 0] pcie1_cfg_msi_int_vector,
  input bit [31 : 0] pcie1_cfg_msi_pending_status,
  input bit [15 : 0] pcie1_cfg_msi_function_number,
  input bit_as_bool pcie1_cfg_msi_pending_status_data_enable,
  input bit [3 : 0] pcie1_cfg_msi_pending_status_function_num,
  output bit_as_bool pcie1_cfg_ext_read_received,
  output bit_as_bool pcie1_cfg_ext_write_received,
  output bit [31 : 0] pcie1_cfg_ext_write_data,
  input bit_as_bool pcie1_cfg_ext_read_data_valid,
  output bit [15 : 0] pcie1_cfg_ext_function_number,
  output bit [9 : 0] pcie1_cfg_ext_register_number,
  input bit [31 : 0] pcie1_cfg_ext_read_data,
  output bit [3 : 0] pcie1_cfg_ext_write_byte_enable,
  output bit [7 : 0] pcie1_cfg_fc_ph,
  output bit [11 : 0] pcie1_cfg_fc_pd,
  output bit [7 : 0] pcie1_cfg_fc_nph,
  output bit [11 : 0] pcie1_cfg_fc_npd,
  input bit_as_bool pcie1_cfg_fc_vc_sel,
  output bit [1 : 0] pcie1_cfg_fc_pd_scale,
  output bit [1 : 0] pcie1_cfg_fc_ph_scale,
  output bit [1 : 0] pcie1_cfg_fc_npd_scale,
  output bit [1 : 0] pcie1_cfg_fc_nph_scale,
  input bit [2 : 0] pcie1_cfg_fc_sel,
  output bit [7 : 0] pcie1_cfg_fc_cplh,
  output bit [11 : 0] pcie1_cfg_fc_cpld,
  output bit [1 : 0] pcie1_cfg_fc_cpld_scale,
  output bit [1 : 0] pcie1_cfg_fc_cplh_scale,
  output bit_as_bool pcie1_cfg_msg_tx_transmit_done,
  input bit_as_bool pcie1_cfg_msg_tx_transmit,
  input bit [2 : 0] pcie1_cfg_msg_tx_transmit_type,
  input bit [31 : 0] pcie1_cfg_msg_tx_transmit_data,
  output bit_as_bool pcie1_cfg_status_err_cor_out,
  output bit_as_bool pcie1_cfg_status_err_fatal_out,
  output bit_as_bool pcie1_cfg_status_err_nonfatal_out,
  output bit_as_bool pcie1_cfg_status_local_error_valid,
  output bit [4 : 0] pcie1_cfg_status_local_error_out,
  output bit_as_bool pcie1_cfg_status_pasid_enable,
  output bit [47 : 0] pcie1_cfg_status_pasid_control,
  output bit [79 : 0] pcie1_cfg_status_max_pasid_width_control,
  output bit_as_bool pcie1_cfg_status_pasid_exec_permission_enable,
  output bit_as_bool pcie1_cfg_status_pasid_privil_mode_enable,
  output bit [1 : 0] pcie1_cfg_status_rq_tag_vld0,
  output bit [1 : 0] pcie1_cfg_status_rq_tag_vld1,
  output bit_as_bool pcie1_cfg_status_rq_seq_num_vld0,
  output bit_as_bool pcie1_cfg_status_rq_seq_num_vld1,
  output bit_as_bool pcie1_cfg_status_rq_seq_num_vld2,
  output bit_as_bool pcie1_cfg_status_rq_seq_num_vld3,
  output bit [3 : 0] pcie1_cfg_status_rq_tag_av,
  output bit [19 : 0] pcie1_cfg_status_rq_tag0,
  output bit [19 : 0] pcie1_cfg_status_rq_tag1,
  output bit [5 : 0] pcie1_cfg_status_rq_seq_num0,
  output bit [5 : 0] pcie1_cfg_status_rq_seq_num1,
  output bit [5 : 0] pcie1_cfg_status_rq_seq_num2,
  output bit [5 : 0] pcie1_cfg_status_rq_seq_num3,
  output bit [5 : 0] pcie1_cfg_status_cq_np_req_count,
  input bit [1 : 0] pcie1_cfg_status_cq_np_req,
  output bit [2 : 0] pcie1_cfg_status_function_power_state,
  output bit_as_bool pcie1_cfg_status_atomic_requester_enable,
  output bit [7 : 0] pcie1_cfg_status_bus_number,
  output bit_as_bool pcie1_cfg_status_phy_link_down,
  output bit_as_bool pcie1_cfg_status_ext_tag_enable,
  output bit_as_bool pcie1_cfg_status_pl_status_change,
  output bit_as_bool pcie1_cfg_status_rcb_status,
  output bit [5 : 0] pcie1_cfg_status_ltssm_state,
  output bit [1 : 0] pcie1_cfg_status_max_payload,
  output bit [11 : 0] pcie1_cfg_status_tph_st_mode,
  output bit [2 : 0] pcie1_cfg_status_max_read_req,
  output bit [2 : 0] pcie1_cfg_status_current_speed,
  output bit [1 : 0] pcie1_cfg_status_rx_pm_state,
  output bit [1 : 0] pcie1_cfg_status_tx_pm_state,
  output bit [1 : 0] pcie1_cfg_status_phy_link_status,
  output bit [3 : 0] pcie1_cfg_status_function_status,
  output bit [1 : 0] pcie1_cfg_status_link_power_state,
  output bit [2 : 0] pcie1_cfg_status_negotiated_width,
  output bit [3 : 0] pcie1_cfg_status_tph_requester_enable,
  output bit_as_bool pcie1_cfg_status_10b_tag_requester_enable,
  output bit_as_bool pcie1_cfg_status_per_function_vld,
  output bit [23 : 0] pcie1_cfg_status_per_function_out,
  output bit_as_bool pcie1_cfg_status_wrreq_bme_vld,
  output bit_as_bool pcie1_cfg_status_wrreq_flr_vld,
  output bit_as_bool pcie1_cfg_status_wrreq_msi_vld,
  output bit_as_bool pcie1_cfg_status_wrreq_vfe_vld,
  output bit_as_bool pcie1_cfg_status_wrreq_msix_vld,
  output bit [3 : 0] pcie1_cfg_status_wrreq_out_value,
  output bit [15 : 0] pcie1_cfg_status_wrreq_function_number,
  output bit [3 : 0] pcie1_transmit_fc_npd_av,
  output bit [3 : 0] pcie1_transmit_fc_nph_av,
  output bit_as_bool pcie1_cfg_msg_recd_recd,
  output bit [7 : 0] pcie1_cfg_msg_recd_recd_data,
  output bit [4 : 0] pcie1_cfg_msg_recd_recd_type,
  input bit [7 : 0] PCIE1_GT_grx_n,
  output bit [7 : 0] PCIE1_GT_gtx_n,
  input bit [7 : 0] PCIE1_GT_grx_p,
  output bit [7 : 0] PCIE1_GT_gtx_p,
  input bit_as_bool gt_refclk1_clk_n,
  input bit_as_bool gt_refclk1_clk_p
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module exerciser_versal_cips_0_0 (pcie1_user_clk,cpm_misc_irq,cpm_cor_irq,cpm_uncor_irq,cpm_irq0,cpm_irq1,pcie1_user_reset,pcie1_user_lnk_up,pcie1_cfg_control_err_cor_in,pcie1_cfg_control_err_uncor_in,pcie1_cfg_control_flr_done,pcie1_cfg_control_flr_done_function_number,pcie1_cfg_control_flr_in_process,pcie1_cfg_control_hot_reset_in,pcie1_cfg_control_hot_reset_out,pcie1_cfg_control_per_function_req,pcie1_cfg_control_per_function_number,pcie1_cfg_control_power_state_change_ack,pcie1_cfg_control_power_state_change_interrupt,pcie1_cfg_interrupt_sent,pcie1_cfg_interrupt_intx_vector,pcie1_cfg_interrupt_pending,pcie1_s_axis_rq_tready,pcie1_s_axis_rq_tdata,pcie1_s_axis_rq_tkeep,pcie1_s_axis_rq_tlast,pcie1_s_axis_rq_tuser,pcie1_s_axis_rq_tvalid,pcie1_s_axis_cc_tready,pcie1_s_axis_cc_tdata,pcie1_s_axis_cc_tkeep,pcie1_s_axis_cc_tlast,pcie1_s_axis_cc_tuser,pcie1_s_axis_cc_tvalid,pcie1_m_axis_rc_tdata,pcie1_m_axis_rc_tkeep,pcie1_m_axis_rc_tlast,pcie1_m_axis_rc_tready,pcie1_m_axis_rc_tuser,pcie1_m_axis_rc_tvalid,pcie1_m_axis_cq_tdata,pcie1_m_axis_cq_tkeep,pcie1_m_axis_cq_tlast,pcie1_m_axis_cq_tready,pcie1_m_axis_cq_tuser,pcie1_m_axis_cq_tvalid,pcie1_cfg_mgmt_read_en,pcie1_cfg_mgmt_read_write_done,pcie1_cfg_mgmt_write_en,pcie1_cfg_mgmt_debug_access,pcie1_cfg_mgmt_read_data,pcie1_cfg_mgmt_addr,pcie1_cfg_mgmt_byte_en,pcie1_cfg_mgmt_write_data,pcie1_cfg_mgmt_function_number,pcie1_cfg_msi_fail,pcie1_cfg_msi_sent,pcie1_cfg_msi_mask_update,pcie1_cfg_msi_data,pcie1_cfg_msi_enable,pcie1_cfg_msi_mmenable,pcie1_cfg_msi_tph_present,pcie1_cfg_msi_attr,pcie1_cfg_msi_select,pcie1_cfg_msi_tph_type,pcie1_cfg_msi_tph_st_tag,pcie1_cfg_msi_int_vector,pcie1_cfg_msi_pending_status,pcie1_cfg_msi_function_number,pcie1_cfg_msi_pending_status_data_enable,pcie1_cfg_msi_pending_status_function_num,pcie1_cfg_ext_read_received,pcie1_cfg_ext_write_received,pcie1_cfg_ext_write_data,pcie1_cfg_ext_read_data_valid,pcie1_cfg_ext_function_number,pcie1_cfg_ext_register_number,pcie1_cfg_ext_read_data,pcie1_cfg_ext_write_byte_enable,pcie1_cfg_fc_ph,pcie1_cfg_fc_pd,pcie1_cfg_fc_nph,pcie1_cfg_fc_npd,pcie1_cfg_fc_vc_sel,pcie1_cfg_fc_pd_scale,pcie1_cfg_fc_ph_scale,pcie1_cfg_fc_npd_scale,pcie1_cfg_fc_nph_scale,pcie1_cfg_fc_sel,pcie1_cfg_fc_cplh,pcie1_cfg_fc_cpld,pcie1_cfg_fc_cpld_scale,pcie1_cfg_fc_cplh_scale,pcie1_cfg_msg_tx_transmit_done,pcie1_cfg_msg_tx_transmit,pcie1_cfg_msg_tx_transmit_type,pcie1_cfg_msg_tx_transmit_data,pcie1_cfg_status_err_cor_out,pcie1_cfg_status_err_fatal_out,pcie1_cfg_status_err_nonfatal_out,pcie1_cfg_status_local_error_valid,pcie1_cfg_status_local_error_out,pcie1_cfg_status_pasid_enable,pcie1_cfg_status_pasid_control,pcie1_cfg_status_max_pasid_width_control,pcie1_cfg_status_pasid_exec_permission_enable,pcie1_cfg_status_pasid_privil_mode_enable,pcie1_cfg_status_rq_tag_vld0,pcie1_cfg_status_rq_tag_vld1,pcie1_cfg_status_rq_seq_num_vld0,pcie1_cfg_status_rq_seq_num_vld1,pcie1_cfg_status_rq_seq_num_vld2,pcie1_cfg_status_rq_seq_num_vld3,pcie1_cfg_status_rq_tag_av,pcie1_cfg_status_rq_tag0,pcie1_cfg_status_rq_tag1,pcie1_cfg_status_rq_seq_num0,pcie1_cfg_status_rq_seq_num1,pcie1_cfg_status_rq_seq_num2,pcie1_cfg_status_rq_seq_num3,pcie1_cfg_status_cq_np_req_count,pcie1_cfg_status_cq_np_req,pcie1_cfg_status_function_power_state,pcie1_cfg_status_atomic_requester_enable,pcie1_cfg_status_bus_number,pcie1_cfg_status_phy_link_down,pcie1_cfg_status_ext_tag_enable,pcie1_cfg_status_pl_status_change,pcie1_cfg_status_rcb_status,pcie1_cfg_status_ltssm_state,pcie1_cfg_status_max_payload,pcie1_cfg_status_tph_st_mode,pcie1_cfg_status_max_read_req,pcie1_cfg_status_current_speed,pcie1_cfg_status_rx_pm_state,pcie1_cfg_status_tx_pm_state,pcie1_cfg_status_phy_link_status,pcie1_cfg_status_function_status,pcie1_cfg_status_link_power_state,pcie1_cfg_status_negotiated_width,pcie1_cfg_status_tph_requester_enable,pcie1_cfg_status_10b_tag_requester_enable,pcie1_cfg_status_per_function_vld,pcie1_cfg_status_per_function_out,pcie1_cfg_status_wrreq_bme_vld,pcie1_cfg_status_wrreq_flr_vld,pcie1_cfg_status_wrreq_msi_vld,pcie1_cfg_status_wrreq_vfe_vld,pcie1_cfg_status_wrreq_msix_vld,pcie1_cfg_status_wrreq_out_value,pcie1_cfg_status_wrreq_function_number,pcie1_transmit_fc_npd_av,pcie1_transmit_fc_nph_av,pcie1_cfg_msg_recd_recd,pcie1_cfg_msg_recd_recd_data,pcie1_cfg_msg_recd_recd_type,PCIE1_GT_grx_n,PCIE1_GT_gtx_n,PCIE1_GT_grx_p,PCIE1_GT_gtx_p,gt_refclk1_clk_n,gt_refclk1_clk_p)
(* integer foreign = "SystemC";
*);
  output wire pcie1_user_clk;
  output wire cpm_misc_irq;
  output wire cpm_cor_irq;
  output wire cpm_uncor_irq;
  input bit cpm_irq0;
  input bit cpm_irq1;
  output wire pcie1_user_reset;
  output wire pcie1_user_lnk_up;
  input bit pcie1_cfg_control_err_cor_in;
  input bit pcie1_cfg_control_err_uncor_in;
  input bit pcie1_cfg_control_flr_done;
  input bit [15 : 0] pcie1_cfg_control_flr_done_function_number;
  output wire [3 : 0] pcie1_cfg_control_flr_in_process;
  input bit pcie1_cfg_control_hot_reset_in;
  output wire pcie1_cfg_control_hot_reset_out;
  input bit pcie1_cfg_control_per_function_req;
  input bit [15 : 0] pcie1_cfg_control_per_function_number;
  input bit pcie1_cfg_control_power_state_change_ack;
  output wire pcie1_cfg_control_power_state_change_interrupt;
  output wire pcie1_cfg_interrupt_sent;
  input bit [3 : 0] pcie1_cfg_interrupt_intx_vector;
  input bit [15 : 0] pcie1_cfg_interrupt_pending;
  output wire pcie1_s_axis_rq_tready;
  input bit [1023 : 0] pcie1_s_axis_rq_tdata;
  input bit [31 : 0] pcie1_s_axis_rq_tkeep;
  input bit pcie1_s_axis_rq_tlast;
  input bit [372 : 0] pcie1_s_axis_rq_tuser;
  input bit pcie1_s_axis_rq_tvalid;
  output wire pcie1_s_axis_cc_tready;
  input bit [1023 : 0] pcie1_s_axis_cc_tdata;
  input bit [31 : 0] pcie1_s_axis_cc_tkeep;
  input bit pcie1_s_axis_cc_tlast;
  input bit [164 : 0] pcie1_s_axis_cc_tuser;
  input bit pcie1_s_axis_cc_tvalid;
  output wire [1023 : 0] pcie1_m_axis_rc_tdata;
  output wire [31 : 0] pcie1_m_axis_rc_tkeep;
  output wire pcie1_m_axis_rc_tlast;
  input bit pcie1_m_axis_rc_tready;
  output wire [336 : 0] pcie1_m_axis_rc_tuser;
  output wire pcie1_m_axis_rc_tvalid;
  output wire [1023 : 0] pcie1_m_axis_cq_tdata;
  output wire [31 : 0] pcie1_m_axis_cq_tkeep;
  output wire pcie1_m_axis_cq_tlast;
  input bit pcie1_m_axis_cq_tready;
  output wire [464 : 0] pcie1_m_axis_cq_tuser;
  output wire pcie1_m_axis_cq_tvalid;
  input bit pcie1_cfg_mgmt_read_en;
  output wire pcie1_cfg_mgmt_read_write_done;
  input bit pcie1_cfg_mgmt_write_en;
  input bit pcie1_cfg_mgmt_debug_access;
  output wire [31 : 0] pcie1_cfg_mgmt_read_data;
  input bit [9 : 0] pcie1_cfg_mgmt_addr;
  input bit [3 : 0] pcie1_cfg_mgmt_byte_en;
  input bit [31 : 0] pcie1_cfg_mgmt_write_data;
  input bit [15 : 0] pcie1_cfg_mgmt_function_number;
  output wire pcie1_cfg_msi_fail;
  output wire pcie1_cfg_msi_sent;
  output wire pcie1_cfg_msi_mask_update;
  output wire [31 : 0] pcie1_cfg_msi_data;
  output wire pcie1_cfg_msi_enable;
  output wire [2 : 0] pcie1_cfg_msi_mmenable;
  input bit pcie1_cfg_msi_tph_present;
  input bit [2 : 0] pcie1_cfg_msi_attr;
  input bit [3 : 0] pcie1_cfg_msi_select;
  input bit [1 : 0] pcie1_cfg_msi_tph_type;
  input bit [7 : 0] pcie1_cfg_msi_tph_st_tag;
  input bit [31 : 0] pcie1_cfg_msi_int_vector;
  input bit [31 : 0] pcie1_cfg_msi_pending_status;
  input bit [15 : 0] pcie1_cfg_msi_function_number;
  input bit pcie1_cfg_msi_pending_status_data_enable;
  input bit [3 : 0] pcie1_cfg_msi_pending_status_function_num;
  output wire pcie1_cfg_ext_read_received;
  output wire pcie1_cfg_ext_write_received;
  output wire [31 : 0] pcie1_cfg_ext_write_data;
  input bit pcie1_cfg_ext_read_data_valid;
  output wire [15 : 0] pcie1_cfg_ext_function_number;
  output wire [9 : 0] pcie1_cfg_ext_register_number;
  input bit [31 : 0] pcie1_cfg_ext_read_data;
  output wire [3 : 0] pcie1_cfg_ext_write_byte_enable;
  output wire [7 : 0] pcie1_cfg_fc_ph;
  output wire [11 : 0] pcie1_cfg_fc_pd;
  output wire [7 : 0] pcie1_cfg_fc_nph;
  output wire [11 : 0] pcie1_cfg_fc_npd;
  input bit pcie1_cfg_fc_vc_sel;
  output wire [1 : 0] pcie1_cfg_fc_pd_scale;
  output wire [1 : 0] pcie1_cfg_fc_ph_scale;
  output wire [1 : 0] pcie1_cfg_fc_npd_scale;
  output wire [1 : 0] pcie1_cfg_fc_nph_scale;
  input bit [2 : 0] pcie1_cfg_fc_sel;
  output wire [7 : 0] pcie1_cfg_fc_cplh;
  output wire [11 : 0] pcie1_cfg_fc_cpld;
  output wire [1 : 0] pcie1_cfg_fc_cpld_scale;
  output wire [1 : 0] pcie1_cfg_fc_cplh_scale;
  output wire pcie1_cfg_msg_tx_transmit_done;
  input bit pcie1_cfg_msg_tx_transmit;
  input bit [2 : 0] pcie1_cfg_msg_tx_transmit_type;
  input bit [31 : 0] pcie1_cfg_msg_tx_transmit_data;
  output wire pcie1_cfg_status_err_cor_out;
  output wire pcie1_cfg_status_err_fatal_out;
  output wire pcie1_cfg_status_err_nonfatal_out;
  output wire pcie1_cfg_status_local_error_valid;
  output wire [4 : 0] pcie1_cfg_status_local_error_out;
  output wire pcie1_cfg_status_pasid_enable;
  output wire [47 : 0] pcie1_cfg_status_pasid_control;
  output wire [79 : 0] pcie1_cfg_status_max_pasid_width_control;
  output wire pcie1_cfg_status_pasid_exec_permission_enable;
  output wire pcie1_cfg_status_pasid_privil_mode_enable;
  output wire [1 : 0] pcie1_cfg_status_rq_tag_vld0;
  output wire [1 : 0] pcie1_cfg_status_rq_tag_vld1;
  output wire pcie1_cfg_status_rq_seq_num_vld0;
  output wire pcie1_cfg_status_rq_seq_num_vld1;
  output wire pcie1_cfg_status_rq_seq_num_vld2;
  output wire pcie1_cfg_status_rq_seq_num_vld3;
  output wire [3 : 0] pcie1_cfg_status_rq_tag_av;
  output wire [19 : 0] pcie1_cfg_status_rq_tag0;
  output wire [19 : 0] pcie1_cfg_status_rq_tag1;
  output wire [5 : 0] pcie1_cfg_status_rq_seq_num0;
  output wire [5 : 0] pcie1_cfg_status_rq_seq_num1;
  output wire [5 : 0] pcie1_cfg_status_rq_seq_num2;
  output wire [5 : 0] pcie1_cfg_status_rq_seq_num3;
  output wire [5 : 0] pcie1_cfg_status_cq_np_req_count;
  input bit [1 : 0] pcie1_cfg_status_cq_np_req;
  output wire [2 : 0] pcie1_cfg_status_function_power_state;
  output wire pcie1_cfg_status_atomic_requester_enable;
  output wire [7 : 0] pcie1_cfg_status_bus_number;
  output wire pcie1_cfg_status_phy_link_down;
  output wire pcie1_cfg_status_ext_tag_enable;
  output wire pcie1_cfg_status_pl_status_change;
  output wire pcie1_cfg_status_rcb_status;
  output wire [5 : 0] pcie1_cfg_status_ltssm_state;
  output wire [1 : 0] pcie1_cfg_status_max_payload;
  output wire [11 : 0] pcie1_cfg_status_tph_st_mode;
  output wire [2 : 0] pcie1_cfg_status_max_read_req;
  output wire [2 : 0] pcie1_cfg_status_current_speed;
  output wire [1 : 0] pcie1_cfg_status_rx_pm_state;
  output wire [1 : 0] pcie1_cfg_status_tx_pm_state;
  output wire [1 : 0] pcie1_cfg_status_phy_link_status;
  output wire [3 : 0] pcie1_cfg_status_function_status;
  output wire [1 : 0] pcie1_cfg_status_link_power_state;
  output wire [2 : 0] pcie1_cfg_status_negotiated_width;
  output wire [3 : 0] pcie1_cfg_status_tph_requester_enable;
  output wire pcie1_cfg_status_10b_tag_requester_enable;
  output wire pcie1_cfg_status_per_function_vld;
  output wire [23 : 0] pcie1_cfg_status_per_function_out;
  output wire pcie1_cfg_status_wrreq_bme_vld;
  output wire pcie1_cfg_status_wrreq_flr_vld;
  output wire pcie1_cfg_status_wrreq_msi_vld;
  output wire pcie1_cfg_status_wrreq_vfe_vld;
  output wire pcie1_cfg_status_wrreq_msix_vld;
  output wire [3 : 0] pcie1_cfg_status_wrreq_out_value;
  output wire [15 : 0] pcie1_cfg_status_wrreq_function_number;
  output wire [3 : 0] pcie1_transmit_fc_npd_av;
  output wire [3 : 0] pcie1_transmit_fc_nph_av;
  output wire pcie1_cfg_msg_recd_recd;
  output wire [7 : 0] pcie1_cfg_msg_recd_recd_data;
  output wire [4 : 0] pcie1_cfg_msg_recd_recd_type;
  input bit [7 : 0] PCIE1_GT_grx_n;
  output wire [7 : 0] PCIE1_GT_gtx_n;
  input bit [7 : 0] PCIE1_GT_grx_p;
  output wire [7 : 0] PCIE1_GT_gtx_p;
  input bit gt_refclk1_clk_n;
  input bit gt_refclk1_clk_p;
endmodule
`endif
