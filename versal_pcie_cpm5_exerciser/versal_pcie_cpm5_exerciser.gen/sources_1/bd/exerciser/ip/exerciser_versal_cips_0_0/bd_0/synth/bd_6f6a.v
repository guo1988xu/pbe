//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_6f6a.bd
//Design : bd_6f6a
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_6f6a,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_6f6a,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "exerciser_versal_cips_0_0.hwdef" *) 
module bd_6f6a
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *) input [7:0]PCIE1_GT_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *) input [7:0]PCIE1_GT_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *) output [7:0]PCIE1_GT_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *) output [7:0]PCIE1_GT_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *) input gt_refclk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control err_cor_in" *) input pcie1_cfg_control_err_cor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control err_uncor_in" *) input pcie1_cfg_control_err_uncor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_done" *) input pcie1_cfg_control_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_done_function_number" *) input [15:0]pcie1_cfg_control_flr_done_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control flr_in_process" *) output [3:0]pcie1_cfg_control_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control hot_reset_in" *) input pcie1_cfg_control_hot_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control hot_reset_out" *) output pcie1_cfg_control_hot_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control per_function_number" *) input [15:0]pcie1_cfg_control_per_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control per_function_req" *) input pcie1_cfg_control_per_function_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control power_state_change_ack" *) input pcie1_cfg_control_power_state_change_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control power_state_change_interrupt" *) output pcie1_cfg_control_power_state_change_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext function_number" *) output [15:0]pcie1_cfg_ext_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_data" *) input [31:0]pcie1_cfg_ext_read_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_data_valid" *) input pcie1_cfg_ext_read_data_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext read_received" *) output pcie1_cfg_ext_read_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext register_number" *) output [9:0]pcie1_cfg_ext_register_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_byte_enable" *) output [3:0]pcie1_cfg_ext_write_byte_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_data" *) output [31:0]pcie1_cfg_ext_write_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext write_received" *) output pcie1_cfg_ext_write_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLD" *) output [11:0]pcie1_cfg_fc_cpld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLD_SCALE" *) output [1:0]pcie1_cfg_fc_cpld_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLH" *) output [7:0]pcie1_cfg_fc_cplh;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc CPLH_SCALE" *) output [1:0]pcie1_cfg_fc_cplh_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPD" *) output [11:0]pcie1_cfg_fc_npd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPD_SCALE" *) output [1:0]pcie1_cfg_fc_npd_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPH" *) output [7:0]pcie1_cfg_fc_nph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc NPH_SCALE" *) output [1:0]pcie1_cfg_fc_nph_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PD" *) output [11:0]pcie1_cfg_fc_pd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PD_SCALE" *) output [1:0]pcie1_cfg_fc_pd_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PH" *) output [7:0]pcie1_cfg_fc_ph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc PH_SCALE" *) output [1:0]pcie1_cfg_fc_ph_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc SEL" *) input [2:0]pcie1_cfg_fc_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc VC_SEL" *) input pcie1_cfg_fc_vc_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt INTx_VECTOR" *) input [3:0]pcie1_cfg_interrupt_intx_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt PENDING" *) input [15:0]pcie1_cfg_interrupt_pending;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt SENT" *) output pcie1_cfg_interrupt_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt ADDR" *) input [9:0]pcie1_cfg_mgmt_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt BYTE_EN" *) input [3:0]pcie1_cfg_mgmt_byte_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt DEBUG_ACCESS" *) input pcie1_cfg_mgmt_debug_access;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt FUNCTION_NUMBER" *) input [15:0]pcie1_cfg_mgmt_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_DATA" *) output [31:0]pcie1_cfg_mgmt_read_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_EN" *) input pcie1_cfg_mgmt_read_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt READ_WRITE_DONE" *) output pcie1_cfg_mgmt_read_write_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt WRITE_DATA" *) input [31:0]pcie1_cfg_mgmt_write_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt WRITE_EN" *) input pcie1_cfg_mgmt_write_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd" *) output pcie1_cfg_msg_recd_recd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd_data" *) output [7:0]pcie1_cfg_msg_recd_recd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd recd_type" *) output [4:0]pcie1_cfg_msg_recd_recd_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT" *) input pcie1_cfg_msg_tx_transmit;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_DATA" *) input [31:0]pcie1_cfg_msg_tx_transmit_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_DONE" *) output pcie1_cfg_msg_tx_transmit_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx TRANSMIT_TYPE" *) input [2:0]pcie1_cfg_msg_tx_transmit_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi attr" *) input [2:0]pcie1_cfg_msi_attr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi data" *) output [31:0]pcie1_cfg_msi_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi enable" *) output pcie1_cfg_msi_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi fail" *) output pcie1_cfg_msi_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi function_number" *) input [15:0]pcie1_cfg_msi_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi int_vector" *) input [31:0]pcie1_cfg_msi_int_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mask_update" *) output pcie1_cfg_msi_mask_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mmenable" *) output [2:0]pcie1_cfg_msi_mmenable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status" *) input [31:0]pcie1_cfg_msi_pending_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_data_enable" *) input pcie1_cfg_msi_pending_status_data_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_function_num" *) input [3:0]pcie1_cfg_msi_pending_status_function_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi select" *) input [3:0]pcie1_cfg_msi_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi sent" *) output pcie1_cfg_msi_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_present" *) input pcie1_cfg_msi_tph_present;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_st_tag" *) input [7:0]pcie1_cfg_msi_tph_st_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_type" *) input [1:0]pcie1_cfg_msi_tph_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status 10b_tag_requester_enable" *) output pcie1_cfg_status_10b_tag_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status atomic_requester_enable" *) output pcie1_cfg_status_atomic_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status bus_number" *) output [7:0]pcie1_cfg_status_bus_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status cq_np_req" *) input [1:0]pcie1_cfg_status_cq_np_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status cq_np_req_count" *) output [5:0]pcie1_cfg_status_cq_np_req_count;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status current_speed" *) output [2:0]pcie1_cfg_status_current_speed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_cor_out" *) output pcie1_cfg_status_err_cor_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_fatal_out" *) output pcie1_cfg_status_err_fatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status err_nonfatal_out" *) output pcie1_cfg_status_err_nonfatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status ext_tag_enable" *) output pcie1_cfg_status_ext_tag_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status function_power_state" *) output [2:0]pcie1_cfg_status_function_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status function_status" *) output [3:0]pcie1_cfg_status_function_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status link_power_state" *) output [1:0]pcie1_cfg_status_link_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status local_error_out" *) output [4:0]pcie1_cfg_status_local_error_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status local_error_valid" *) output pcie1_cfg_status_local_error_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status ltssm_state" *) output [5:0]pcie1_cfg_status_ltssm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_pasid_width_control" *) output [79:0]pcie1_cfg_status_max_pasid_width_control;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_payload" *) output [1:0]pcie1_cfg_status_max_payload;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status max_read_req" *) output [2:0]pcie1_cfg_status_max_read_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status negotiated_width" *) output [2:0]pcie1_cfg_status_negotiated_width;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_control" *) output [47:0]pcie1_cfg_status_pasid_control;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_enable" *) output pcie1_cfg_status_pasid_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_exec_permission_enable" *) output pcie1_cfg_status_pasid_exec_permission_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pasid_privil_mode_enable" *) output pcie1_cfg_status_pasid_privil_mode_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status per_function_out" *) output [23:0]pcie1_cfg_status_per_function_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status per_function_vld" *) output pcie1_cfg_status_per_function_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status phy_link_down" *) output pcie1_cfg_status_phy_link_down;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status phy_link_status" *) output [1:0]pcie1_cfg_status_phy_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status pl_status_change" *) output pcie1_cfg_status_pl_status_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rcb_status" *) output pcie1_cfg_status_rcb_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num0" *) output [5:0]pcie1_cfg_status_rq_seq_num0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num1" *) output [5:0]pcie1_cfg_status_rq_seq_num1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num2" *) output [5:0]pcie1_cfg_status_rq_seq_num2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num3" *) output [5:0]pcie1_cfg_status_rq_seq_num3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld0" *) output pcie1_cfg_status_rq_seq_num_vld0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld1" *) output pcie1_cfg_status_rq_seq_num_vld1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld2" *) output pcie1_cfg_status_rq_seq_num_vld2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_seq_num_vld3" *) output pcie1_cfg_status_rq_seq_num_vld3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag0" *) output [19:0]pcie1_cfg_status_rq_tag0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag1" *) output [19:0]pcie1_cfg_status_rq_tag1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_av" *) output [3:0]pcie1_cfg_status_rq_tag_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_vld0" *) output [1:0]pcie1_cfg_status_rq_tag_vld0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rq_tag_vld1" *) output [1:0]pcie1_cfg_status_rq_tag_vld1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status rx_pm_state" *) output [1:0]pcie1_cfg_status_rx_pm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tph_requester_enable" *) output [3:0]pcie1_cfg_status_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tph_st_mode" *) output [11:0]pcie1_cfg_status_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status tx_pm_state" *) output [1:0]pcie1_cfg_status_tx_pm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_bme_vld" *) output pcie1_cfg_status_wrreq_bme_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_flr_vld" *) output pcie1_cfg_status_wrreq_flr_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_function_number" *) output [15:0]pcie1_cfg_status_wrreq_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_msi_vld" *) output pcie1_cfg_status_wrreq_msi_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_msix_vld" *) output pcie1_cfg_status_wrreq_msix_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_out_value" *) output [3:0]pcie1_cfg_status_wrreq_out_value;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status wrreq_vfe_vld" *) output pcie1_cfg_status_wrreq_vfe_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_cq, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 465" *) output [1023:0]pcie1_m_axis_cq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TKEEP" *) output [31:0]pcie1_m_axis_cq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TLAST" *) output pcie1_m_axis_cq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TREADY" *) input pcie1_m_axis_cq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TUSER" *) output [464:0]pcie1_m_axis_cq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TVALID" *) output pcie1_m_axis_cq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_rc, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 337" *) output [1023:0]pcie1_m_axis_rc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TKEEP" *) output [31:0]pcie1_m_axis_rc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TLAST" *) output pcie1_m_axis_rc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TREADY" *) input pcie1_m_axis_rc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TUSER" *) output [336:0]pcie1_m_axis_rc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TVALID" *) output pcie1_m_axis_rc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_cc, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 165" *) input [1023:0]pcie1_s_axis_cc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TKEEP" *) input [31:0]pcie1_s_axis_cc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TLAST" *) input pcie1_s_axis_cc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TREADY" *) output pcie1_s_axis_cc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TUSER" *) input [164:0]pcie1_s_axis_cc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TVALID" *) input pcie1_s_axis_cc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_rq, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 373" *) input [1023:0]pcie1_s_axis_rq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TKEEP" *) input [31:0]pcie1_s_axis_rq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TLAST" *) input pcie1_s_axis_rq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TREADY" *) output pcie1_s_axis_rq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TUSER" *) input [372:0]pcie1_s_axis_rq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TVALID" *) input pcie1_s_axis_rq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc npd_av" *) output [3:0]pcie1_transmit_fc_npd_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc nph_av" *) output [3:0]pcie1_transmit_fc_nph_av;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE1_USER_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE1_USER_CLK, ASSOCIATED_BUSIF pcie1_m_axis_cq:pcie1_m_axis_rc:pcie1_s_axis_cc:pcie1_s_axis_rq, ASSOCIATED_RESET pcie1_user_reset, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pcie1_user_clk;
  output pcie1_user_lnk_up;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE1_USER_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE1_USER_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output pcie1_user_reset;

  wire [7:0]cpm_0_PCIE1_GT_GRX_N;
  wire [7:0]cpm_0_PCIE1_GT_GRX_P;
  wire [7:0]cpm_0_PCIE1_GT_GTX_N;
  wire [7:0]cpm_0_PCIE1_GT_GTX_P;
  wire cpm_0_cpm_cor_irq;
  wire cpm_0_cpm_misc_irq;
  wire cpm_0_cpm_uncor_irq;
  wire [15:0]cpm_0_pcie1_cfg_ext_function_number;
  wire [31:0]cpm_0_pcie1_cfg_ext_read_data;
  wire cpm_0_pcie1_cfg_ext_read_data_valid;
  wire cpm_0_pcie1_cfg_ext_read_received;
  wire [9:0]cpm_0_pcie1_cfg_ext_register_number;
  wire [3:0]cpm_0_pcie1_cfg_ext_write_byte_enable;
  wire [31:0]cpm_0_pcie1_cfg_ext_write_data;
  wire cpm_0_pcie1_cfg_ext_write_received;
  wire [11:0]cpm_0_pcie1_cfg_fc_CPLD;
  wire [1:0]cpm_0_pcie1_cfg_fc_CPLD_SCALE;
  wire [7:0]cpm_0_pcie1_cfg_fc_CPLH;
  wire [1:0]cpm_0_pcie1_cfg_fc_CPLH_SCALE;
  wire [11:0]cpm_0_pcie1_cfg_fc_NPD;
  wire [1:0]cpm_0_pcie1_cfg_fc_NPD_SCALE;
  wire [7:0]cpm_0_pcie1_cfg_fc_NPH;
  wire [1:0]cpm_0_pcie1_cfg_fc_NPH_SCALE;
  wire [11:0]cpm_0_pcie1_cfg_fc_PD;
  wire [1:0]cpm_0_pcie1_cfg_fc_PD_SCALE;
  wire [7:0]cpm_0_pcie1_cfg_fc_PH;
  wire [1:0]cpm_0_pcie1_cfg_fc_PH_SCALE;
  wire [2:0]cpm_0_pcie1_cfg_fc_SEL;
  wire cpm_0_pcie1_cfg_fc_VC_SEL;
  wire cpm_0_pcie1_cfg_msg_recd_recd;
  wire [7:0]cpm_0_pcie1_cfg_msg_recd_recd_data;
  wire [4:0]cpm_0_pcie1_cfg_msg_recd_recd_type;
  wire cpm_0_pcie1_cfg_msg_tx_TRANSMIT;
  wire [31:0]cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DATA;
  wire cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DONE;
  wire [2:0]cpm_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE;
  wire cpm_0_pcie1_cfg_status_10b_tag_requester_enable;
  wire cpm_0_pcie1_cfg_status_atomic_requester_enable;
  wire [7:0]cpm_0_pcie1_cfg_status_bus_number;
  wire [1:0]cpm_0_pcie1_cfg_status_cq_np_req;
  wire [5:0]cpm_0_pcie1_cfg_status_cq_np_req_count;
  wire [2:0]cpm_0_pcie1_cfg_status_current_speed;
  wire cpm_0_pcie1_cfg_status_err_cor_out;
  wire cpm_0_pcie1_cfg_status_err_fatal_out;
  wire cpm_0_pcie1_cfg_status_err_nonfatal_out;
  wire cpm_0_pcie1_cfg_status_ext_tag_enable;
  wire [2:0]cpm_0_pcie1_cfg_status_function_power_state;
  wire [3:0]cpm_0_pcie1_cfg_status_function_status;
  wire [1:0]cpm_0_pcie1_cfg_status_link_power_state;
  wire [4:0]cpm_0_pcie1_cfg_status_local_error_out;
  wire cpm_0_pcie1_cfg_status_local_error_valid;
  wire [5:0]cpm_0_pcie1_cfg_status_ltssm_state;
  wire [79:0]cpm_0_pcie1_cfg_status_max_pasid_width_control;
  wire [1:0]cpm_0_pcie1_cfg_status_max_payload;
  wire [2:0]cpm_0_pcie1_cfg_status_max_read_req;
  wire [2:0]cpm_0_pcie1_cfg_status_negotiated_width;
  wire [47:0]cpm_0_pcie1_cfg_status_pasid_control;
  wire cpm_0_pcie1_cfg_status_pasid_enable;
  wire cpm_0_pcie1_cfg_status_pasid_exec_permission_enable;
  wire cpm_0_pcie1_cfg_status_pasid_privil_mode_enable;
  wire [23:0]cpm_0_pcie1_cfg_status_per_function_out;
  wire cpm_0_pcie1_cfg_status_per_function_vld;
  wire cpm_0_pcie1_cfg_status_phy_link_down;
  wire [1:0]cpm_0_pcie1_cfg_status_phy_link_status;
  wire cpm_0_pcie1_cfg_status_pl_status_change;
  wire cpm_0_pcie1_cfg_status_rcb_status;
  wire [5:0]cpm_0_pcie1_cfg_status_rq_seq_num0;
  wire [5:0]cpm_0_pcie1_cfg_status_rq_seq_num1;
  wire [5:0]cpm_0_pcie1_cfg_status_rq_seq_num2;
  wire [5:0]cpm_0_pcie1_cfg_status_rq_seq_num3;
  wire cpm_0_pcie1_cfg_status_rq_seq_num_vld0;
  wire cpm_0_pcie1_cfg_status_rq_seq_num_vld1;
  wire cpm_0_pcie1_cfg_status_rq_seq_num_vld2;
  wire cpm_0_pcie1_cfg_status_rq_seq_num_vld3;
  wire [19:0]cpm_0_pcie1_cfg_status_rq_tag0;
  wire [19:0]cpm_0_pcie1_cfg_status_rq_tag1;
  wire [3:0]cpm_0_pcie1_cfg_status_rq_tag_av;
  wire [1:0]cpm_0_pcie1_cfg_status_rq_tag_vld0;
  wire [1:0]cpm_0_pcie1_cfg_status_rq_tag_vld1;
  wire [1:0]cpm_0_pcie1_cfg_status_rx_pm_state;
  wire [3:0]cpm_0_pcie1_cfg_status_tph_requester_enable;
  wire [11:0]cpm_0_pcie1_cfg_status_tph_st_mode;
  wire [1:0]cpm_0_pcie1_cfg_status_tx_pm_state;
  wire cpm_0_pcie1_cfg_status_wrreq_bme_vld;
  wire cpm_0_pcie1_cfg_status_wrreq_flr_vld;
  wire [15:0]cpm_0_pcie1_cfg_status_wrreq_function_number;
  wire cpm_0_pcie1_cfg_status_wrreq_msi_vld;
  wire cpm_0_pcie1_cfg_status_wrreq_msix_vld;
  wire [3:0]cpm_0_pcie1_cfg_status_wrreq_out_value;
  wire cpm_0_pcie1_cfg_status_wrreq_vfe_vld;
  wire [1023:0]cpm_0_pcie1_m_axis_cq_TDATA;
  wire [31:0]cpm_0_pcie1_m_axis_cq_TKEEP;
  wire cpm_0_pcie1_m_axis_cq_TLAST;
  wire cpm_0_pcie1_m_axis_cq_TREADY;
  wire [464:0]cpm_0_pcie1_m_axis_cq_TUSER;
  wire cpm_0_pcie1_m_axis_cq_TVALID;
  wire [1023:0]cpm_0_pcie1_m_axis_rc_TDATA;
  wire [31:0]cpm_0_pcie1_m_axis_rc_TKEEP;
  wire cpm_0_pcie1_m_axis_rc_TLAST;
  wire cpm_0_pcie1_m_axis_rc_TREADY;
  wire [336:0]cpm_0_pcie1_m_axis_rc_TUSER;
  wire cpm_0_pcie1_m_axis_rc_TVALID;
  wire [3:0]cpm_0_pcie1_transmit_fc_npd_av;
  wire [3:0]cpm_0_pcie1_transmit_fc_nph_av;
  wire cpm_0_pcie1_user_clk;
  wire cpm_0_pcie1_user_lnk_up;
  wire cpm_0_pcie1_user_reset;
  wire cpm_irq0_1;
  wire cpm_irq1_1;
  wire gt_refclk1_1_CLK_N;
  wire gt_refclk1_1_CLK_P;
  wire pcie1_cfg_control_1_err_cor_in;
  wire pcie1_cfg_control_1_err_uncor_in;
  wire pcie1_cfg_control_1_flr_done;
  wire [15:0]pcie1_cfg_control_1_flr_done_function_number;
  wire [3:0]pcie1_cfg_control_1_flr_in_process;
  wire pcie1_cfg_control_1_hot_reset_in;
  wire pcie1_cfg_control_1_hot_reset_out;
  wire [15:0]pcie1_cfg_control_1_per_function_number;
  wire pcie1_cfg_control_1_per_function_req;
  wire pcie1_cfg_control_1_power_state_change_ack;
  wire pcie1_cfg_control_1_power_state_change_interrupt;
  wire [3:0]pcie1_cfg_interrupt_1_INTx_VECTOR;
  wire [15:0]pcie1_cfg_interrupt_1_PENDING;
  wire pcie1_cfg_interrupt_1_SENT;
  wire [9:0]pcie1_cfg_mgmt_1_ADDR;
  wire [3:0]pcie1_cfg_mgmt_1_BYTE_EN;
  wire pcie1_cfg_mgmt_1_DEBUG_ACCESS;
  wire [15:0]pcie1_cfg_mgmt_1_FUNCTION_NUMBER;
  wire [31:0]pcie1_cfg_mgmt_1_READ_DATA;
  wire pcie1_cfg_mgmt_1_READ_EN;
  wire pcie1_cfg_mgmt_1_READ_WRITE_DONE;
  wire [31:0]pcie1_cfg_mgmt_1_WRITE_DATA;
  wire pcie1_cfg_mgmt_1_WRITE_EN;
  wire [2:0]pcie1_cfg_msi_1_attr;
  wire [31:0]pcie1_cfg_msi_1_data;
  wire pcie1_cfg_msi_1_enable;
  wire pcie1_cfg_msi_1_fail;
  wire [15:0]pcie1_cfg_msi_1_function_number;
  wire [31:0]pcie1_cfg_msi_1_int_vector;
  wire pcie1_cfg_msi_1_mask_update;
  wire [2:0]pcie1_cfg_msi_1_mmenable;
  wire [31:0]pcie1_cfg_msi_1_pending_status;
  wire pcie1_cfg_msi_1_pending_status_data_enable;
  wire [3:0]pcie1_cfg_msi_1_pending_status_function_num;
  wire [3:0]pcie1_cfg_msi_1_select;
  wire pcie1_cfg_msi_1_sent;
  wire pcie1_cfg_msi_1_tph_present;
  wire [7:0]pcie1_cfg_msi_1_tph_st_tag;
  wire [1:0]pcie1_cfg_msi_1_tph_type;
  wire [1023:0]pcie1_s_axis_cc_1_TDATA;
  wire [31:0]pcie1_s_axis_cc_1_TKEEP;
  wire pcie1_s_axis_cc_1_TLAST;
  wire pcie1_s_axis_cc_1_TREADY;
  wire [164:0]pcie1_s_axis_cc_1_TUSER;
  wire pcie1_s_axis_cc_1_TVALID;
  wire [1023:0]pcie1_s_axis_rq_1_TDATA;
  wire [31:0]pcie1_s_axis_rq_1_TKEEP;
  wire pcie1_s_axis_rq_1_TLAST;
  wire pcie1_s_axis_rq_1_TREADY;
  wire [372:0]pcie1_s_axis_rq_1_TUSER;
  wire pcie1_s_axis_rq_1_TVALID;
  wire pspmc_0_IF_PS_CPM_cpm_osc_clk_div2;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_apb_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_hold_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_init_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr;
  wire [3:0]pspmc_0_IF_PS_CPM_cpm_pcr_o_disable;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_cal;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_tristate;
  wire pspmc_0_IF_PS_CPM_cpmps_corr_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_misc_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_uncorr_irq;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link0_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link1_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_lpd_refclk_in;
  wire pspmc_0_IF_PS_CPM_lpd_swclk;
  wire pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bresp;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rresp;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid;
  wire pspmc_0_IF_PS_CPM_perst0n;
  wire pspmc_0_IF_PS_CPM_perst1n;
  wire pspmc_0_IF_PS_CPM_phy_ready_frbot;
  wire pspmc_0_IF_PS_CPM_phy_ready_tobot;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bresp;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rresp;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req;

  assign PCIE1_GT_gtx_n[7:0] = cpm_0_PCIE1_GT_GTX_N;
  assign PCIE1_GT_gtx_p[7:0] = cpm_0_PCIE1_GT_GTX_P;
  assign cpm_0_PCIE1_GT_GRX_N = PCIE1_GT_grx_n[7:0];
  assign cpm_0_PCIE1_GT_GRX_P = PCIE1_GT_grx_p[7:0];
  assign cpm_0_pcie1_cfg_ext_read_data = pcie1_cfg_ext_read_data[31:0];
  assign cpm_0_pcie1_cfg_ext_read_data_valid = pcie1_cfg_ext_read_data_valid;
  assign cpm_0_pcie1_cfg_fc_SEL = pcie1_cfg_fc_sel[2:0];
  assign cpm_0_pcie1_cfg_fc_VC_SEL = pcie1_cfg_fc_vc_sel;
  assign cpm_0_pcie1_cfg_msg_tx_TRANSMIT = pcie1_cfg_msg_tx_transmit;
  assign cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DATA = pcie1_cfg_msg_tx_transmit_data[31:0];
  assign cpm_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE = pcie1_cfg_msg_tx_transmit_type[2:0];
  assign cpm_0_pcie1_cfg_status_cq_np_req = pcie1_cfg_status_cq_np_req[1:0];
  assign cpm_0_pcie1_m_axis_cq_TREADY = pcie1_m_axis_cq_tready;
  assign cpm_0_pcie1_m_axis_rc_TREADY = pcie1_m_axis_rc_tready;
  assign cpm_cor_irq = cpm_0_cpm_cor_irq;
  assign cpm_irq0_1 = cpm_irq0;
  assign cpm_irq1_1 = cpm_irq1;
  assign cpm_misc_irq = cpm_0_cpm_misc_irq;
  assign cpm_uncor_irq = cpm_0_cpm_uncor_irq;
  assign gt_refclk1_1_CLK_N = gt_refclk1_clk_n;
  assign gt_refclk1_1_CLK_P = gt_refclk1_clk_p;
  assign pcie1_cfg_control_1_err_cor_in = pcie1_cfg_control_err_cor_in;
  assign pcie1_cfg_control_1_err_uncor_in = pcie1_cfg_control_err_uncor_in;
  assign pcie1_cfg_control_1_flr_done = pcie1_cfg_control_flr_done;
  assign pcie1_cfg_control_1_flr_done_function_number = pcie1_cfg_control_flr_done_function_number[15:0];
  assign pcie1_cfg_control_1_hot_reset_in = pcie1_cfg_control_hot_reset_in;
  assign pcie1_cfg_control_1_per_function_number = pcie1_cfg_control_per_function_number[15:0];
  assign pcie1_cfg_control_1_per_function_req = pcie1_cfg_control_per_function_req;
  assign pcie1_cfg_control_1_power_state_change_ack = pcie1_cfg_control_power_state_change_ack;
  assign pcie1_cfg_control_flr_in_process[3:0] = pcie1_cfg_control_1_flr_in_process;
  assign pcie1_cfg_control_hot_reset_out = pcie1_cfg_control_1_hot_reset_out;
  assign pcie1_cfg_control_power_state_change_interrupt = pcie1_cfg_control_1_power_state_change_interrupt;
  assign pcie1_cfg_ext_function_number[15:0] = cpm_0_pcie1_cfg_ext_function_number;
  assign pcie1_cfg_ext_read_received = cpm_0_pcie1_cfg_ext_read_received;
  assign pcie1_cfg_ext_register_number[9:0] = cpm_0_pcie1_cfg_ext_register_number;
  assign pcie1_cfg_ext_write_byte_enable[3:0] = cpm_0_pcie1_cfg_ext_write_byte_enable;
  assign pcie1_cfg_ext_write_data[31:0] = cpm_0_pcie1_cfg_ext_write_data;
  assign pcie1_cfg_ext_write_received = cpm_0_pcie1_cfg_ext_write_received;
  assign pcie1_cfg_fc_cpld[11:0] = cpm_0_pcie1_cfg_fc_CPLD;
  assign pcie1_cfg_fc_cpld_scale[1:0] = cpm_0_pcie1_cfg_fc_CPLD_SCALE;
  assign pcie1_cfg_fc_cplh[7:0] = cpm_0_pcie1_cfg_fc_CPLH;
  assign pcie1_cfg_fc_cplh_scale[1:0] = cpm_0_pcie1_cfg_fc_CPLH_SCALE;
  assign pcie1_cfg_fc_npd[11:0] = cpm_0_pcie1_cfg_fc_NPD;
  assign pcie1_cfg_fc_npd_scale[1:0] = cpm_0_pcie1_cfg_fc_NPD_SCALE;
  assign pcie1_cfg_fc_nph[7:0] = cpm_0_pcie1_cfg_fc_NPH;
  assign pcie1_cfg_fc_nph_scale[1:0] = cpm_0_pcie1_cfg_fc_NPH_SCALE;
  assign pcie1_cfg_fc_pd[11:0] = cpm_0_pcie1_cfg_fc_PD;
  assign pcie1_cfg_fc_pd_scale[1:0] = cpm_0_pcie1_cfg_fc_PD_SCALE;
  assign pcie1_cfg_fc_ph[7:0] = cpm_0_pcie1_cfg_fc_PH;
  assign pcie1_cfg_fc_ph_scale[1:0] = cpm_0_pcie1_cfg_fc_PH_SCALE;
  assign pcie1_cfg_interrupt_1_INTx_VECTOR = pcie1_cfg_interrupt_intx_vector[3:0];
  assign pcie1_cfg_interrupt_1_PENDING = pcie1_cfg_interrupt_pending[15:0];
  assign pcie1_cfg_interrupt_sent = pcie1_cfg_interrupt_1_SENT;
  assign pcie1_cfg_mgmt_1_ADDR = pcie1_cfg_mgmt_addr[9:0];
  assign pcie1_cfg_mgmt_1_BYTE_EN = pcie1_cfg_mgmt_byte_en[3:0];
  assign pcie1_cfg_mgmt_1_DEBUG_ACCESS = pcie1_cfg_mgmt_debug_access;
  assign pcie1_cfg_mgmt_1_FUNCTION_NUMBER = pcie1_cfg_mgmt_function_number[15:0];
  assign pcie1_cfg_mgmt_1_READ_EN = pcie1_cfg_mgmt_read_en;
  assign pcie1_cfg_mgmt_1_WRITE_DATA = pcie1_cfg_mgmt_write_data[31:0];
  assign pcie1_cfg_mgmt_1_WRITE_EN = pcie1_cfg_mgmt_write_en;
  assign pcie1_cfg_mgmt_read_data[31:0] = pcie1_cfg_mgmt_1_READ_DATA;
  assign pcie1_cfg_mgmt_read_write_done = pcie1_cfg_mgmt_1_READ_WRITE_DONE;
  assign pcie1_cfg_msg_recd_recd = cpm_0_pcie1_cfg_msg_recd_recd;
  assign pcie1_cfg_msg_recd_recd_data[7:0] = cpm_0_pcie1_cfg_msg_recd_recd_data;
  assign pcie1_cfg_msg_recd_recd_type[4:0] = cpm_0_pcie1_cfg_msg_recd_recd_type;
  assign pcie1_cfg_msg_tx_transmit_done = cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DONE;
  assign pcie1_cfg_msi_1_attr = pcie1_cfg_msi_attr[2:0];
  assign pcie1_cfg_msi_1_function_number = pcie1_cfg_msi_function_number[15:0];
  assign pcie1_cfg_msi_1_int_vector = pcie1_cfg_msi_int_vector[31:0];
  assign pcie1_cfg_msi_1_pending_status = pcie1_cfg_msi_pending_status[31:0];
  assign pcie1_cfg_msi_1_pending_status_data_enable = pcie1_cfg_msi_pending_status_data_enable;
  assign pcie1_cfg_msi_1_pending_status_function_num = pcie1_cfg_msi_pending_status_function_num[3:0];
  assign pcie1_cfg_msi_1_select = pcie1_cfg_msi_select[3:0];
  assign pcie1_cfg_msi_1_tph_present = pcie1_cfg_msi_tph_present;
  assign pcie1_cfg_msi_1_tph_st_tag = pcie1_cfg_msi_tph_st_tag[7:0];
  assign pcie1_cfg_msi_1_tph_type = pcie1_cfg_msi_tph_type[1:0];
  assign pcie1_cfg_msi_data[31:0] = pcie1_cfg_msi_1_data;
  assign pcie1_cfg_msi_enable = pcie1_cfg_msi_1_enable;
  assign pcie1_cfg_msi_fail = pcie1_cfg_msi_1_fail;
  assign pcie1_cfg_msi_mask_update = pcie1_cfg_msi_1_mask_update;
  assign pcie1_cfg_msi_mmenable[2:0] = pcie1_cfg_msi_1_mmenable;
  assign pcie1_cfg_msi_sent = pcie1_cfg_msi_1_sent;
  assign pcie1_cfg_status_10b_tag_requester_enable = cpm_0_pcie1_cfg_status_10b_tag_requester_enable;
  assign pcie1_cfg_status_atomic_requester_enable = cpm_0_pcie1_cfg_status_atomic_requester_enable;
  assign pcie1_cfg_status_bus_number[7:0] = cpm_0_pcie1_cfg_status_bus_number;
  assign pcie1_cfg_status_cq_np_req_count[5:0] = cpm_0_pcie1_cfg_status_cq_np_req_count;
  assign pcie1_cfg_status_current_speed[2:0] = cpm_0_pcie1_cfg_status_current_speed;
  assign pcie1_cfg_status_err_cor_out = cpm_0_pcie1_cfg_status_err_cor_out;
  assign pcie1_cfg_status_err_fatal_out = cpm_0_pcie1_cfg_status_err_fatal_out;
  assign pcie1_cfg_status_err_nonfatal_out = cpm_0_pcie1_cfg_status_err_nonfatal_out;
  assign pcie1_cfg_status_ext_tag_enable = cpm_0_pcie1_cfg_status_ext_tag_enable;
  assign pcie1_cfg_status_function_power_state[2:0] = cpm_0_pcie1_cfg_status_function_power_state;
  assign pcie1_cfg_status_function_status[3:0] = cpm_0_pcie1_cfg_status_function_status;
  assign pcie1_cfg_status_link_power_state[1:0] = cpm_0_pcie1_cfg_status_link_power_state;
  assign pcie1_cfg_status_local_error_out[4:0] = cpm_0_pcie1_cfg_status_local_error_out;
  assign pcie1_cfg_status_local_error_valid = cpm_0_pcie1_cfg_status_local_error_valid;
  assign pcie1_cfg_status_ltssm_state[5:0] = cpm_0_pcie1_cfg_status_ltssm_state;
  assign pcie1_cfg_status_max_pasid_width_control[79:0] = cpm_0_pcie1_cfg_status_max_pasid_width_control;
  assign pcie1_cfg_status_max_payload[1:0] = cpm_0_pcie1_cfg_status_max_payload;
  assign pcie1_cfg_status_max_read_req[2:0] = cpm_0_pcie1_cfg_status_max_read_req;
  assign pcie1_cfg_status_negotiated_width[2:0] = cpm_0_pcie1_cfg_status_negotiated_width;
  assign pcie1_cfg_status_pasid_control[47:0] = cpm_0_pcie1_cfg_status_pasid_control;
  assign pcie1_cfg_status_pasid_enable = cpm_0_pcie1_cfg_status_pasid_enable;
  assign pcie1_cfg_status_pasid_exec_permission_enable = cpm_0_pcie1_cfg_status_pasid_exec_permission_enable;
  assign pcie1_cfg_status_pasid_privil_mode_enable = cpm_0_pcie1_cfg_status_pasid_privil_mode_enable;
  assign pcie1_cfg_status_per_function_out[23:0] = cpm_0_pcie1_cfg_status_per_function_out;
  assign pcie1_cfg_status_per_function_vld = cpm_0_pcie1_cfg_status_per_function_vld;
  assign pcie1_cfg_status_phy_link_down = cpm_0_pcie1_cfg_status_phy_link_down;
  assign pcie1_cfg_status_phy_link_status[1:0] = cpm_0_pcie1_cfg_status_phy_link_status;
  assign pcie1_cfg_status_pl_status_change = cpm_0_pcie1_cfg_status_pl_status_change;
  assign pcie1_cfg_status_rcb_status = cpm_0_pcie1_cfg_status_rcb_status;
  assign pcie1_cfg_status_rq_seq_num0[5:0] = cpm_0_pcie1_cfg_status_rq_seq_num0;
  assign pcie1_cfg_status_rq_seq_num1[5:0] = cpm_0_pcie1_cfg_status_rq_seq_num1;
  assign pcie1_cfg_status_rq_seq_num2[5:0] = cpm_0_pcie1_cfg_status_rq_seq_num2;
  assign pcie1_cfg_status_rq_seq_num3[5:0] = cpm_0_pcie1_cfg_status_rq_seq_num3;
  assign pcie1_cfg_status_rq_seq_num_vld0 = cpm_0_pcie1_cfg_status_rq_seq_num_vld0;
  assign pcie1_cfg_status_rq_seq_num_vld1 = cpm_0_pcie1_cfg_status_rq_seq_num_vld1;
  assign pcie1_cfg_status_rq_seq_num_vld2 = cpm_0_pcie1_cfg_status_rq_seq_num_vld2;
  assign pcie1_cfg_status_rq_seq_num_vld3 = cpm_0_pcie1_cfg_status_rq_seq_num_vld3;
  assign pcie1_cfg_status_rq_tag0[19:0] = cpm_0_pcie1_cfg_status_rq_tag0;
  assign pcie1_cfg_status_rq_tag1[19:0] = cpm_0_pcie1_cfg_status_rq_tag1;
  assign pcie1_cfg_status_rq_tag_av[3:0] = cpm_0_pcie1_cfg_status_rq_tag_av;
  assign pcie1_cfg_status_rq_tag_vld0[1:0] = cpm_0_pcie1_cfg_status_rq_tag_vld0;
  assign pcie1_cfg_status_rq_tag_vld1[1:0] = cpm_0_pcie1_cfg_status_rq_tag_vld1;
  assign pcie1_cfg_status_rx_pm_state[1:0] = cpm_0_pcie1_cfg_status_rx_pm_state;
  assign pcie1_cfg_status_tph_requester_enable[3:0] = cpm_0_pcie1_cfg_status_tph_requester_enable;
  assign pcie1_cfg_status_tph_st_mode[11:0] = cpm_0_pcie1_cfg_status_tph_st_mode;
  assign pcie1_cfg_status_tx_pm_state[1:0] = cpm_0_pcie1_cfg_status_tx_pm_state;
  assign pcie1_cfg_status_wrreq_bme_vld = cpm_0_pcie1_cfg_status_wrreq_bme_vld;
  assign pcie1_cfg_status_wrreq_flr_vld = cpm_0_pcie1_cfg_status_wrreq_flr_vld;
  assign pcie1_cfg_status_wrreq_function_number[15:0] = cpm_0_pcie1_cfg_status_wrreq_function_number;
  assign pcie1_cfg_status_wrreq_msi_vld = cpm_0_pcie1_cfg_status_wrreq_msi_vld;
  assign pcie1_cfg_status_wrreq_msix_vld = cpm_0_pcie1_cfg_status_wrreq_msix_vld;
  assign pcie1_cfg_status_wrreq_out_value[3:0] = cpm_0_pcie1_cfg_status_wrreq_out_value;
  assign pcie1_cfg_status_wrreq_vfe_vld = cpm_0_pcie1_cfg_status_wrreq_vfe_vld;
  assign pcie1_m_axis_cq_tdata[1023:0] = cpm_0_pcie1_m_axis_cq_TDATA;
  assign pcie1_m_axis_cq_tkeep[31:0] = cpm_0_pcie1_m_axis_cq_TKEEP;
  assign pcie1_m_axis_cq_tlast = cpm_0_pcie1_m_axis_cq_TLAST;
  assign pcie1_m_axis_cq_tuser[464:0] = cpm_0_pcie1_m_axis_cq_TUSER;
  assign pcie1_m_axis_cq_tvalid = cpm_0_pcie1_m_axis_cq_TVALID;
  assign pcie1_m_axis_rc_tdata[1023:0] = cpm_0_pcie1_m_axis_rc_TDATA;
  assign pcie1_m_axis_rc_tkeep[31:0] = cpm_0_pcie1_m_axis_rc_TKEEP;
  assign pcie1_m_axis_rc_tlast = cpm_0_pcie1_m_axis_rc_TLAST;
  assign pcie1_m_axis_rc_tuser[336:0] = cpm_0_pcie1_m_axis_rc_TUSER;
  assign pcie1_m_axis_rc_tvalid = cpm_0_pcie1_m_axis_rc_TVALID;
  assign pcie1_s_axis_cc_1_TDATA = pcie1_s_axis_cc_tdata[1023:0];
  assign pcie1_s_axis_cc_1_TKEEP = pcie1_s_axis_cc_tkeep[31:0];
  assign pcie1_s_axis_cc_1_TLAST = pcie1_s_axis_cc_tlast;
  assign pcie1_s_axis_cc_1_TUSER = pcie1_s_axis_cc_tuser[164:0];
  assign pcie1_s_axis_cc_1_TVALID = pcie1_s_axis_cc_tvalid;
  assign pcie1_s_axis_cc_tready = pcie1_s_axis_cc_1_TREADY;
  assign pcie1_s_axis_rq_1_TDATA = pcie1_s_axis_rq_tdata[1023:0];
  assign pcie1_s_axis_rq_1_TKEEP = pcie1_s_axis_rq_tkeep[31:0];
  assign pcie1_s_axis_rq_1_TLAST = pcie1_s_axis_rq_tlast;
  assign pcie1_s_axis_rq_1_TUSER = pcie1_s_axis_rq_tuser[372:0];
  assign pcie1_s_axis_rq_1_TVALID = pcie1_s_axis_rq_tvalid;
  assign pcie1_s_axis_rq_tready = pcie1_s_axis_rq_1_TREADY;
  assign pcie1_transmit_fc_npd_av[3:0] = cpm_0_pcie1_transmit_fc_npd_av;
  assign pcie1_transmit_fc_nph_av[3:0] = cpm_0_pcie1_transmit_fc_nph_av;
  assign pcie1_user_clk = cpm_0_pcie1_user_clk;
  assign pcie1_user_lnk_up = cpm_0_pcie1_user_lnk_up;
  assign pcie1_user_reset = cpm_0_pcie1_user_reset;
  bd_6f6a_cpm_0_0 cpm_0
       (.cpm_cor_irq(cpm_0_cpm_cor_irq),
        .cpm_irq0(cpm_irq0_1),
        .cpm_irq1(cpm_irq1_1),
        .cpm_misc_irq(cpm_0_cpm_misc_irq),
        .cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpm_uncor_irq(cpm_0_cpm_uncor_irq),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .gt_refclk1_n(gt_refclk1_1_CLK_N),
        .gt_refclk1_p(gt_refclk1_1_CLK_P),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
        .pcie1_cfg_10b_tag_requester_enable(cpm_0_pcie1_cfg_status_10b_tag_requester_enable),
        .pcie1_cfg_atomic_requester_enable(cpm_0_pcie1_cfg_status_atomic_requester_enable),
        .pcie1_cfg_bus_number(cpm_0_pcie1_cfg_status_bus_number),
        .pcie1_cfg_current_speed(cpm_0_pcie1_cfg_status_current_speed),
        .pcie1_cfg_err_cor_in(pcie1_cfg_control_1_err_cor_in),
        .pcie1_cfg_err_cor_out(cpm_0_pcie1_cfg_status_err_cor_out),
        .pcie1_cfg_err_fatal_out(cpm_0_pcie1_cfg_status_err_fatal_out),
        .pcie1_cfg_err_nonfatal_out(cpm_0_pcie1_cfg_status_err_nonfatal_out),
        .pcie1_cfg_err_uncor_in(pcie1_cfg_control_1_err_uncor_in),
        .pcie1_cfg_ext_function_number(cpm_0_pcie1_cfg_ext_function_number),
        .pcie1_cfg_ext_read_data(cpm_0_pcie1_cfg_ext_read_data),
        .pcie1_cfg_ext_read_data_valid(cpm_0_pcie1_cfg_ext_read_data_valid),
        .pcie1_cfg_ext_read_received(cpm_0_pcie1_cfg_ext_read_received),
        .pcie1_cfg_ext_register_number(cpm_0_pcie1_cfg_ext_register_number),
        .pcie1_cfg_ext_tag_enable(cpm_0_pcie1_cfg_status_ext_tag_enable),
        .pcie1_cfg_ext_write_byte_enable(cpm_0_pcie1_cfg_ext_write_byte_enable),
        .pcie1_cfg_ext_write_data(cpm_0_pcie1_cfg_ext_write_data),
        .pcie1_cfg_ext_write_received(cpm_0_pcie1_cfg_ext_write_received),
        .pcie1_cfg_fc_cpld(cpm_0_pcie1_cfg_fc_CPLD),
        .pcie1_cfg_fc_cpld_scale(cpm_0_pcie1_cfg_fc_CPLD_SCALE),
        .pcie1_cfg_fc_cplh(cpm_0_pcie1_cfg_fc_CPLH),
        .pcie1_cfg_fc_cplh_scale(cpm_0_pcie1_cfg_fc_CPLH_SCALE),
        .pcie1_cfg_fc_npd(cpm_0_pcie1_cfg_fc_NPD),
        .pcie1_cfg_fc_npd_scale(cpm_0_pcie1_cfg_fc_NPD_SCALE),
        .pcie1_cfg_fc_nph(cpm_0_pcie1_cfg_fc_NPH),
        .pcie1_cfg_fc_nph_scale(cpm_0_pcie1_cfg_fc_NPH_SCALE),
        .pcie1_cfg_fc_pd(cpm_0_pcie1_cfg_fc_PD),
        .pcie1_cfg_fc_pd_scale(cpm_0_pcie1_cfg_fc_PD_SCALE),
        .pcie1_cfg_fc_ph(cpm_0_pcie1_cfg_fc_PH),
        .pcie1_cfg_fc_ph_scale(cpm_0_pcie1_cfg_fc_PH_SCALE),
        .pcie1_cfg_fc_sel(cpm_0_pcie1_cfg_fc_SEL),
        .pcie1_cfg_fc_vc_sel(cpm_0_pcie1_cfg_fc_VC_SEL),
        .pcie1_cfg_flr_done(pcie1_cfg_control_1_flr_done),
        .pcie1_cfg_flr_done_function_number(pcie1_cfg_control_1_flr_done_function_number),
        .pcie1_cfg_flr_in_process(pcie1_cfg_control_1_flr_in_process),
        .pcie1_cfg_function_power_state(cpm_0_pcie1_cfg_status_function_power_state),
        .pcie1_cfg_function_status(cpm_0_pcie1_cfg_status_function_status),
        .pcie1_cfg_hot_reset_in(pcie1_cfg_control_1_hot_reset_in),
        .pcie1_cfg_hot_reset_out(pcie1_cfg_control_1_hot_reset_out),
        .pcie1_cfg_interrupt_int(pcie1_cfg_interrupt_1_INTx_VECTOR),
        .pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_1_PENDING),
        .pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_1_SENT),
        .pcie1_cfg_link_power_state(cpm_0_pcie1_cfg_status_link_power_state),
        .pcie1_cfg_local_error_out(cpm_0_pcie1_cfg_status_local_error_out),
        .pcie1_cfg_local_error_valid(cpm_0_pcie1_cfg_status_local_error_valid),
        .pcie1_cfg_ltssm_state(cpm_0_pcie1_cfg_status_ltssm_state),
        .pcie1_cfg_max_pasid_width_control(cpm_0_pcie1_cfg_status_max_pasid_width_control),
        .pcie1_cfg_max_payload(cpm_0_pcie1_cfg_status_max_payload),
        .pcie1_cfg_max_read_req(cpm_0_pcie1_cfg_status_max_read_req),
        .pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_1_ADDR),
        .pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_1_BYTE_EN),
        .pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_1_DEBUG_ACCESS),
        .pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_1_FUNCTION_NUMBER),
        .pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_1_READ_DATA),
        .pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_1_READ_EN),
        .pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_1_READ_WRITE_DONE),
        .pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_1_WRITE_DATA),
        .pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_1_WRITE_EN),
        .pcie1_cfg_msg_received(cpm_0_pcie1_cfg_msg_recd_recd),
        .pcie1_cfg_msg_received_data(cpm_0_pcie1_cfg_msg_recd_recd_data),
        .pcie1_cfg_msg_received_type(cpm_0_pcie1_cfg_msg_recd_recd_type),
        .pcie1_cfg_msg_transmit(cpm_0_pcie1_cfg_msg_tx_TRANSMIT),
        .pcie1_cfg_msg_transmit_data(cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DATA),
        .pcie1_cfg_msg_transmit_done(cpm_0_pcie1_cfg_msg_tx_TRANSMIT_DONE),
        .pcie1_cfg_msg_transmit_type(cpm_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE),
        .pcie1_cfg_msi_attr(pcie1_cfg_msi_1_attr),
        .pcie1_cfg_msi_data(pcie1_cfg_msi_1_data),
        .pcie1_cfg_msi_enable(pcie1_cfg_msi_1_enable),
        .pcie1_cfg_msi_fail(pcie1_cfg_msi_1_fail),
        .pcie1_cfg_msi_function_number(pcie1_cfg_msi_1_function_number),
        .pcie1_cfg_msi_int_vector(pcie1_cfg_msi_1_int_vector),
        .pcie1_cfg_msi_mask_update(pcie1_cfg_msi_1_mask_update),
        .pcie1_cfg_msi_mmenable(pcie1_cfg_msi_1_mmenable),
        .pcie1_cfg_msi_pending_status(pcie1_cfg_msi_1_pending_status),
        .pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_1_pending_status_data_enable),
        .pcie1_cfg_msi_pending_status_function_number(pcie1_cfg_msi_1_pending_status_function_num),
        .pcie1_cfg_msi_select(pcie1_cfg_msi_1_select),
        .pcie1_cfg_msi_sent(pcie1_cfg_msi_1_sent),
        .pcie1_cfg_msi_tph_present(pcie1_cfg_msi_1_tph_present),
        .pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_1_tph_st_tag),
        .pcie1_cfg_msi_tph_type(pcie1_cfg_msi_1_tph_type),
        .pcie1_cfg_negotiated_width(cpm_0_pcie1_cfg_status_negotiated_width),
        .pcie1_cfg_pasid_control(cpm_0_pcie1_cfg_status_pasid_control),
        .pcie1_cfg_pasid_enable(cpm_0_pcie1_cfg_status_pasid_enable),
        .pcie1_cfg_pasid_exec_permission_enable(cpm_0_pcie1_cfg_status_pasid_exec_permission_enable),
        .pcie1_cfg_pasid_privil_mode_enable(cpm_0_pcie1_cfg_status_pasid_privil_mode_enable),
        .pcie1_cfg_per_function_number(pcie1_cfg_control_1_per_function_number),
        .pcie1_cfg_per_function_out(cpm_0_pcie1_cfg_status_per_function_out),
        .pcie1_cfg_per_function_req(pcie1_cfg_control_1_per_function_req),
        .pcie1_cfg_per_function_vld(cpm_0_pcie1_cfg_status_per_function_vld),
        .pcie1_cfg_phy_link_down(cpm_0_pcie1_cfg_status_phy_link_down),
        .pcie1_cfg_phy_link_status(cpm_0_pcie1_cfg_status_phy_link_status),
        .pcie1_cfg_pl_status_change(cpm_0_pcie1_cfg_status_pl_status_change),
        .pcie1_cfg_power_state_change_ack(pcie1_cfg_control_1_power_state_change_ack),
        .pcie1_cfg_power_state_change_interrupt(pcie1_cfg_control_1_power_state_change_interrupt),
        .pcie1_cfg_rcb_status(cpm_0_pcie1_cfg_status_rcb_status),
        .pcie1_cfg_rx_pm_state(cpm_0_pcie1_cfg_status_rx_pm_state),
        .pcie1_cfg_tph_requester_enable(cpm_0_pcie1_cfg_status_tph_requester_enable),
        .pcie1_cfg_tph_st_mode(cpm_0_pcie1_cfg_status_tph_st_mode),
        .pcie1_cfg_tx_pm_state(cpm_0_pcie1_cfg_status_tx_pm_state),
        .pcie1_cfg_wrreq_bme_vld(cpm_0_pcie1_cfg_status_wrreq_bme_vld),
        .pcie1_cfg_wrreq_flr_vld(cpm_0_pcie1_cfg_status_wrreq_flr_vld),
        .pcie1_cfg_wrreq_function_number(cpm_0_pcie1_cfg_status_wrreq_function_number),
        .pcie1_cfg_wrreq_msi_vld(cpm_0_pcie1_cfg_status_wrreq_msi_vld),
        .pcie1_cfg_wrreq_msix_vld(cpm_0_pcie1_cfg_status_wrreq_msix_vld),
        .pcie1_cfg_wrreq_out_value(cpm_0_pcie1_cfg_status_wrreq_out_value),
        .pcie1_cfg_wrreq_vfe_vld(cpm_0_pcie1_cfg_status_wrreq_vfe_vld),
        .pcie1_cq_np_req(cpm_0_pcie1_cfg_status_cq_np_req),
        .pcie1_cq_np_req_count(cpm_0_pcie1_cfg_status_cq_np_req_count),
        .pcie1_gt_rxn(cpm_0_PCIE1_GT_GRX_N),
        .pcie1_gt_rxp(cpm_0_PCIE1_GT_GRX_P),
        .pcie1_gt_txn(cpm_0_PCIE1_GT_GTX_N),
        .pcie1_gt_txp(cpm_0_PCIE1_GT_GTX_P),
        .pcie1_m_axis_cq_tdata(cpm_0_pcie1_m_axis_cq_TDATA),
        .pcie1_m_axis_cq_tkeep(cpm_0_pcie1_m_axis_cq_TKEEP),
        .pcie1_m_axis_cq_tlast(cpm_0_pcie1_m_axis_cq_TLAST),
        .pcie1_m_axis_cq_tready(cpm_0_pcie1_m_axis_cq_TREADY),
        .pcie1_m_axis_cq_tuser(cpm_0_pcie1_m_axis_cq_TUSER),
        .pcie1_m_axis_cq_tvalid(cpm_0_pcie1_m_axis_cq_TVALID),
        .pcie1_m_axis_rc_tdata(cpm_0_pcie1_m_axis_rc_TDATA),
        .pcie1_m_axis_rc_tkeep(cpm_0_pcie1_m_axis_rc_TKEEP),
        .pcie1_m_axis_rc_tlast(cpm_0_pcie1_m_axis_rc_TLAST),
        .pcie1_m_axis_rc_tready(cpm_0_pcie1_m_axis_rc_TREADY),
        .pcie1_m_axis_rc_tuser(cpm_0_pcie1_m_axis_rc_TUSER),
        .pcie1_m_axis_rc_tvalid(cpm_0_pcie1_m_axis_rc_TVALID),
        .pcie1_rq_seq_num0(cpm_0_pcie1_cfg_status_rq_seq_num0),
        .pcie1_rq_seq_num1(cpm_0_pcie1_cfg_status_rq_seq_num1),
        .pcie1_rq_seq_num2(cpm_0_pcie1_cfg_status_rq_seq_num2),
        .pcie1_rq_seq_num3(cpm_0_pcie1_cfg_status_rq_seq_num3),
        .pcie1_rq_seq_num_vld0(cpm_0_pcie1_cfg_status_rq_seq_num_vld0),
        .pcie1_rq_seq_num_vld1(cpm_0_pcie1_cfg_status_rq_seq_num_vld1),
        .pcie1_rq_seq_num_vld2(cpm_0_pcie1_cfg_status_rq_seq_num_vld2),
        .pcie1_rq_seq_num_vld3(cpm_0_pcie1_cfg_status_rq_seq_num_vld3),
        .pcie1_rq_tag0(cpm_0_pcie1_cfg_status_rq_tag0),
        .pcie1_rq_tag1(cpm_0_pcie1_cfg_status_rq_tag1),
        .pcie1_rq_tag_av(cpm_0_pcie1_cfg_status_rq_tag_av),
        .pcie1_rq_tag_vld0(cpm_0_pcie1_cfg_status_rq_tag_vld0),
        .pcie1_rq_tag_vld1(cpm_0_pcie1_cfg_status_rq_tag_vld1),
        .pcie1_s_axis_cc_tdata(pcie1_s_axis_cc_1_TDATA),
        .pcie1_s_axis_cc_tkeep(pcie1_s_axis_cc_1_TKEEP),
        .pcie1_s_axis_cc_tlast(pcie1_s_axis_cc_1_TLAST),
        .pcie1_s_axis_cc_tready(pcie1_s_axis_cc_1_TREADY),
        .pcie1_s_axis_cc_tuser(pcie1_s_axis_cc_1_TUSER),
        .pcie1_s_axis_cc_tvalid(pcie1_s_axis_cc_1_TVALID),
        .pcie1_s_axis_rq_tdata(pcie1_s_axis_rq_1_TDATA),
        .pcie1_s_axis_rq_tkeep(pcie1_s_axis_rq_1_TKEEP),
        .pcie1_s_axis_rq_tlast(pcie1_s_axis_rq_1_TLAST),
        .pcie1_s_axis_rq_tready(pcie1_s_axis_rq_1_TREADY),
        .pcie1_s_axis_rq_tuser(pcie1_s_axis_rq_1_TUSER),
        .pcie1_s_axis_rq_tvalid(pcie1_s_axis_rq_1_TVALID),
        .pcie1_tfc_npd_av(cpm_0_pcie1_transmit_fc_npd_av),
        .pcie1_tfc_nph_av(cpm_0_pcie1_transmit_fc_nph_av),
        .pcie1_user_clk(cpm_0_pcie1_user_clk),
        .pcie1_user_lnk_up(cpm_0_pcie1_user_lnk_up),
        .pcie1_user_reset(cpm_0_pcie1_user_reset),
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
  bd_6f6a_pspmc_0_0 pspmc_0
       (.cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
endmodule
