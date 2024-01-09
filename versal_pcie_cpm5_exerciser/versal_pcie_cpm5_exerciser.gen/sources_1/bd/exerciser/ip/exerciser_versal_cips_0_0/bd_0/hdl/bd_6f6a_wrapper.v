//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_6f6a_wrapper.bd
//Design : bd_6f6a_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_6f6a_wrapper
   (PCIE1_GT_grx_n,
    PCIE1_GT_grx_p,
    PCIE1_GT_gtx_n,
    PCIE1_GT_gtx_p,
    cpm_cor_irq,
    cpm_irq0,
    cpm_irq1,
    cpm_misc_irq,
    cpm_uncor_irq,
    gt_refclk1_clk_n,
    gt_refclk1_clk_p,
    pcie1_cfg_control_err_cor_in,
    pcie1_cfg_control_err_uncor_in,
    pcie1_cfg_control_flr_done,
    pcie1_cfg_control_flr_done_function_number,
    pcie1_cfg_control_flr_in_process,
    pcie1_cfg_control_hot_reset_in,
    pcie1_cfg_control_hot_reset_out,
    pcie1_cfg_control_per_function_number,
    pcie1_cfg_control_per_function_req,
    pcie1_cfg_control_power_state_change_ack,
    pcie1_cfg_control_power_state_change_interrupt,
    pcie1_cfg_ext_function_number,
    pcie1_cfg_ext_read_data,
    pcie1_cfg_ext_read_data_valid,
    pcie1_cfg_ext_read_received,
    pcie1_cfg_ext_register_number,
    pcie1_cfg_ext_write_byte_enable,
    pcie1_cfg_ext_write_data,
    pcie1_cfg_ext_write_received,
    pcie1_cfg_fc_cpld,
    pcie1_cfg_fc_cpld_scale,
    pcie1_cfg_fc_cplh,
    pcie1_cfg_fc_cplh_scale,
    pcie1_cfg_fc_npd,
    pcie1_cfg_fc_npd_scale,
    pcie1_cfg_fc_nph,
    pcie1_cfg_fc_nph_scale,
    pcie1_cfg_fc_pd,
    pcie1_cfg_fc_pd_scale,
    pcie1_cfg_fc_ph,
    pcie1_cfg_fc_ph_scale,
    pcie1_cfg_fc_sel,
    pcie1_cfg_fc_vc_sel,
    pcie1_cfg_interrupt_intx_vector,
    pcie1_cfg_interrupt_pending,
    pcie1_cfg_interrupt_sent,
    pcie1_cfg_mgmt_addr,
    pcie1_cfg_mgmt_byte_en,
    pcie1_cfg_mgmt_debug_access,
    pcie1_cfg_mgmt_function_number,
    pcie1_cfg_mgmt_read_data,
    pcie1_cfg_mgmt_read_en,
    pcie1_cfg_mgmt_read_write_done,
    pcie1_cfg_mgmt_write_data,
    pcie1_cfg_mgmt_write_en,
    pcie1_cfg_msg_recd_recd,
    pcie1_cfg_msg_recd_recd_data,
    pcie1_cfg_msg_recd_recd_type,
    pcie1_cfg_msg_tx_transmit,
    pcie1_cfg_msg_tx_transmit_data,
    pcie1_cfg_msg_tx_transmit_done,
    pcie1_cfg_msg_tx_transmit_type,
    pcie1_cfg_msi_attr,
    pcie1_cfg_msi_data,
    pcie1_cfg_msi_enable,
    pcie1_cfg_msi_fail,
    pcie1_cfg_msi_function_number,
    pcie1_cfg_msi_int_vector,
    pcie1_cfg_msi_mask_update,
    pcie1_cfg_msi_mmenable,
    pcie1_cfg_msi_pending_status,
    pcie1_cfg_msi_pending_status_data_enable,
    pcie1_cfg_msi_pending_status_function_num,
    pcie1_cfg_msi_select,
    pcie1_cfg_msi_sent,
    pcie1_cfg_msi_tph_present,
    pcie1_cfg_msi_tph_st_tag,
    pcie1_cfg_msi_tph_type,
    pcie1_cfg_status_10b_tag_requester_enable,
    pcie1_cfg_status_atomic_requester_enable,
    pcie1_cfg_status_bus_number,
    pcie1_cfg_status_cq_np_req,
    pcie1_cfg_status_cq_np_req_count,
    pcie1_cfg_status_current_speed,
    pcie1_cfg_status_err_cor_out,
    pcie1_cfg_status_err_fatal_out,
    pcie1_cfg_status_err_nonfatal_out,
    pcie1_cfg_status_ext_tag_enable,
    pcie1_cfg_status_function_power_state,
    pcie1_cfg_status_function_status,
    pcie1_cfg_status_link_power_state,
    pcie1_cfg_status_local_error_out,
    pcie1_cfg_status_local_error_valid,
    pcie1_cfg_status_ltssm_state,
    pcie1_cfg_status_max_pasid_width_control,
    pcie1_cfg_status_max_payload,
    pcie1_cfg_status_max_read_req,
    pcie1_cfg_status_negotiated_width,
    pcie1_cfg_status_pasid_control,
    pcie1_cfg_status_pasid_enable,
    pcie1_cfg_status_pasid_exec_permission_enable,
    pcie1_cfg_status_pasid_privil_mode_enable,
    pcie1_cfg_status_per_function_out,
    pcie1_cfg_status_per_function_vld,
    pcie1_cfg_status_phy_link_down,
    pcie1_cfg_status_phy_link_status,
    pcie1_cfg_status_pl_status_change,
    pcie1_cfg_status_rcb_status,
    pcie1_cfg_status_rq_seq_num0,
    pcie1_cfg_status_rq_seq_num1,
    pcie1_cfg_status_rq_seq_num2,
    pcie1_cfg_status_rq_seq_num3,
    pcie1_cfg_status_rq_seq_num_vld0,
    pcie1_cfg_status_rq_seq_num_vld1,
    pcie1_cfg_status_rq_seq_num_vld2,
    pcie1_cfg_status_rq_seq_num_vld3,
    pcie1_cfg_status_rq_tag0,
    pcie1_cfg_status_rq_tag1,
    pcie1_cfg_status_rq_tag_av,
    pcie1_cfg_status_rq_tag_vld0,
    pcie1_cfg_status_rq_tag_vld1,
    pcie1_cfg_status_rx_pm_state,
    pcie1_cfg_status_tph_requester_enable,
    pcie1_cfg_status_tph_st_mode,
    pcie1_cfg_status_tx_pm_state,
    pcie1_cfg_status_wrreq_bme_vld,
    pcie1_cfg_status_wrreq_flr_vld,
    pcie1_cfg_status_wrreq_function_number,
    pcie1_cfg_status_wrreq_msi_vld,
    pcie1_cfg_status_wrreq_msix_vld,
    pcie1_cfg_status_wrreq_out_value,
    pcie1_cfg_status_wrreq_vfe_vld,
    pcie1_m_axis_cq_tdata,
    pcie1_m_axis_cq_tkeep,
    pcie1_m_axis_cq_tlast,
    pcie1_m_axis_cq_tready,
    pcie1_m_axis_cq_tuser,
    pcie1_m_axis_cq_tvalid,
    pcie1_m_axis_rc_tdata,
    pcie1_m_axis_rc_tkeep,
    pcie1_m_axis_rc_tlast,
    pcie1_m_axis_rc_tready,
    pcie1_m_axis_rc_tuser,
    pcie1_m_axis_rc_tvalid,
    pcie1_s_axis_cc_tdata,
    pcie1_s_axis_cc_tkeep,
    pcie1_s_axis_cc_tlast,
    pcie1_s_axis_cc_tready,
    pcie1_s_axis_cc_tuser,
    pcie1_s_axis_cc_tvalid,
    pcie1_s_axis_rq_tdata,
    pcie1_s_axis_rq_tkeep,
    pcie1_s_axis_rq_tlast,
    pcie1_s_axis_rq_tready,
    pcie1_s_axis_rq_tuser,
    pcie1_s_axis_rq_tvalid,
    pcie1_transmit_fc_npd_av,
    pcie1_transmit_fc_nph_av,
    pcie1_user_clk,
    pcie1_user_lnk_up,
    pcie1_user_reset);
  input [7:0]PCIE1_GT_grx_n;
  input [7:0]PCIE1_GT_grx_p;
  output [7:0]PCIE1_GT_gtx_n;
  output [7:0]PCIE1_GT_gtx_p;
  output cpm_cor_irq;
  input cpm_irq0;
  input cpm_irq1;
  output cpm_misc_irq;
  output cpm_uncor_irq;
  input gt_refclk1_clk_n;
  input gt_refclk1_clk_p;
  input pcie1_cfg_control_err_cor_in;
  input pcie1_cfg_control_err_uncor_in;
  input pcie1_cfg_control_flr_done;
  input [15:0]pcie1_cfg_control_flr_done_function_number;
  output [3:0]pcie1_cfg_control_flr_in_process;
  input pcie1_cfg_control_hot_reset_in;
  output pcie1_cfg_control_hot_reset_out;
  input [15:0]pcie1_cfg_control_per_function_number;
  input pcie1_cfg_control_per_function_req;
  input pcie1_cfg_control_power_state_change_ack;
  output pcie1_cfg_control_power_state_change_interrupt;
  output [15:0]pcie1_cfg_ext_function_number;
  input [31:0]pcie1_cfg_ext_read_data;
  input pcie1_cfg_ext_read_data_valid;
  output pcie1_cfg_ext_read_received;
  output [9:0]pcie1_cfg_ext_register_number;
  output [3:0]pcie1_cfg_ext_write_byte_enable;
  output [31:0]pcie1_cfg_ext_write_data;
  output pcie1_cfg_ext_write_received;
  output [11:0]pcie1_cfg_fc_cpld;
  output [1:0]pcie1_cfg_fc_cpld_scale;
  output [7:0]pcie1_cfg_fc_cplh;
  output [1:0]pcie1_cfg_fc_cplh_scale;
  output [11:0]pcie1_cfg_fc_npd;
  output [1:0]pcie1_cfg_fc_npd_scale;
  output [7:0]pcie1_cfg_fc_nph;
  output [1:0]pcie1_cfg_fc_nph_scale;
  output [11:0]pcie1_cfg_fc_pd;
  output [1:0]pcie1_cfg_fc_pd_scale;
  output [7:0]pcie1_cfg_fc_ph;
  output [1:0]pcie1_cfg_fc_ph_scale;
  input [2:0]pcie1_cfg_fc_sel;
  input pcie1_cfg_fc_vc_sel;
  input [3:0]pcie1_cfg_interrupt_intx_vector;
  input [15:0]pcie1_cfg_interrupt_pending;
  output pcie1_cfg_interrupt_sent;
  input [9:0]pcie1_cfg_mgmt_addr;
  input [3:0]pcie1_cfg_mgmt_byte_en;
  input pcie1_cfg_mgmt_debug_access;
  input [15:0]pcie1_cfg_mgmt_function_number;
  output [31:0]pcie1_cfg_mgmt_read_data;
  input pcie1_cfg_mgmt_read_en;
  output pcie1_cfg_mgmt_read_write_done;
  input [31:0]pcie1_cfg_mgmt_write_data;
  input pcie1_cfg_mgmt_write_en;
  output pcie1_cfg_msg_recd_recd;
  output [7:0]pcie1_cfg_msg_recd_recd_data;
  output [4:0]pcie1_cfg_msg_recd_recd_type;
  input pcie1_cfg_msg_tx_transmit;
  input [31:0]pcie1_cfg_msg_tx_transmit_data;
  output pcie1_cfg_msg_tx_transmit_done;
  input [2:0]pcie1_cfg_msg_tx_transmit_type;
  input [2:0]pcie1_cfg_msi_attr;
  output [31:0]pcie1_cfg_msi_data;
  output pcie1_cfg_msi_enable;
  output pcie1_cfg_msi_fail;
  input [15:0]pcie1_cfg_msi_function_number;
  input [31:0]pcie1_cfg_msi_int_vector;
  output pcie1_cfg_msi_mask_update;
  output [2:0]pcie1_cfg_msi_mmenable;
  input [31:0]pcie1_cfg_msi_pending_status;
  input pcie1_cfg_msi_pending_status_data_enable;
  input [3:0]pcie1_cfg_msi_pending_status_function_num;
  input [3:0]pcie1_cfg_msi_select;
  output pcie1_cfg_msi_sent;
  input pcie1_cfg_msi_tph_present;
  input [7:0]pcie1_cfg_msi_tph_st_tag;
  input [1:0]pcie1_cfg_msi_tph_type;
  output pcie1_cfg_status_10b_tag_requester_enable;
  output pcie1_cfg_status_atomic_requester_enable;
  output [7:0]pcie1_cfg_status_bus_number;
  input [1:0]pcie1_cfg_status_cq_np_req;
  output [5:0]pcie1_cfg_status_cq_np_req_count;
  output [2:0]pcie1_cfg_status_current_speed;
  output pcie1_cfg_status_err_cor_out;
  output pcie1_cfg_status_err_fatal_out;
  output pcie1_cfg_status_err_nonfatal_out;
  output pcie1_cfg_status_ext_tag_enable;
  output [2:0]pcie1_cfg_status_function_power_state;
  output [3:0]pcie1_cfg_status_function_status;
  output [1:0]pcie1_cfg_status_link_power_state;
  output [4:0]pcie1_cfg_status_local_error_out;
  output pcie1_cfg_status_local_error_valid;
  output [5:0]pcie1_cfg_status_ltssm_state;
  output [79:0]pcie1_cfg_status_max_pasid_width_control;
  output [1:0]pcie1_cfg_status_max_payload;
  output [2:0]pcie1_cfg_status_max_read_req;
  output [2:0]pcie1_cfg_status_negotiated_width;
  output [47:0]pcie1_cfg_status_pasid_control;
  output pcie1_cfg_status_pasid_enable;
  output pcie1_cfg_status_pasid_exec_permission_enable;
  output pcie1_cfg_status_pasid_privil_mode_enable;
  output [23:0]pcie1_cfg_status_per_function_out;
  output pcie1_cfg_status_per_function_vld;
  output pcie1_cfg_status_phy_link_down;
  output [1:0]pcie1_cfg_status_phy_link_status;
  output pcie1_cfg_status_pl_status_change;
  output pcie1_cfg_status_rcb_status;
  output [5:0]pcie1_cfg_status_rq_seq_num0;
  output [5:0]pcie1_cfg_status_rq_seq_num1;
  output [5:0]pcie1_cfg_status_rq_seq_num2;
  output [5:0]pcie1_cfg_status_rq_seq_num3;
  output pcie1_cfg_status_rq_seq_num_vld0;
  output pcie1_cfg_status_rq_seq_num_vld1;
  output pcie1_cfg_status_rq_seq_num_vld2;
  output pcie1_cfg_status_rq_seq_num_vld3;
  output [19:0]pcie1_cfg_status_rq_tag0;
  output [19:0]pcie1_cfg_status_rq_tag1;
  output [3:0]pcie1_cfg_status_rq_tag_av;
  output [1:0]pcie1_cfg_status_rq_tag_vld0;
  output [1:0]pcie1_cfg_status_rq_tag_vld1;
  output [1:0]pcie1_cfg_status_rx_pm_state;
  output [3:0]pcie1_cfg_status_tph_requester_enable;
  output [11:0]pcie1_cfg_status_tph_st_mode;
  output [1:0]pcie1_cfg_status_tx_pm_state;
  output pcie1_cfg_status_wrreq_bme_vld;
  output pcie1_cfg_status_wrreq_flr_vld;
  output [15:0]pcie1_cfg_status_wrreq_function_number;
  output pcie1_cfg_status_wrreq_msi_vld;
  output pcie1_cfg_status_wrreq_msix_vld;
  output [3:0]pcie1_cfg_status_wrreq_out_value;
  output pcie1_cfg_status_wrreq_vfe_vld;
  output [1023:0]pcie1_m_axis_cq_tdata;
  output [31:0]pcie1_m_axis_cq_tkeep;
  output pcie1_m_axis_cq_tlast;
  input pcie1_m_axis_cq_tready;
  output [464:0]pcie1_m_axis_cq_tuser;
  output pcie1_m_axis_cq_tvalid;
  output [1023:0]pcie1_m_axis_rc_tdata;
  output [31:0]pcie1_m_axis_rc_tkeep;
  output pcie1_m_axis_rc_tlast;
  input pcie1_m_axis_rc_tready;
  output [336:0]pcie1_m_axis_rc_tuser;
  output pcie1_m_axis_rc_tvalid;
  input [1023:0]pcie1_s_axis_cc_tdata;
  input [31:0]pcie1_s_axis_cc_tkeep;
  input pcie1_s_axis_cc_tlast;
  output pcie1_s_axis_cc_tready;
  input [164:0]pcie1_s_axis_cc_tuser;
  input pcie1_s_axis_cc_tvalid;
  input [1023:0]pcie1_s_axis_rq_tdata;
  input [31:0]pcie1_s_axis_rq_tkeep;
  input pcie1_s_axis_rq_tlast;
  output pcie1_s_axis_rq_tready;
  input [372:0]pcie1_s_axis_rq_tuser;
  input pcie1_s_axis_rq_tvalid;
  output [3:0]pcie1_transmit_fc_npd_av;
  output [3:0]pcie1_transmit_fc_nph_av;
  output pcie1_user_clk;
  output pcie1_user_lnk_up;
  output pcie1_user_reset;

  wire [7:0]PCIE1_GT_grx_n;
  wire [7:0]PCIE1_GT_grx_p;
  wire [7:0]PCIE1_GT_gtx_n;
  wire [7:0]PCIE1_GT_gtx_p;
  wire cpm_cor_irq;
  wire cpm_irq0;
  wire cpm_irq1;
  wire cpm_misc_irq;
  wire cpm_uncor_irq;
  wire gt_refclk1_clk_n;
  wire gt_refclk1_clk_p;
  wire pcie1_cfg_control_err_cor_in;
  wire pcie1_cfg_control_err_uncor_in;
  wire pcie1_cfg_control_flr_done;
  wire [15:0]pcie1_cfg_control_flr_done_function_number;
  wire [3:0]pcie1_cfg_control_flr_in_process;
  wire pcie1_cfg_control_hot_reset_in;
  wire pcie1_cfg_control_hot_reset_out;
  wire [15:0]pcie1_cfg_control_per_function_number;
  wire pcie1_cfg_control_per_function_req;
  wire pcie1_cfg_control_power_state_change_ack;
  wire pcie1_cfg_control_power_state_change_interrupt;
  wire [15:0]pcie1_cfg_ext_function_number;
  wire [31:0]pcie1_cfg_ext_read_data;
  wire pcie1_cfg_ext_read_data_valid;
  wire pcie1_cfg_ext_read_received;
  wire [9:0]pcie1_cfg_ext_register_number;
  wire [3:0]pcie1_cfg_ext_write_byte_enable;
  wire [31:0]pcie1_cfg_ext_write_data;
  wire pcie1_cfg_ext_write_received;
  wire [11:0]pcie1_cfg_fc_cpld;
  wire [1:0]pcie1_cfg_fc_cpld_scale;
  wire [7:0]pcie1_cfg_fc_cplh;
  wire [1:0]pcie1_cfg_fc_cplh_scale;
  wire [11:0]pcie1_cfg_fc_npd;
  wire [1:0]pcie1_cfg_fc_npd_scale;
  wire [7:0]pcie1_cfg_fc_nph;
  wire [1:0]pcie1_cfg_fc_nph_scale;
  wire [11:0]pcie1_cfg_fc_pd;
  wire [1:0]pcie1_cfg_fc_pd_scale;
  wire [7:0]pcie1_cfg_fc_ph;
  wire [1:0]pcie1_cfg_fc_ph_scale;
  wire [2:0]pcie1_cfg_fc_sel;
  wire pcie1_cfg_fc_vc_sel;
  wire [3:0]pcie1_cfg_interrupt_intx_vector;
  wire [15:0]pcie1_cfg_interrupt_pending;
  wire pcie1_cfg_interrupt_sent;
  wire [9:0]pcie1_cfg_mgmt_addr;
  wire [3:0]pcie1_cfg_mgmt_byte_en;
  wire pcie1_cfg_mgmt_debug_access;
  wire [15:0]pcie1_cfg_mgmt_function_number;
  wire [31:0]pcie1_cfg_mgmt_read_data;
  wire pcie1_cfg_mgmt_read_en;
  wire pcie1_cfg_mgmt_read_write_done;
  wire [31:0]pcie1_cfg_mgmt_write_data;
  wire pcie1_cfg_mgmt_write_en;
  wire pcie1_cfg_msg_recd_recd;
  wire [7:0]pcie1_cfg_msg_recd_recd_data;
  wire [4:0]pcie1_cfg_msg_recd_recd_type;
  wire pcie1_cfg_msg_tx_transmit;
  wire [31:0]pcie1_cfg_msg_tx_transmit_data;
  wire pcie1_cfg_msg_tx_transmit_done;
  wire [2:0]pcie1_cfg_msg_tx_transmit_type;
  wire [2:0]pcie1_cfg_msi_attr;
  wire [31:0]pcie1_cfg_msi_data;
  wire pcie1_cfg_msi_enable;
  wire pcie1_cfg_msi_fail;
  wire [15:0]pcie1_cfg_msi_function_number;
  wire [31:0]pcie1_cfg_msi_int_vector;
  wire pcie1_cfg_msi_mask_update;
  wire [2:0]pcie1_cfg_msi_mmenable;
  wire [31:0]pcie1_cfg_msi_pending_status;
  wire pcie1_cfg_msi_pending_status_data_enable;
  wire [3:0]pcie1_cfg_msi_pending_status_function_num;
  wire [3:0]pcie1_cfg_msi_select;
  wire pcie1_cfg_msi_sent;
  wire pcie1_cfg_msi_tph_present;
  wire [7:0]pcie1_cfg_msi_tph_st_tag;
  wire [1:0]pcie1_cfg_msi_tph_type;
  wire pcie1_cfg_status_10b_tag_requester_enable;
  wire pcie1_cfg_status_atomic_requester_enable;
  wire [7:0]pcie1_cfg_status_bus_number;
  wire [1:0]pcie1_cfg_status_cq_np_req;
  wire [5:0]pcie1_cfg_status_cq_np_req_count;
  wire [2:0]pcie1_cfg_status_current_speed;
  wire pcie1_cfg_status_err_cor_out;
  wire pcie1_cfg_status_err_fatal_out;
  wire pcie1_cfg_status_err_nonfatal_out;
  wire pcie1_cfg_status_ext_tag_enable;
  wire [2:0]pcie1_cfg_status_function_power_state;
  wire [3:0]pcie1_cfg_status_function_status;
  wire [1:0]pcie1_cfg_status_link_power_state;
  wire [4:0]pcie1_cfg_status_local_error_out;
  wire pcie1_cfg_status_local_error_valid;
  wire [5:0]pcie1_cfg_status_ltssm_state;
  wire [79:0]pcie1_cfg_status_max_pasid_width_control;
  wire [1:0]pcie1_cfg_status_max_payload;
  wire [2:0]pcie1_cfg_status_max_read_req;
  wire [2:0]pcie1_cfg_status_negotiated_width;
  wire [47:0]pcie1_cfg_status_pasid_control;
  wire pcie1_cfg_status_pasid_enable;
  wire pcie1_cfg_status_pasid_exec_permission_enable;
  wire pcie1_cfg_status_pasid_privil_mode_enable;
  wire [23:0]pcie1_cfg_status_per_function_out;
  wire pcie1_cfg_status_per_function_vld;
  wire pcie1_cfg_status_phy_link_down;
  wire [1:0]pcie1_cfg_status_phy_link_status;
  wire pcie1_cfg_status_pl_status_change;
  wire pcie1_cfg_status_rcb_status;
  wire [5:0]pcie1_cfg_status_rq_seq_num0;
  wire [5:0]pcie1_cfg_status_rq_seq_num1;
  wire [5:0]pcie1_cfg_status_rq_seq_num2;
  wire [5:0]pcie1_cfg_status_rq_seq_num3;
  wire pcie1_cfg_status_rq_seq_num_vld0;
  wire pcie1_cfg_status_rq_seq_num_vld1;
  wire pcie1_cfg_status_rq_seq_num_vld2;
  wire pcie1_cfg_status_rq_seq_num_vld3;
  wire [19:0]pcie1_cfg_status_rq_tag0;
  wire [19:0]pcie1_cfg_status_rq_tag1;
  wire [3:0]pcie1_cfg_status_rq_tag_av;
  wire [1:0]pcie1_cfg_status_rq_tag_vld0;
  wire [1:0]pcie1_cfg_status_rq_tag_vld1;
  wire [1:0]pcie1_cfg_status_rx_pm_state;
  wire [3:0]pcie1_cfg_status_tph_requester_enable;
  wire [11:0]pcie1_cfg_status_tph_st_mode;
  wire [1:0]pcie1_cfg_status_tx_pm_state;
  wire pcie1_cfg_status_wrreq_bme_vld;
  wire pcie1_cfg_status_wrreq_flr_vld;
  wire [15:0]pcie1_cfg_status_wrreq_function_number;
  wire pcie1_cfg_status_wrreq_msi_vld;
  wire pcie1_cfg_status_wrreq_msix_vld;
  wire [3:0]pcie1_cfg_status_wrreq_out_value;
  wire pcie1_cfg_status_wrreq_vfe_vld;
  wire [1023:0]pcie1_m_axis_cq_tdata;
  wire [31:0]pcie1_m_axis_cq_tkeep;
  wire pcie1_m_axis_cq_tlast;
  wire pcie1_m_axis_cq_tready;
  wire [464:0]pcie1_m_axis_cq_tuser;
  wire pcie1_m_axis_cq_tvalid;
  wire [1023:0]pcie1_m_axis_rc_tdata;
  wire [31:0]pcie1_m_axis_rc_tkeep;
  wire pcie1_m_axis_rc_tlast;
  wire pcie1_m_axis_rc_tready;
  wire [336:0]pcie1_m_axis_rc_tuser;
  wire pcie1_m_axis_rc_tvalid;
  wire [1023:0]pcie1_s_axis_cc_tdata;
  wire [31:0]pcie1_s_axis_cc_tkeep;
  wire pcie1_s_axis_cc_tlast;
  wire pcie1_s_axis_cc_tready;
  wire [164:0]pcie1_s_axis_cc_tuser;
  wire pcie1_s_axis_cc_tvalid;
  wire [1023:0]pcie1_s_axis_rq_tdata;
  wire [31:0]pcie1_s_axis_rq_tkeep;
  wire pcie1_s_axis_rq_tlast;
  wire pcie1_s_axis_rq_tready;
  wire [372:0]pcie1_s_axis_rq_tuser;
  wire pcie1_s_axis_rq_tvalid;
  wire [3:0]pcie1_transmit_fc_npd_av;
  wire [3:0]pcie1_transmit_fc_nph_av;
  wire pcie1_user_clk;
  wire pcie1_user_lnk_up;
  wire pcie1_user_reset;

  bd_6f6a bd_6f6a_i
       (.PCIE1_GT_grx_n(PCIE1_GT_grx_n),
        .PCIE1_GT_grx_p(PCIE1_GT_grx_p),
        .PCIE1_GT_gtx_n(PCIE1_GT_gtx_n),
        .PCIE1_GT_gtx_p(PCIE1_GT_gtx_p),
        .cpm_cor_irq(cpm_cor_irq),
        .cpm_irq0(cpm_irq0),
        .cpm_irq1(cpm_irq1),
        .cpm_misc_irq(cpm_misc_irq),
        .cpm_uncor_irq(cpm_uncor_irq),
        .gt_refclk1_clk_n(gt_refclk1_clk_n),
        .gt_refclk1_clk_p(gt_refclk1_clk_p),
        .pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in),
        .pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in),
        .pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done),
        .pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number),
        .pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process),
        .pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in),
        .pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out),
        .pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number),
        .pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req),
        .pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack),
        .pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt),
        .pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number),
        .pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data),
        .pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid),
        .pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received),
        .pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number),
        .pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable),
        .pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data),
        .pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received),
        .pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld),
        .pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale),
        .pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh),
        .pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale),
        .pcie1_cfg_fc_npd(pcie1_cfg_fc_npd),
        .pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale),
        .pcie1_cfg_fc_nph(pcie1_cfg_fc_nph),
        .pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale),
        .pcie1_cfg_fc_pd(pcie1_cfg_fc_pd),
        .pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale),
        .pcie1_cfg_fc_ph(pcie1_cfg_fc_ph),
        .pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale),
        .pcie1_cfg_fc_sel(pcie1_cfg_fc_sel),
        .pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel),
        .pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector),
        .pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending),
        .pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent),
        .pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr),
        .pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en),
        .pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access),
        .pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number),
        .pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data),
        .pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en),
        .pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done),
        .pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data),
        .pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en),
        .pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd),
        .pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data),
        .pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type),
        .pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit),
        .pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data),
        .pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done),
        .pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type),
        .pcie1_cfg_msi_attr(pcie1_cfg_msi_attr),
        .pcie1_cfg_msi_data(pcie1_cfg_msi_data),
        .pcie1_cfg_msi_enable(pcie1_cfg_msi_enable),
        .pcie1_cfg_msi_fail(pcie1_cfg_msi_fail),
        .pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number),
        .pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector),
        .pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update),
        .pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable),
        .pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status),
        .pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable),
        .pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num),
        .pcie1_cfg_msi_select(pcie1_cfg_msi_select),
        .pcie1_cfg_msi_sent(pcie1_cfg_msi_sent),
        .pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present),
        .pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag),
        .pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type),
        .pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable),
        .pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable),
        .pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number),
        .pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req),
        .pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count),
        .pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed),
        .pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out),
        .pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out),
        .pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out),
        .pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable),
        .pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state),
        .pcie1_cfg_status_function_status(pcie1_cfg_status_function_status),
        .pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state),
        .pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out),
        .pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid),
        .pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state),
        .pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control),
        .pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload),
        .pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req),
        .pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width),
        .pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control),
        .pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable),
        .pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable),
        .pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable),
        .pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out),
        .pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld),
        .pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down),
        .pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status),
        .pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change),
        .pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status),
        .pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0),
        .pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1),
        .pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2),
        .pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3),
        .pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0),
        .pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1),
        .pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2),
        .pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3),
        .pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0),
        .pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1),
        .pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av),
        .pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0),
        .pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1),
        .pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state),
        .pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable),
        .pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode),
        .pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state),
        .pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld),
        .pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld),
        .pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number),
        .pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld),
        .pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld),
        .pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value),
        .pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld),
        .pcie1_m_axis_cq_tdata(pcie1_m_axis_cq_tdata),
        .pcie1_m_axis_cq_tkeep(pcie1_m_axis_cq_tkeep),
        .pcie1_m_axis_cq_tlast(pcie1_m_axis_cq_tlast),
        .pcie1_m_axis_cq_tready(pcie1_m_axis_cq_tready),
        .pcie1_m_axis_cq_tuser(pcie1_m_axis_cq_tuser),
        .pcie1_m_axis_cq_tvalid(pcie1_m_axis_cq_tvalid),
        .pcie1_m_axis_rc_tdata(pcie1_m_axis_rc_tdata),
        .pcie1_m_axis_rc_tkeep(pcie1_m_axis_rc_tkeep),
        .pcie1_m_axis_rc_tlast(pcie1_m_axis_rc_tlast),
        .pcie1_m_axis_rc_tready(pcie1_m_axis_rc_tready),
        .pcie1_m_axis_rc_tuser(pcie1_m_axis_rc_tuser),
        .pcie1_m_axis_rc_tvalid(pcie1_m_axis_rc_tvalid),
        .pcie1_s_axis_cc_tdata(pcie1_s_axis_cc_tdata),
        .pcie1_s_axis_cc_tkeep(pcie1_s_axis_cc_tkeep),
        .pcie1_s_axis_cc_tlast(pcie1_s_axis_cc_tlast),
        .pcie1_s_axis_cc_tready(pcie1_s_axis_cc_tready),
        .pcie1_s_axis_cc_tuser(pcie1_s_axis_cc_tuser),
        .pcie1_s_axis_cc_tvalid(pcie1_s_axis_cc_tvalid),
        .pcie1_s_axis_rq_tdata(pcie1_s_axis_rq_tdata),
        .pcie1_s_axis_rq_tkeep(pcie1_s_axis_rq_tkeep),
        .pcie1_s_axis_rq_tlast(pcie1_s_axis_rq_tlast),
        .pcie1_s_axis_rq_tready(pcie1_s_axis_rq_tready),
        .pcie1_s_axis_rq_tuser(pcie1_s_axis_rq_tuser),
        .pcie1_s_axis_rq_tvalid(pcie1_s_axis_rq_tvalid),
        .pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av),
        .pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av),
        .pcie1_user_clk(pcie1_user_clk),
        .pcie1_user_lnk_up(pcie1_user_lnk_up),
        .pcie1_user_reset(pcie1_user_reset));
endmodule
