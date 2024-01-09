//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Wed Nov 22 19:24:09 2023
//Host        : matthew-xilinx running 64-bit Ubuntu 22.04.1 LTS
//Command     : generate_target exerciser.bd
//Design      : exerciser
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "exerciser,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=exerciser,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "exerciser.hwdef" *) 
module exerciser
   (PCIE1_GT_0_grx_n,
    PCIE1_GT_0_grx_p,
    PCIE1_GT_0_gtx_n,
    PCIE1_GT_0_gtx_p,
    cpm_cor_irq_0,
    cpm_irq0_0,
    cpm_irq1_0,
    cpm_misc_irq_0,
    cpm_uncor_irq_0,
    gt_refclk1_0_clk_n,
    gt_refclk1_0_clk_p,
    pcie1_cfg_control_0_err_cor_in,
    pcie1_cfg_control_0_err_uncor_in,
    pcie1_cfg_control_0_flr_done,
    pcie1_cfg_control_0_flr_done_function_number,
    pcie1_cfg_control_0_flr_in_process,
    pcie1_cfg_control_0_hot_reset_in,
    pcie1_cfg_control_0_hot_reset_out,
    pcie1_cfg_control_0_per_function_number,
    pcie1_cfg_control_0_per_function_req,
    pcie1_cfg_control_0_power_state_change_ack,
    pcie1_cfg_control_0_power_state_change_interrupt,
    pcie1_cfg_ext_0_function_number,
    pcie1_cfg_ext_0_read_data,
    pcie1_cfg_ext_0_read_data_valid,
    pcie1_cfg_ext_0_read_received,
    pcie1_cfg_ext_0_register_number,
    pcie1_cfg_ext_0_write_byte_enable,
    pcie1_cfg_ext_0_write_data,
    pcie1_cfg_ext_0_write_received,
    pcie1_cfg_fc_0_cpld,
    pcie1_cfg_fc_0_cpld_scale,
    pcie1_cfg_fc_0_cplh,
    pcie1_cfg_fc_0_cplh_scale,
    pcie1_cfg_fc_0_npd,
    pcie1_cfg_fc_0_npd_scale,
    pcie1_cfg_fc_0_nph,
    pcie1_cfg_fc_0_nph_scale,
    pcie1_cfg_fc_0_pd,
    pcie1_cfg_fc_0_pd_scale,
    pcie1_cfg_fc_0_ph,
    pcie1_cfg_fc_0_ph_scale,
    pcie1_cfg_fc_0_sel,
    pcie1_cfg_fc_0_vc_sel,
    pcie1_cfg_interrupt_0_intx_vector,
    pcie1_cfg_interrupt_0_pending,
    pcie1_cfg_interrupt_0_sent,
    pcie1_cfg_mgmt_0_addr,
    pcie1_cfg_mgmt_0_byte_en,
    pcie1_cfg_mgmt_0_debug_access,
    pcie1_cfg_mgmt_0_function_number,
    pcie1_cfg_mgmt_0_read_data,
    pcie1_cfg_mgmt_0_read_en,
    pcie1_cfg_mgmt_0_read_write_done,
    pcie1_cfg_mgmt_0_write_data,
    pcie1_cfg_mgmt_0_write_en,
    pcie1_cfg_msg_recd_0_recd,
    pcie1_cfg_msg_recd_0_recd_data,
    pcie1_cfg_msg_recd_0_recd_type,
    pcie1_cfg_msg_tx_0_transmit,
    pcie1_cfg_msg_tx_0_transmit_data,
    pcie1_cfg_msg_tx_0_transmit_done,
    pcie1_cfg_msg_tx_0_transmit_type,
    pcie1_cfg_msi_0_attr,
    pcie1_cfg_msi_0_data,
    pcie1_cfg_msi_0_enable,
    pcie1_cfg_msi_0_fail,
    pcie1_cfg_msi_0_function_number,
    pcie1_cfg_msi_0_int_vector,
    pcie1_cfg_msi_0_mask_update,
    pcie1_cfg_msi_0_mmenable,
    pcie1_cfg_msi_0_pending_status,
    pcie1_cfg_msi_0_pending_status_data_enable,
    pcie1_cfg_msi_0_pending_status_function_num,
    pcie1_cfg_msi_0_select,
    pcie1_cfg_msi_0_sent,
    pcie1_cfg_msi_0_tph_present,
    pcie1_cfg_msi_0_tph_st_tag,
    pcie1_cfg_msi_0_tph_type,
    pcie1_cfg_status_0_10b_tag_requester_enable,
    pcie1_cfg_status_0_atomic_requester_enable,
    pcie1_cfg_status_0_bus_number,
    pcie1_cfg_status_0_cq_np_req,
    pcie1_cfg_status_0_cq_np_req_count,
    pcie1_cfg_status_0_current_speed,
    pcie1_cfg_status_0_err_cor_out,
    pcie1_cfg_status_0_err_fatal_out,
    pcie1_cfg_status_0_err_nonfatal_out,
    pcie1_cfg_status_0_ext_tag_enable,
    pcie1_cfg_status_0_function_power_state,
    pcie1_cfg_status_0_function_status,
    pcie1_cfg_status_0_link_power_state,
    pcie1_cfg_status_0_local_error_out,
    pcie1_cfg_status_0_local_error_valid,
    pcie1_cfg_status_0_ltssm_state,
    pcie1_cfg_status_0_max_pasid_width_control,
    pcie1_cfg_status_0_max_payload,
    pcie1_cfg_status_0_max_read_req,
    pcie1_cfg_status_0_negotiated_width,
    pcie1_cfg_status_0_pasid_control,
    pcie1_cfg_status_0_pasid_enable,
    pcie1_cfg_status_0_pasid_exec_permission_enable,
    pcie1_cfg_status_0_pasid_privil_mode_enable,
    pcie1_cfg_status_0_per_function_out,
    pcie1_cfg_status_0_per_function_vld,
    pcie1_cfg_status_0_phy_link_down,
    pcie1_cfg_status_0_phy_link_status,
    pcie1_cfg_status_0_pl_status_change,
    pcie1_cfg_status_0_rcb_status,
    pcie1_cfg_status_0_rq_seq_num0,
    pcie1_cfg_status_0_rq_seq_num1,
    pcie1_cfg_status_0_rq_seq_num2,
    pcie1_cfg_status_0_rq_seq_num3,
    pcie1_cfg_status_0_rq_seq_num_vld0,
    pcie1_cfg_status_0_rq_seq_num_vld1,
    pcie1_cfg_status_0_rq_seq_num_vld2,
    pcie1_cfg_status_0_rq_seq_num_vld3,
    pcie1_cfg_status_0_rq_tag0,
    pcie1_cfg_status_0_rq_tag1,
    pcie1_cfg_status_0_rq_tag_av,
    pcie1_cfg_status_0_rq_tag_vld0,
    pcie1_cfg_status_0_rq_tag_vld1,
    pcie1_cfg_status_0_rx_pm_state,
    pcie1_cfg_status_0_tph_requester_enable,
    pcie1_cfg_status_0_tph_st_mode,
    pcie1_cfg_status_0_tx_pm_state,
    pcie1_cfg_status_0_wrreq_bme_vld,
    pcie1_cfg_status_0_wrreq_flr_vld,
    pcie1_cfg_status_0_wrreq_function_number,
    pcie1_cfg_status_0_wrreq_msi_vld,
    pcie1_cfg_status_0_wrreq_msix_vld,
    pcie1_cfg_status_0_wrreq_out_value,
    pcie1_cfg_status_0_wrreq_vfe_vld,
    pcie1_m_axis_cq_0_tdata,
    pcie1_m_axis_cq_0_tkeep,
    pcie1_m_axis_cq_0_tlast,
    pcie1_m_axis_cq_0_tready,
    pcie1_m_axis_cq_0_tuser,
    pcie1_m_axis_cq_0_tvalid,
    pcie1_m_axis_rc_0_tdata,
    pcie1_m_axis_rc_0_tkeep,
    pcie1_m_axis_rc_0_tlast,
    pcie1_m_axis_rc_0_tready,
    pcie1_m_axis_rc_0_tuser,
    pcie1_m_axis_rc_0_tvalid,
    pcie1_s_axis_cc_0_tdata,
    pcie1_s_axis_cc_0_tkeep,
    pcie1_s_axis_cc_0_tlast,
    pcie1_s_axis_cc_0_tready,
    pcie1_s_axis_cc_0_tuser,
    pcie1_s_axis_cc_0_tvalid,
    pcie1_s_axis_rq_0_tdata,
    pcie1_s_axis_rq_0_tkeep,
    pcie1_s_axis_rq_0_tlast,
    pcie1_s_axis_rq_0_tready,
    pcie1_s_axis_rq_0_tuser,
    pcie1_s_axis_rq_0_tvalid,
    pcie1_transmit_fc_0_npd_av,
    pcie1_transmit_fc_0_nph_av,
    pcie1_user_clk_0,
    pcie1_user_lnk_up_0,
    pcie1_user_reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT_0, CAN_DEBUG false" *) input [7:0]PCIE1_GT_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_P" *) input [7:0]PCIE1_GT_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_N" *) output [7:0]PCIE1_GT_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_P" *) output [7:0]PCIE1_GT_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_P" *) input gt_refclk1_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 err_cor_in" *) input pcie1_cfg_control_0_err_cor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 err_uncor_in" *) input pcie1_cfg_control_0_err_uncor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 flr_done" *) input pcie1_cfg_control_0_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 flr_done_function_number" *) input [15:0]pcie1_cfg_control_0_flr_done_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 flr_in_process" *) output [3:0]pcie1_cfg_control_0_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 hot_reset_in" *) input pcie1_cfg_control_0_hot_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 hot_reset_out" *) output pcie1_cfg_control_0_hot_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 per_function_number" *) input [15:0]pcie1_cfg_control_0_per_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 per_function_req" *) input pcie1_cfg_control_0_per_function_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 power_state_change_ack" *) input pcie1_cfg_control_0_power_state_change_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie1_cfg_control_0 power_state_change_interrupt" *) output pcie1_cfg_control_0_power_state_change_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 function_number" *) output [15:0]pcie1_cfg_ext_0_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 read_data" *) input [31:0]pcie1_cfg_ext_0_read_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 read_data_valid" *) input pcie1_cfg_ext_0_read_data_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 read_received" *) output pcie1_cfg_ext_0_read_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 register_number" *) output [9:0]pcie1_cfg_ext_0_register_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 write_byte_enable" *) output [3:0]pcie1_cfg_ext_0_write_byte_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 write_data" *) output [31:0]pcie1_cfg_ext_0_write_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_ext:1.0 pcie1_cfg_ext_0 write_received" *) output pcie1_cfg_ext_0_write_received;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 CPLD" *) output [11:0]pcie1_cfg_fc_0_cpld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 CPLD_SCALE" *) output [1:0]pcie1_cfg_fc_0_cpld_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 CPLH" *) output [7:0]pcie1_cfg_fc_0_cplh;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 CPLH_SCALE" *) output [1:0]pcie1_cfg_fc_0_cplh_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 NPD" *) output [11:0]pcie1_cfg_fc_0_npd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 NPD_SCALE" *) output [1:0]pcie1_cfg_fc_0_npd_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 NPH" *) output [7:0]pcie1_cfg_fc_0_nph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 NPH_SCALE" *) output [1:0]pcie1_cfg_fc_0_nph_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 PD" *) output [11:0]pcie1_cfg_fc_0_pd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 PD_SCALE" *) output [1:0]pcie1_cfg_fc_0_pd_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 PH" *) output [7:0]pcie1_cfg_fc_0_ph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 PH_SCALE" *) output [1:0]pcie1_cfg_fc_0_ph_scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 SEL" *) input [2:0]pcie1_cfg_fc_0_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie1_cfg_fc_0 VC_SEL" *) input pcie1_cfg_fc_0_vc_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt_0 INTx_VECTOR" *) input [3:0]pcie1_cfg_interrupt_0_intx_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt_0 PENDING" *) input [15:0]pcie1_cfg_interrupt_0_pending;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt_0 SENT" *) output pcie1_cfg_interrupt_0_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 ADDR" *) input [9:0]pcie1_cfg_mgmt_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 BYTE_EN" *) input [3:0]pcie1_cfg_mgmt_0_byte_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 DEBUG_ACCESS" *) input pcie1_cfg_mgmt_0_debug_access;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 FUNCTION_NUMBER" *) input [15:0]pcie1_cfg_mgmt_0_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 READ_DATA" *) output [31:0]pcie1_cfg_mgmt_0_read_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 READ_EN" *) input pcie1_cfg_mgmt_0_read_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 READ_WRITE_DONE" *) output pcie1_cfg_mgmt_0_read_write_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 WRITE_DATA" *) input [31:0]pcie1_cfg_mgmt_0_write_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie1_cfg_mgmt_0 WRITE_EN" *) input pcie1_cfg_mgmt_0_write_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd_0 recd" *) output pcie1_cfg_msg_recd_0_recd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd_0 recd_data" *) output [7:0]pcie1_cfg_msg_recd_0_recd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie1_cfg_msg_recd_0 recd_type" *) output [4:0]pcie1_cfg_msg_recd_0_recd_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx_0 TRANSMIT" *) input pcie1_cfg_msg_tx_0_transmit;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx_0 TRANSMIT_DATA" *) input [31:0]pcie1_cfg_msg_tx_0_transmit_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx_0 TRANSMIT_DONE" *) output pcie1_cfg_msg_tx_0_transmit_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie1_cfg_msg_tx_0 TRANSMIT_TYPE" *) input [2:0]pcie1_cfg_msg_tx_0_transmit_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 attr" *) input [2:0]pcie1_cfg_msi_0_attr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 data" *) output [31:0]pcie1_cfg_msi_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 enable" *) output pcie1_cfg_msi_0_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 fail" *) output pcie1_cfg_msi_0_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 function_number" *) input [15:0]pcie1_cfg_msi_0_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 int_vector" *) input [31:0]pcie1_cfg_msi_0_int_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 mask_update" *) output pcie1_cfg_msi_0_mask_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 mmenable" *) output [2:0]pcie1_cfg_msi_0_mmenable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 pending_status" *) input [31:0]pcie1_cfg_msi_0_pending_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 pending_status_data_enable" *) input pcie1_cfg_msi_0_pending_status_data_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 pending_status_function_num" *) input [3:0]pcie1_cfg_msi_0_pending_status_function_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 select" *) input [3:0]pcie1_cfg_msi_0_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 sent" *) output pcie1_cfg_msi_0_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 tph_present" *) input pcie1_cfg_msi_0_tph_present;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 tph_st_tag" *) input [7:0]pcie1_cfg_msi_0_tph_st_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi_0 tph_type" *) input [1:0]pcie1_cfg_msi_0_tph_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 10b_tag_requester_enable" *) output pcie1_cfg_status_0_10b_tag_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 atomic_requester_enable" *) output pcie1_cfg_status_0_atomic_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 bus_number" *) output [7:0]pcie1_cfg_status_0_bus_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 cq_np_req" *) input [1:0]pcie1_cfg_status_0_cq_np_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 cq_np_req_count" *) output [5:0]pcie1_cfg_status_0_cq_np_req_count;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 current_speed" *) output [2:0]pcie1_cfg_status_0_current_speed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 err_cor_out" *) output pcie1_cfg_status_0_err_cor_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 err_fatal_out" *) output pcie1_cfg_status_0_err_fatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 err_nonfatal_out" *) output pcie1_cfg_status_0_err_nonfatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 ext_tag_enable" *) output pcie1_cfg_status_0_ext_tag_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 function_power_state" *) output [2:0]pcie1_cfg_status_0_function_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 function_status" *) output [3:0]pcie1_cfg_status_0_function_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 link_power_state" *) output [1:0]pcie1_cfg_status_0_link_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 local_error_out" *) output [4:0]pcie1_cfg_status_0_local_error_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 local_error_valid" *) output pcie1_cfg_status_0_local_error_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 ltssm_state" *) output [5:0]pcie1_cfg_status_0_ltssm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 max_pasid_width_control" *) output [79:0]pcie1_cfg_status_0_max_pasid_width_control;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 max_payload" *) output [1:0]pcie1_cfg_status_0_max_payload;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 max_read_req" *) output [2:0]pcie1_cfg_status_0_max_read_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 negotiated_width" *) output [2:0]pcie1_cfg_status_0_negotiated_width;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 pasid_control" *) output [47:0]pcie1_cfg_status_0_pasid_control;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 pasid_enable" *) output pcie1_cfg_status_0_pasid_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 pasid_exec_permission_enable" *) output pcie1_cfg_status_0_pasid_exec_permission_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 pasid_privil_mode_enable" *) output pcie1_cfg_status_0_pasid_privil_mode_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 per_function_out" *) output [23:0]pcie1_cfg_status_0_per_function_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 per_function_vld" *) output pcie1_cfg_status_0_per_function_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 phy_link_down" *) output pcie1_cfg_status_0_phy_link_down;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 phy_link_status" *) output [1:0]pcie1_cfg_status_0_phy_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 pl_status_change" *) output pcie1_cfg_status_0_pl_status_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rcb_status" *) output pcie1_cfg_status_0_rcb_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num0" *) output [5:0]pcie1_cfg_status_0_rq_seq_num0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num1" *) output [5:0]pcie1_cfg_status_0_rq_seq_num1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num2" *) output [5:0]pcie1_cfg_status_0_rq_seq_num2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num3" *) output [5:0]pcie1_cfg_status_0_rq_seq_num3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num_vld0" *) output pcie1_cfg_status_0_rq_seq_num_vld0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num_vld1" *) output pcie1_cfg_status_0_rq_seq_num_vld1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num_vld2" *) output pcie1_cfg_status_0_rq_seq_num_vld2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_seq_num_vld3" *) output pcie1_cfg_status_0_rq_seq_num_vld3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_tag0" *) output [19:0]pcie1_cfg_status_0_rq_tag0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_tag1" *) output [19:0]pcie1_cfg_status_0_rq_tag1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_tag_av" *) output [3:0]pcie1_cfg_status_0_rq_tag_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_tag_vld0" *) output [1:0]pcie1_cfg_status_0_rq_tag_vld0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rq_tag_vld1" *) output [1:0]pcie1_cfg_status_0_rq_tag_vld1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 rx_pm_state" *) output [1:0]pcie1_cfg_status_0_rx_pm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 tph_requester_enable" *) output [3:0]pcie1_cfg_status_0_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 tph_st_mode" *) output [11:0]pcie1_cfg_status_0_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 tx_pm_state" *) output [1:0]pcie1_cfg_status_0_tx_pm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_bme_vld" *) output pcie1_cfg_status_0_wrreq_bme_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_flr_vld" *) output pcie1_cfg_status_0_wrreq_flr_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_function_number" *) output [15:0]pcie1_cfg_status_0_wrreq_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_msi_vld" *) output pcie1_cfg_status_0_wrreq_msi_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_msix_vld" *) output pcie1_cfg_status_0_wrreq_msix_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_out_value" *) output [3:0]pcie1_cfg_status_0_wrreq_out_value;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie1_cfg_status_0 wrreq_vfe_vld" *) output pcie1_cfg_status_0_wrreq_vfe_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_cq_0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 465" *) output [1023:0]pcie1_m_axis_cq_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TKEEP" *) output [31:0]pcie1_m_axis_cq_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TLAST" *) output pcie1_m_axis_cq_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TREADY" *) input pcie1_m_axis_cq_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TUSER" *) output [464:0]pcie1_m_axis_cq_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq_0 TVALID" *) output pcie1_m_axis_cq_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_rc_0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 337" *) output [1023:0]pcie1_m_axis_rc_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TKEEP" *) output [31:0]pcie1_m_axis_rc_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TLAST" *) output pcie1_m_axis_rc_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TREADY" *) input pcie1_m_axis_rc_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TUSER" *) output [336:0]pcie1_m_axis_rc_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc_0 TVALID" *) output pcie1_m_axis_rc_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_cc_0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 165" *) input [1023:0]pcie1_s_axis_cc_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TKEEP" *) input [31:0]pcie1_s_axis_cc_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TLAST" *) input pcie1_s_axis_cc_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TREADY" *) output pcie1_s_axis_cc_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TUSER" *) input [164:0]pcie1_s_axis_cc_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc_0 TVALID" *) input pcie1_s_axis_cc_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_rq_0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 128, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 373" *) input [1023:0]pcie1_s_axis_rq_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TKEEP" *) input [31:0]pcie1_s_axis_rq_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TLAST" *) input pcie1_s_axis_rq_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TREADY" *) output pcie1_s_axis_rq_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TUSER" *) input [372:0]pcie1_s_axis_rq_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq_0 TVALID" *) input pcie1_s_axis_rq_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc_0 npd_av" *) output [3:0]pcie1_transmit_fc_0_npd_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie1_transmit_fc_0 nph_av" *) output [3:0]pcie1_transmit_fc_0_nph_av;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE1_USER_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE1_USER_CLK_0, ASSOCIATED_BUSIF pcie1_m_axis_cq_0:pcie1_m_axis_rc_0:pcie1_s_axis_cc_0:pcie1_s_axis_rq_0, CLK_DOMAIN bd_6f6a_cpm_0_0_pcie1_user_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pcie1_user_clk_0;
  output pcie1_user_lnk_up_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE1_USER_RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE1_USER_RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output pcie1_user_reset_0;

  wire cpm_irq0_0_1;
  wire cpm_irq1_0_1;
  wire gt_refclk1_0_1_CLK_N;
  wire gt_refclk1_0_1_CLK_P;
  wire pcie1_cfg_control_0_1_err_cor_in;
  wire pcie1_cfg_control_0_1_err_uncor_in;
  wire pcie1_cfg_control_0_1_flr_done;
  wire [15:0]pcie1_cfg_control_0_1_flr_done_function_number;
  wire [3:0]pcie1_cfg_control_0_1_flr_in_process;
  wire pcie1_cfg_control_0_1_hot_reset_in;
  wire pcie1_cfg_control_0_1_hot_reset_out;
  wire [15:0]pcie1_cfg_control_0_1_per_function_number;
  wire pcie1_cfg_control_0_1_per_function_req;
  wire pcie1_cfg_control_0_1_power_state_change_ack;
  wire pcie1_cfg_control_0_1_power_state_change_interrupt;
  wire [3:0]pcie1_cfg_interrupt_0_1_INTx_VECTOR;
  wire [15:0]pcie1_cfg_interrupt_0_1_PENDING;
  wire pcie1_cfg_interrupt_0_1_SENT;
  wire [9:0]pcie1_cfg_mgmt_0_1_ADDR;
  wire [3:0]pcie1_cfg_mgmt_0_1_BYTE_EN;
  wire pcie1_cfg_mgmt_0_1_DEBUG_ACCESS;
  wire [15:0]pcie1_cfg_mgmt_0_1_FUNCTION_NUMBER;
  wire [31:0]pcie1_cfg_mgmt_0_1_READ_DATA;
  wire pcie1_cfg_mgmt_0_1_READ_EN;
  wire pcie1_cfg_mgmt_0_1_READ_WRITE_DONE;
  wire [31:0]pcie1_cfg_mgmt_0_1_WRITE_DATA;
  wire pcie1_cfg_mgmt_0_1_WRITE_EN;
  wire [2:0]pcie1_cfg_msi_0_1_attr;
  wire [31:0]pcie1_cfg_msi_0_1_data;
  wire pcie1_cfg_msi_0_1_enable;
  wire pcie1_cfg_msi_0_1_fail;
  wire [15:0]pcie1_cfg_msi_0_1_function_number;
  wire [31:0]pcie1_cfg_msi_0_1_int_vector;
  wire pcie1_cfg_msi_0_1_mask_update;
  wire [2:0]pcie1_cfg_msi_0_1_mmenable;
  wire [31:0]pcie1_cfg_msi_0_1_pending_status;
  wire pcie1_cfg_msi_0_1_pending_status_data_enable;
  wire [3:0]pcie1_cfg_msi_0_1_pending_status_function_num;
  wire [3:0]pcie1_cfg_msi_0_1_select;
  wire pcie1_cfg_msi_0_1_sent;
  wire pcie1_cfg_msi_0_1_tph_present;
  wire [7:0]pcie1_cfg_msi_0_1_tph_st_tag;
  wire [1:0]pcie1_cfg_msi_0_1_tph_type;
  wire [1023:0]pcie1_s_axis_cc_0_1_TDATA;
  wire [31:0]pcie1_s_axis_cc_0_1_TKEEP;
  wire pcie1_s_axis_cc_0_1_TLAST;
  wire pcie1_s_axis_cc_0_1_TREADY;
  wire [164:0]pcie1_s_axis_cc_0_1_TUSER;
  wire pcie1_s_axis_cc_0_1_TVALID;
  wire [1023:0]pcie1_s_axis_rq_0_1_TDATA;
  wire [31:0]pcie1_s_axis_rq_0_1_TKEEP;
  wire pcie1_s_axis_rq_0_1_TLAST;
  wire pcie1_s_axis_rq_0_1_TREADY;
  wire [372:0]pcie1_s_axis_rq_0_1_TUSER;
  wire pcie1_s_axis_rq_0_1_TVALID;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_P;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_P;
  wire versal_cips_0_cpm_cor_irq;
  wire versal_cips_0_cpm_misc_irq;
  wire versal_cips_0_cpm_uncor_irq;
  wire [15:0]versal_cips_0_pcie1_cfg_ext_function_number;
  wire [31:0]versal_cips_0_pcie1_cfg_ext_read_data;
  wire versal_cips_0_pcie1_cfg_ext_read_data_valid;
  wire versal_cips_0_pcie1_cfg_ext_read_received;
  wire [9:0]versal_cips_0_pcie1_cfg_ext_register_number;
  wire [3:0]versal_cips_0_pcie1_cfg_ext_write_byte_enable;
  wire [31:0]versal_cips_0_pcie1_cfg_ext_write_data;
  wire versal_cips_0_pcie1_cfg_ext_write_received;
  wire [11:0]versal_cips_0_pcie1_cfg_fc_CPLD;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_CPLD_SCALE;
  wire [7:0]versal_cips_0_pcie1_cfg_fc_CPLH;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_CPLH_SCALE;
  wire [11:0]versal_cips_0_pcie1_cfg_fc_NPD;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_NPD_SCALE;
  wire [7:0]versal_cips_0_pcie1_cfg_fc_NPH;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_NPH_SCALE;
  wire [11:0]versal_cips_0_pcie1_cfg_fc_PD;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_PD_SCALE;
  wire [7:0]versal_cips_0_pcie1_cfg_fc_PH;
  wire [1:0]versal_cips_0_pcie1_cfg_fc_PH_SCALE;
  wire [2:0]versal_cips_0_pcie1_cfg_fc_SEL;
  wire versal_cips_0_pcie1_cfg_fc_VC_SEL;
  wire versal_cips_0_pcie1_cfg_msg_recd_recd;
  wire [7:0]versal_cips_0_pcie1_cfg_msg_recd_recd_data;
  wire [4:0]versal_cips_0_pcie1_cfg_msg_recd_recd_type;
  wire versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT;
  wire [31:0]versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DATA;
  wire versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DONE;
  wire [2:0]versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE;
  wire versal_cips_0_pcie1_cfg_status_10b_tag_requester_enable;
  wire versal_cips_0_pcie1_cfg_status_atomic_requester_enable;
  wire [7:0]versal_cips_0_pcie1_cfg_status_bus_number;
  wire [1:0]versal_cips_0_pcie1_cfg_status_cq_np_req;
  wire [5:0]versal_cips_0_pcie1_cfg_status_cq_np_req_count;
  wire [2:0]versal_cips_0_pcie1_cfg_status_current_speed;
  wire versal_cips_0_pcie1_cfg_status_err_cor_out;
  wire versal_cips_0_pcie1_cfg_status_err_fatal_out;
  wire versal_cips_0_pcie1_cfg_status_err_nonfatal_out;
  wire versal_cips_0_pcie1_cfg_status_ext_tag_enable;
  wire [2:0]versal_cips_0_pcie1_cfg_status_function_power_state;
  wire [3:0]versal_cips_0_pcie1_cfg_status_function_status;
  wire [1:0]versal_cips_0_pcie1_cfg_status_link_power_state;
  wire [4:0]versal_cips_0_pcie1_cfg_status_local_error_out;
  wire versal_cips_0_pcie1_cfg_status_local_error_valid;
  wire [5:0]versal_cips_0_pcie1_cfg_status_ltssm_state;
  wire [79:0]versal_cips_0_pcie1_cfg_status_max_pasid_width_control;
  wire [1:0]versal_cips_0_pcie1_cfg_status_max_payload;
  wire [2:0]versal_cips_0_pcie1_cfg_status_max_read_req;
  wire [2:0]versal_cips_0_pcie1_cfg_status_negotiated_width;
  wire [47:0]versal_cips_0_pcie1_cfg_status_pasid_control;
  wire versal_cips_0_pcie1_cfg_status_pasid_enable;
  wire versal_cips_0_pcie1_cfg_status_pasid_exec_permission_enable;
  wire versal_cips_0_pcie1_cfg_status_pasid_privil_mode_enable;
  wire [23:0]versal_cips_0_pcie1_cfg_status_per_function_out;
  wire versal_cips_0_pcie1_cfg_status_per_function_vld;
  wire versal_cips_0_pcie1_cfg_status_phy_link_down;
  wire [1:0]versal_cips_0_pcie1_cfg_status_phy_link_status;
  wire versal_cips_0_pcie1_cfg_status_pl_status_change;
  wire versal_cips_0_pcie1_cfg_status_rcb_status;
  wire [5:0]versal_cips_0_pcie1_cfg_status_rq_seq_num0;
  wire [5:0]versal_cips_0_pcie1_cfg_status_rq_seq_num1;
  wire [5:0]versal_cips_0_pcie1_cfg_status_rq_seq_num2;
  wire [5:0]versal_cips_0_pcie1_cfg_status_rq_seq_num3;
  wire versal_cips_0_pcie1_cfg_status_rq_seq_num_vld0;
  wire versal_cips_0_pcie1_cfg_status_rq_seq_num_vld1;
  wire versal_cips_0_pcie1_cfg_status_rq_seq_num_vld2;
  wire versal_cips_0_pcie1_cfg_status_rq_seq_num_vld3;
  wire [19:0]versal_cips_0_pcie1_cfg_status_rq_tag0;
  wire [19:0]versal_cips_0_pcie1_cfg_status_rq_tag1;
  wire [3:0]versal_cips_0_pcie1_cfg_status_rq_tag_av;
  wire [1:0]versal_cips_0_pcie1_cfg_status_rq_tag_vld0;
  wire [1:0]versal_cips_0_pcie1_cfg_status_rq_tag_vld1;
  wire [1:0]versal_cips_0_pcie1_cfg_status_rx_pm_state;
  wire [3:0]versal_cips_0_pcie1_cfg_status_tph_requester_enable;
  wire [11:0]versal_cips_0_pcie1_cfg_status_tph_st_mode;
  wire [1:0]versal_cips_0_pcie1_cfg_status_tx_pm_state;
  wire versal_cips_0_pcie1_cfg_status_wrreq_bme_vld;
  wire versal_cips_0_pcie1_cfg_status_wrreq_flr_vld;
  wire [15:0]versal_cips_0_pcie1_cfg_status_wrreq_function_number;
  wire versal_cips_0_pcie1_cfg_status_wrreq_msi_vld;
  wire versal_cips_0_pcie1_cfg_status_wrreq_msix_vld;
  wire [3:0]versal_cips_0_pcie1_cfg_status_wrreq_out_value;
  wire versal_cips_0_pcie1_cfg_status_wrreq_vfe_vld;
  wire [1023:0]versal_cips_0_pcie1_m_axis_cq_TDATA;
  wire [31:0]versal_cips_0_pcie1_m_axis_cq_TKEEP;
  wire versal_cips_0_pcie1_m_axis_cq_TLAST;
  wire versal_cips_0_pcie1_m_axis_cq_TREADY;
  wire [464:0]versal_cips_0_pcie1_m_axis_cq_TUSER;
  wire versal_cips_0_pcie1_m_axis_cq_TVALID;
  wire [1023:0]versal_cips_0_pcie1_m_axis_rc_TDATA;
  wire [31:0]versal_cips_0_pcie1_m_axis_rc_TKEEP;
  wire versal_cips_0_pcie1_m_axis_rc_TLAST;
  wire versal_cips_0_pcie1_m_axis_rc_TREADY;
  wire [336:0]versal_cips_0_pcie1_m_axis_rc_TUSER;
  wire versal_cips_0_pcie1_m_axis_rc_TVALID;
  wire [3:0]versal_cips_0_pcie1_transmit_fc_npd_av;
  wire [3:0]versal_cips_0_pcie1_transmit_fc_nph_av;
  wire versal_cips_0_pcie1_user_clk;
  wire versal_cips_0_pcie1_user_lnk_up;
  wire versal_cips_0_pcie1_user_reset;

  assign PCIE1_GT_0_gtx_n[7:0] = versal_cips_0_PCIE1_GT_GTX_N;
  assign PCIE1_GT_0_gtx_p[7:0] = versal_cips_0_PCIE1_GT_GTX_P;
  assign cpm_cor_irq_0 = versal_cips_0_cpm_cor_irq;
  assign cpm_irq0_0_1 = cpm_irq0_0;
  assign cpm_irq1_0_1 = cpm_irq1_0;
  assign cpm_misc_irq_0 = versal_cips_0_cpm_misc_irq;
  assign cpm_uncor_irq_0 = versal_cips_0_cpm_uncor_irq;
  assign gt_refclk1_0_1_CLK_N = gt_refclk1_0_clk_n;
  assign gt_refclk1_0_1_CLK_P = gt_refclk1_0_clk_p;
  assign pcie1_cfg_control_0_1_err_cor_in = pcie1_cfg_control_0_err_cor_in;
  assign pcie1_cfg_control_0_1_err_uncor_in = pcie1_cfg_control_0_err_uncor_in;
  assign pcie1_cfg_control_0_1_flr_done = pcie1_cfg_control_0_flr_done;
  assign pcie1_cfg_control_0_1_flr_done_function_number = pcie1_cfg_control_0_flr_done_function_number[15:0];
  assign pcie1_cfg_control_0_1_hot_reset_in = pcie1_cfg_control_0_hot_reset_in;
  assign pcie1_cfg_control_0_1_per_function_number = pcie1_cfg_control_0_per_function_number[15:0];
  assign pcie1_cfg_control_0_1_per_function_req = pcie1_cfg_control_0_per_function_req;
  assign pcie1_cfg_control_0_1_power_state_change_ack = pcie1_cfg_control_0_power_state_change_ack;
  assign pcie1_cfg_control_0_flr_in_process[3:0] = pcie1_cfg_control_0_1_flr_in_process;
  assign pcie1_cfg_control_0_hot_reset_out = pcie1_cfg_control_0_1_hot_reset_out;
  assign pcie1_cfg_control_0_power_state_change_interrupt = pcie1_cfg_control_0_1_power_state_change_interrupt;
  assign pcie1_cfg_ext_0_function_number[15:0] = versal_cips_0_pcie1_cfg_ext_function_number;
  assign pcie1_cfg_ext_0_read_received = versal_cips_0_pcie1_cfg_ext_read_received;
  assign pcie1_cfg_ext_0_register_number[9:0] = versal_cips_0_pcie1_cfg_ext_register_number;
  assign pcie1_cfg_ext_0_write_byte_enable[3:0] = versal_cips_0_pcie1_cfg_ext_write_byte_enable;
  assign pcie1_cfg_ext_0_write_data[31:0] = versal_cips_0_pcie1_cfg_ext_write_data;
  assign pcie1_cfg_ext_0_write_received = versal_cips_0_pcie1_cfg_ext_write_received;
  assign pcie1_cfg_fc_0_cpld[11:0] = versal_cips_0_pcie1_cfg_fc_CPLD;
  assign pcie1_cfg_fc_0_cpld_scale[1:0] = versal_cips_0_pcie1_cfg_fc_CPLD_SCALE;
  assign pcie1_cfg_fc_0_cplh[7:0] = versal_cips_0_pcie1_cfg_fc_CPLH;
  assign pcie1_cfg_fc_0_cplh_scale[1:0] = versal_cips_0_pcie1_cfg_fc_CPLH_SCALE;
  assign pcie1_cfg_fc_0_npd[11:0] = versal_cips_0_pcie1_cfg_fc_NPD;
  assign pcie1_cfg_fc_0_npd_scale[1:0] = versal_cips_0_pcie1_cfg_fc_NPD_SCALE;
  assign pcie1_cfg_fc_0_nph[7:0] = versal_cips_0_pcie1_cfg_fc_NPH;
  assign pcie1_cfg_fc_0_nph_scale[1:0] = versal_cips_0_pcie1_cfg_fc_NPH_SCALE;
  assign pcie1_cfg_fc_0_pd[11:0] = versal_cips_0_pcie1_cfg_fc_PD;
  assign pcie1_cfg_fc_0_pd_scale[1:0] = versal_cips_0_pcie1_cfg_fc_PD_SCALE;
  assign pcie1_cfg_fc_0_ph[7:0] = versal_cips_0_pcie1_cfg_fc_PH;
  assign pcie1_cfg_fc_0_ph_scale[1:0] = versal_cips_0_pcie1_cfg_fc_PH_SCALE;
  assign pcie1_cfg_interrupt_0_1_INTx_VECTOR = pcie1_cfg_interrupt_0_intx_vector[3:0];
  assign pcie1_cfg_interrupt_0_1_PENDING = pcie1_cfg_interrupt_0_pending[15:0];
  assign pcie1_cfg_interrupt_0_sent = pcie1_cfg_interrupt_0_1_SENT;
  assign pcie1_cfg_mgmt_0_1_ADDR = pcie1_cfg_mgmt_0_addr[9:0];
  assign pcie1_cfg_mgmt_0_1_BYTE_EN = pcie1_cfg_mgmt_0_byte_en[3:0];
  assign pcie1_cfg_mgmt_0_1_DEBUG_ACCESS = pcie1_cfg_mgmt_0_debug_access;
  assign pcie1_cfg_mgmt_0_1_FUNCTION_NUMBER = pcie1_cfg_mgmt_0_function_number[15:0];
  assign pcie1_cfg_mgmt_0_1_READ_EN = pcie1_cfg_mgmt_0_read_en;
  assign pcie1_cfg_mgmt_0_1_WRITE_DATA = pcie1_cfg_mgmt_0_write_data[31:0];
  assign pcie1_cfg_mgmt_0_1_WRITE_EN = pcie1_cfg_mgmt_0_write_en;
  assign pcie1_cfg_mgmt_0_read_data[31:0] = pcie1_cfg_mgmt_0_1_READ_DATA;
  assign pcie1_cfg_mgmt_0_read_write_done = pcie1_cfg_mgmt_0_1_READ_WRITE_DONE;
  assign pcie1_cfg_msg_recd_0_recd = versal_cips_0_pcie1_cfg_msg_recd_recd;
  assign pcie1_cfg_msg_recd_0_recd_data[7:0] = versal_cips_0_pcie1_cfg_msg_recd_recd_data;
  assign pcie1_cfg_msg_recd_0_recd_type[4:0] = versal_cips_0_pcie1_cfg_msg_recd_recd_type;
  assign pcie1_cfg_msg_tx_0_transmit_done = versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DONE;
  assign pcie1_cfg_msi_0_1_attr = pcie1_cfg_msi_0_attr[2:0];
  assign pcie1_cfg_msi_0_1_function_number = pcie1_cfg_msi_0_function_number[15:0];
  assign pcie1_cfg_msi_0_1_int_vector = pcie1_cfg_msi_0_int_vector[31:0];
  assign pcie1_cfg_msi_0_1_pending_status = pcie1_cfg_msi_0_pending_status[31:0];
  assign pcie1_cfg_msi_0_1_pending_status_data_enable = pcie1_cfg_msi_0_pending_status_data_enable;
  assign pcie1_cfg_msi_0_1_pending_status_function_num = pcie1_cfg_msi_0_pending_status_function_num[3:0];
  assign pcie1_cfg_msi_0_1_select = pcie1_cfg_msi_0_select[3:0];
  assign pcie1_cfg_msi_0_1_tph_present = pcie1_cfg_msi_0_tph_present;
  assign pcie1_cfg_msi_0_1_tph_st_tag = pcie1_cfg_msi_0_tph_st_tag[7:0];
  assign pcie1_cfg_msi_0_1_tph_type = pcie1_cfg_msi_0_tph_type[1:0];
  assign pcie1_cfg_msi_0_data[31:0] = pcie1_cfg_msi_0_1_data;
  assign pcie1_cfg_msi_0_enable = pcie1_cfg_msi_0_1_enable;
  assign pcie1_cfg_msi_0_fail = pcie1_cfg_msi_0_1_fail;
  assign pcie1_cfg_msi_0_mask_update = pcie1_cfg_msi_0_1_mask_update;
  assign pcie1_cfg_msi_0_mmenable[2:0] = pcie1_cfg_msi_0_1_mmenable;
  assign pcie1_cfg_msi_0_sent = pcie1_cfg_msi_0_1_sent;
  assign pcie1_cfg_status_0_10b_tag_requester_enable = versal_cips_0_pcie1_cfg_status_10b_tag_requester_enable;
  assign pcie1_cfg_status_0_atomic_requester_enable = versal_cips_0_pcie1_cfg_status_atomic_requester_enable;
  assign pcie1_cfg_status_0_bus_number[7:0] = versal_cips_0_pcie1_cfg_status_bus_number;
  assign pcie1_cfg_status_0_cq_np_req_count[5:0] = versal_cips_0_pcie1_cfg_status_cq_np_req_count;
  assign pcie1_cfg_status_0_current_speed[2:0] = versal_cips_0_pcie1_cfg_status_current_speed;
  assign pcie1_cfg_status_0_err_cor_out = versal_cips_0_pcie1_cfg_status_err_cor_out;
  assign pcie1_cfg_status_0_err_fatal_out = versal_cips_0_pcie1_cfg_status_err_fatal_out;
  assign pcie1_cfg_status_0_err_nonfatal_out = versal_cips_0_pcie1_cfg_status_err_nonfatal_out;
  assign pcie1_cfg_status_0_ext_tag_enable = versal_cips_0_pcie1_cfg_status_ext_tag_enable;
  assign pcie1_cfg_status_0_function_power_state[2:0] = versal_cips_0_pcie1_cfg_status_function_power_state;
  assign pcie1_cfg_status_0_function_status[3:0] = versal_cips_0_pcie1_cfg_status_function_status;
  assign pcie1_cfg_status_0_link_power_state[1:0] = versal_cips_0_pcie1_cfg_status_link_power_state;
  assign pcie1_cfg_status_0_local_error_out[4:0] = versal_cips_0_pcie1_cfg_status_local_error_out;
  assign pcie1_cfg_status_0_local_error_valid = versal_cips_0_pcie1_cfg_status_local_error_valid;
  assign pcie1_cfg_status_0_ltssm_state[5:0] = versal_cips_0_pcie1_cfg_status_ltssm_state;
  assign pcie1_cfg_status_0_max_pasid_width_control[79:0] = versal_cips_0_pcie1_cfg_status_max_pasid_width_control;
  assign pcie1_cfg_status_0_max_payload[1:0] = versal_cips_0_pcie1_cfg_status_max_payload;
  assign pcie1_cfg_status_0_max_read_req[2:0] = versal_cips_0_pcie1_cfg_status_max_read_req;
  assign pcie1_cfg_status_0_negotiated_width[2:0] = versal_cips_0_pcie1_cfg_status_negotiated_width;
  assign pcie1_cfg_status_0_pasid_control[47:0] = versal_cips_0_pcie1_cfg_status_pasid_control;
  assign pcie1_cfg_status_0_pasid_enable = versal_cips_0_pcie1_cfg_status_pasid_enable;
  assign pcie1_cfg_status_0_pasid_exec_permission_enable = versal_cips_0_pcie1_cfg_status_pasid_exec_permission_enable;
  assign pcie1_cfg_status_0_pasid_privil_mode_enable = versal_cips_0_pcie1_cfg_status_pasid_privil_mode_enable;
  assign pcie1_cfg_status_0_per_function_out[23:0] = versal_cips_0_pcie1_cfg_status_per_function_out;
  assign pcie1_cfg_status_0_per_function_vld = versal_cips_0_pcie1_cfg_status_per_function_vld;
  assign pcie1_cfg_status_0_phy_link_down = versal_cips_0_pcie1_cfg_status_phy_link_down;
  assign pcie1_cfg_status_0_phy_link_status[1:0] = versal_cips_0_pcie1_cfg_status_phy_link_status;
  assign pcie1_cfg_status_0_pl_status_change = versal_cips_0_pcie1_cfg_status_pl_status_change;
  assign pcie1_cfg_status_0_rcb_status = versal_cips_0_pcie1_cfg_status_rcb_status;
  assign pcie1_cfg_status_0_rq_seq_num0[5:0] = versal_cips_0_pcie1_cfg_status_rq_seq_num0;
  assign pcie1_cfg_status_0_rq_seq_num1[5:0] = versal_cips_0_pcie1_cfg_status_rq_seq_num1;
  assign pcie1_cfg_status_0_rq_seq_num2[5:0] = versal_cips_0_pcie1_cfg_status_rq_seq_num2;
  assign pcie1_cfg_status_0_rq_seq_num3[5:0] = versal_cips_0_pcie1_cfg_status_rq_seq_num3;
  assign pcie1_cfg_status_0_rq_seq_num_vld0 = versal_cips_0_pcie1_cfg_status_rq_seq_num_vld0;
  assign pcie1_cfg_status_0_rq_seq_num_vld1 = versal_cips_0_pcie1_cfg_status_rq_seq_num_vld1;
  assign pcie1_cfg_status_0_rq_seq_num_vld2 = versal_cips_0_pcie1_cfg_status_rq_seq_num_vld2;
  assign pcie1_cfg_status_0_rq_seq_num_vld3 = versal_cips_0_pcie1_cfg_status_rq_seq_num_vld3;
  assign pcie1_cfg_status_0_rq_tag0[19:0] = versal_cips_0_pcie1_cfg_status_rq_tag0;
  assign pcie1_cfg_status_0_rq_tag1[19:0] = versal_cips_0_pcie1_cfg_status_rq_tag1;
  assign pcie1_cfg_status_0_rq_tag_av[3:0] = versal_cips_0_pcie1_cfg_status_rq_tag_av;
  assign pcie1_cfg_status_0_rq_tag_vld0[1:0] = versal_cips_0_pcie1_cfg_status_rq_tag_vld0;
  assign pcie1_cfg_status_0_rq_tag_vld1[1:0] = versal_cips_0_pcie1_cfg_status_rq_tag_vld1;
  assign pcie1_cfg_status_0_rx_pm_state[1:0] = versal_cips_0_pcie1_cfg_status_rx_pm_state;
  assign pcie1_cfg_status_0_tph_requester_enable[3:0] = versal_cips_0_pcie1_cfg_status_tph_requester_enable;
  assign pcie1_cfg_status_0_tph_st_mode[11:0] = versal_cips_0_pcie1_cfg_status_tph_st_mode;
  assign pcie1_cfg_status_0_tx_pm_state[1:0] = versal_cips_0_pcie1_cfg_status_tx_pm_state;
  assign pcie1_cfg_status_0_wrreq_bme_vld = versal_cips_0_pcie1_cfg_status_wrreq_bme_vld;
  assign pcie1_cfg_status_0_wrreq_flr_vld = versal_cips_0_pcie1_cfg_status_wrreq_flr_vld;
  assign pcie1_cfg_status_0_wrreq_function_number[15:0] = versal_cips_0_pcie1_cfg_status_wrreq_function_number;
  assign pcie1_cfg_status_0_wrreq_msi_vld = versal_cips_0_pcie1_cfg_status_wrreq_msi_vld;
  assign pcie1_cfg_status_0_wrreq_msix_vld = versal_cips_0_pcie1_cfg_status_wrreq_msix_vld;
  assign pcie1_cfg_status_0_wrreq_out_value[3:0] = versal_cips_0_pcie1_cfg_status_wrreq_out_value;
  assign pcie1_cfg_status_0_wrreq_vfe_vld = versal_cips_0_pcie1_cfg_status_wrreq_vfe_vld;
  assign pcie1_m_axis_cq_0_tdata[1023:0] = versal_cips_0_pcie1_m_axis_cq_TDATA;
  assign pcie1_m_axis_cq_0_tkeep[31:0] = versal_cips_0_pcie1_m_axis_cq_TKEEP;
  assign pcie1_m_axis_cq_0_tlast = versal_cips_0_pcie1_m_axis_cq_TLAST;
  assign pcie1_m_axis_cq_0_tuser[464:0] = versal_cips_0_pcie1_m_axis_cq_TUSER;
  assign pcie1_m_axis_cq_0_tvalid = versal_cips_0_pcie1_m_axis_cq_TVALID;
  assign pcie1_m_axis_rc_0_tdata[1023:0] = versal_cips_0_pcie1_m_axis_rc_TDATA;
  assign pcie1_m_axis_rc_0_tkeep[31:0] = versal_cips_0_pcie1_m_axis_rc_TKEEP;
  assign pcie1_m_axis_rc_0_tlast = versal_cips_0_pcie1_m_axis_rc_TLAST;
  assign pcie1_m_axis_rc_0_tuser[336:0] = versal_cips_0_pcie1_m_axis_rc_TUSER;
  assign pcie1_m_axis_rc_0_tvalid = versal_cips_0_pcie1_m_axis_rc_TVALID;
  assign pcie1_s_axis_cc_0_1_TDATA = pcie1_s_axis_cc_0_tdata[1023:0];
  assign pcie1_s_axis_cc_0_1_TKEEP = pcie1_s_axis_cc_0_tkeep[31:0];
  assign pcie1_s_axis_cc_0_1_TLAST = pcie1_s_axis_cc_0_tlast;
  assign pcie1_s_axis_cc_0_1_TUSER = pcie1_s_axis_cc_0_tuser[164:0];
  assign pcie1_s_axis_cc_0_1_TVALID = pcie1_s_axis_cc_0_tvalid;
  assign pcie1_s_axis_cc_0_tready = pcie1_s_axis_cc_0_1_TREADY;
  assign pcie1_s_axis_rq_0_1_TDATA = pcie1_s_axis_rq_0_tdata[1023:0];
  assign pcie1_s_axis_rq_0_1_TKEEP = pcie1_s_axis_rq_0_tkeep[31:0];
  assign pcie1_s_axis_rq_0_1_TLAST = pcie1_s_axis_rq_0_tlast;
  assign pcie1_s_axis_rq_0_1_TUSER = pcie1_s_axis_rq_0_tuser[372:0];
  assign pcie1_s_axis_rq_0_1_TVALID = pcie1_s_axis_rq_0_tvalid;
  assign pcie1_s_axis_rq_0_tready = pcie1_s_axis_rq_0_1_TREADY;
  assign pcie1_transmit_fc_0_npd_av[3:0] = versal_cips_0_pcie1_transmit_fc_npd_av;
  assign pcie1_transmit_fc_0_nph_av[3:0] = versal_cips_0_pcie1_transmit_fc_nph_av;
  assign pcie1_user_clk_0 = versal_cips_0_pcie1_user_clk;
  assign pcie1_user_lnk_up_0 = versal_cips_0_pcie1_user_lnk_up;
  assign pcie1_user_reset_0 = versal_cips_0_pcie1_user_reset;
  assign versal_cips_0_PCIE1_GT_GRX_N = PCIE1_GT_0_grx_n[7:0];
  assign versal_cips_0_PCIE1_GT_GRX_P = PCIE1_GT_0_grx_p[7:0];
  assign versal_cips_0_pcie1_cfg_ext_read_data = pcie1_cfg_ext_0_read_data[31:0];
  assign versal_cips_0_pcie1_cfg_ext_read_data_valid = pcie1_cfg_ext_0_read_data_valid;
  assign versal_cips_0_pcie1_cfg_fc_SEL = pcie1_cfg_fc_0_sel[2:0];
  assign versal_cips_0_pcie1_cfg_fc_VC_SEL = pcie1_cfg_fc_0_vc_sel;
  assign versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT = pcie1_cfg_msg_tx_0_transmit;
  assign versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DATA = pcie1_cfg_msg_tx_0_transmit_data[31:0];
  assign versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE = pcie1_cfg_msg_tx_0_transmit_type[2:0];
  assign versal_cips_0_pcie1_cfg_status_cq_np_req = pcie1_cfg_status_0_cq_np_req[1:0];
  assign versal_cips_0_pcie1_m_axis_cq_TREADY = pcie1_m_axis_cq_0_tready;
  assign versal_cips_0_pcie1_m_axis_rc_TREADY = pcie1_m_axis_rc_0_tready;
  exerciser_versal_cips_0_0 versal_cips_0
       (.PCIE1_GT_grx_n(versal_cips_0_PCIE1_GT_GRX_N),
        .PCIE1_GT_grx_p(versal_cips_0_PCIE1_GT_GRX_P),
        .PCIE1_GT_gtx_n(versal_cips_0_PCIE1_GT_GTX_N),
        .PCIE1_GT_gtx_p(versal_cips_0_PCIE1_GT_GTX_P),
        .cpm_cor_irq(versal_cips_0_cpm_cor_irq),
        .cpm_irq0(cpm_irq0_0_1),
        .cpm_irq1(cpm_irq1_0_1),
        .cpm_misc_irq(versal_cips_0_cpm_misc_irq),
        .cpm_uncor_irq(versal_cips_0_cpm_uncor_irq),
        .gt_refclk1_clk_n(gt_refclk1_0_1_CLK_N),
        .gt_refclk1_clk_p(gt_refclk1_0_1_CLK_P),
        .pcie1_cfg_control_err_cor_in(pcie1_cfg_control_0_1_err_cor_in),
        .pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_0_1_err_uncor_in),
        .pcie1_cfg_control_flr_done(pcie1_cfg_control_0_1_flr_done),
        .pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_0_1_flr_done_function_number),
        .pcie1_cfg_control_flr_in_process(pcie1_cfg_control_0_1_flr_in_process),
        .pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_0_1_hot_reset_in),
        .pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_0_1_hot_reset_out),
        .pcie1_cfg_control_per_function_number(pcie1_cfg_control_0_1_per_function_number),
        .pcie1_cfg_control_per_function_req(pcie1_cfg_control_0_1_per_function_req),
        .pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_0_1_power_state_change_ack),
        .pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_0_1_power_state_change_interrupt),
        .pcie1_cfg_ext_function_number(versal_cips_0_pcie1_cfg_ext_function_number),
        .pcie1_cfg_ext_read_data(versal_cips_0_pcie1_cfg_ext_read_data),
        .pcie1_cfg_ext_read_data_valid(versal_cips_0_pcie1_cfg_ext_read_data_valid),
        .pcie1_cfg_ext_read_received(versal_cips_0_pcie1_cfg_ext_read_received),
        .pcie1_cfg_ext_register_number(versal_cips_0_pcie1_cfg_ext_register_number),
        .pcie1_cfg_ext_write_byte_enable(versal_cips_0_pcie1_cfg_ext_write_byte_enable),
        .pcie1_cfg_ext_write_data(versal_cips_0_pcie1_cfg_ext_write_data),
        .pcie1_cfg_ext_write_received(versal_cips_0_pcie1_cfg_ext_write_received),
        .pcie1_cfg_fc_cpld(versal_cips_0_pcie1_cfg_fc_CPLD),
        .pcie1_cfg_fc_cpld_scale(versal_cips_0_pcie1_cfg_fc_CPLD_SCALE),
        .pcie1_cfg_fc_cplh(versal_cips_0_pcie1_cfg_fc_CPLH),
        .pcie1_cfg_fc_cplh_scale(versal_cips_0_pcie1_cfg_fc_CPLH_SCALE),
        .pcie1_cfg_fc_npd(versal_cips_0_pcie1_cfg_fc_NPD),
        .pcie1_cfg_fc_npd_scale(versal_cips_0_pcie1_cfg_fc_NPD_SCALE),
        .pcie1_cfg_fc_nph(versal_cips_0_pcie1_cfg_fc_NPH),
        .pcie1_cfg_fc_nph_scale(versal_cips_0_pcie1_cfg_fc_NPH_SCALE),
        .pcie1_cfg_fc_pd(versal_cips_0_pcie1_cfg_fc_PD),
        .pcie1_cfg_fc_pd_scale(versal_cips_0_pcie1_cfg_fc_PD_SCALE),
        .pcie1_cfg_fc_ph(versal_cips_0_pcie1_cfg_fc_PH),
        .pcie1_cfg_fc_ph_scale(versal_cips_0_pcie1_cfg_fc_PH_SCALE),
        .pcie1_cfg_fc_sel(versal_cips_0_pcie1_cfg_fc_SEL),
        .pcie1_cfg_fc_vc_sel(versal_cips_0_pcie1_cfg_fc_VC_SEL),
        .pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_0_1_INTx_VECTOR),
        .pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_0_1_PENDING),
        .pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_0_1_SENT),
        .pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_0_1_ADDR),
        .pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_0_1_BYTE_EN),
        .pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_0_1_DEBUG_ACCESS),
        .pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_0_1_FUNCTION_NUMBER),
        .pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_0_1_READ_DATA),
        .pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_0_1_READ_EN),
        .pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_0_1_READ_WRITE_DONE),
        .pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_0_1_WRITE_DATA),
        .pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_0_1_WRITE_EN),
        .pcie1_cfg_msg_recd_recd(versal_cips_0_pcie1_cfg_msg_recd_recd),
        .pcie1_cfg_msg_recd_recd_data(versal_cips_0_pcie1_cfg_msg_recd_recd_data),
        .pcie1_cfg_msg_recd_recd_type(versal_cips_0_pcie1_cfg_msg_recd_recd_type),
        .pcie1_cfg_msg_tx_transmit(versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT),
        .pcie1_cfg_msg_tx_transmit_data(versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DATA),
        .pcie1_cfg_msg_tx_transmit_done(versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_DONE),
        .pcie1_cfg_msg_tx_transmit_type(versal_cips_0_pcie1_cfg_msg_tx_TRANSMIT_TYPE),
        .pcie1_cfg_msi_attr(pcie1_cfg_msi_0_1_attr),
        .pcie1_cfg_msi_data(pcie1_cfg_msi_0_1_data),
        .pcie1_cfg_msi_enable(pcie1_cfg_msi_0_1_enable),
        .pcie1_cfg_msi_fail(pcie1_cfg_msi_0_1_fail),
        .pcie1_cfg_msi_function_number(pcie1_cfg_msi_0_1_function_number),
        .pcie1_cfg_msi_int_vector(pcie1_cfg_msi_0_1_int_vector),
        .pcie1_cfg_msi_mask_update(pcie1_cfg_msi_0_1_mask_update),
        .pcie1_cfg_msi_mmenable(pcie1_cfg_msi_0_1_mmenable),
        .pcie1_cfg_msi_pending_status(pcie1_cfg_msi_0_1_pending_status),
        .pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_0_1_pending_status_data_enable),
        .pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_0_1_pending_status_function_num),
        .pcie1_cfg_msi_select(pcie1_cfg_msi_0_1_select),
        .pcie1_cfg_msi_sent(pcie1_cfg_msi_0_1_sent),
        .pcie1_cfg_msi_tph_present(pcie1_cfg_msi_0_1_tph_present),
        .pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_0_1_tph_st_tag),
        .pcie1_cfg_msi_tph_type(pcie1_cfg_msi_0_1_tph_type),
        .pcie1_cfg_status_10b_tag_requester_enable(versal_cips_0_pcie1_cfg_status_10b_tag_requester_enable),
        .pcie1_cfg_status_atomic_requester_enable(versal_cips_0_pcie1_cfg_status_atomic_requester_enable),
        .pcie1_cfg_status_bus_number(versal_cips_0_pcie1_cfg_status_bus_number),
        .pcie1_cfg_status_cq_np_req(versal_cips_0_pcie1_cfg_status_cq_np_req),
        .pcie1_cfg_status_cq_np_req_count(versal_cips_0_pcie1_cfg_status_cq_np_req_count),
        .pcie1_cfg_status_current_speed(versal_cips_0_pcie1_cfg_status_current_speed),
        .pcie1_cfg_status_err_cor_out(versal_cips_0_pcie1_cfg_status_err_cor_out),
        .pcie1_cfg_status_err_fatal_out(versal_cips_0_pcie1_cfg_status_err_fatal_out),
        .pcie1_cfg_status_err_nonfatal_out(versal_cips_0_pcie1_cfg_status_err_nonfatal_out),
        .pcie1_cfg_status_ext_tag_enable(versal_cips_0_pcie1_cfg_status_ext_tag_enable),
        .pcie1_cfg_status_function_power_state(versal_cips_0_pcie1_cfg_status_function_power_state),
        .pcie1_cfg_status_function_status(versal_cips_0_pcie1_cfg_status_function_status),
        .pcie1_cfg_status_link_power_state(versal_cips_0_pcie1_cfg_status_link_power_state),
        .pcie1_cfg_status_local_error_out(versal_cips_0_pcie1_cfg_status_local_error_out),
        .pcie1_cfg_status_local_error_valid(versal_cips_0_pcie1_cfg_status_local_error_valid),
        .pcie1_cfg_status_ltssm_state(versal_cips_0_pcie1_cfg_status_ltssm_state),
        .pcie1_cfg_status_max_pasid_width_control(versal_cips_0_pcie1_cfg_status_max_pasid_width_control),
        .pcie1_cfg_status_max_payload(versal_cips_0_pcie1_cfg_status_max_payload),
        .pcie1_cfg_status_max_read_req(versal_cips_0_pcie1_cfg_status_max_read_req),
        .pcie1_cfg_status_negotiated_width(versal_cips_0_pcie1_cfg_status_negotiated_width),
        .pcie1_cfg_status_pasid_control(versal_cips_0_pcie1_cfg_status_pasid_control),
        .pcie1_cfg_status_pasid_enable(versal_cips_0_pcie1_cfg_status_pasid_enable),
        .pcie1_cfg_status_pasid_exec_permission_enable(versal_cips_0_pcie1_cfg_status_pasid_exec_permission_enable),
        .pcie1_cfg_status_pasid_privil_mode_enable(versal_cips_0_pcie1_cfg_status_pasid_privil_mode_enable),
        .pcie1_cfg_status_per_function_out(versal_cips_0_pcie1_cfg_status_per_function_out),
        .pcie1_cfg_status_per_function_vld(versal_cips_0_pcie1_cfg_status_per_function_vld),
        .pcie1_cfg_status_phy_link_down(versal_cips_0_pcie1_cfg_status_phy_link_down),
        .pcie1_cfg_status_phy_link_status(versal_cips_0_pcie1_cfg_status_phy_link_status),
        .pcie1_cfg_status_pl_status_change(versal_cips_0_pcie1_cfg_status_pl_status_change),
        .pcie1_cfg_status_rcb_status(versal_cips_0_pcie1_cfg_status_rcb_status),
        .pcie1_cfg_status_rq_seq_num0(versal_cips_0_pcie1_cfg_status_rq_seq_num0),
        .pcie1_cfg_status_rq_seq_num1(versal_cips_0_pcie1_cfg_status_rq_seq_num1),
        .pcie1_cfg_status_rq_seq_num2(versal_cips_0_pcie1_cfg_status_rq_seq_num2),
        .pcie1_cfg_status_rq_seq_num3(versal_cips_0_pcie1_cfg_status_rq_seq_num3),
        .pcie1_cfg_status_rq_seq_num_vld0(versal_cips_0_pcie1_cfg_status_rq_seq_num_vld0),
        .pcie1_cfg_status_rq_seq_num_vld1(versal_cips_0_pcie1_cfg_status_rq_seq_num_vld1),
        .pcie1_cfg_status_rq_seq_num_vld2(versal_cips_0_pcie1_cfg_status_rq_seq_num_vld2),
        .pcie1_cfg_status_rq_seq_num_vld3(versal_cips_0_pcie1_cfg_status_rq_seq_num_vld3),
        .pcie1_cfg_status_rq_tag0(versal_cips_0_pcie1_cfg_status_rq_tag0),
        .pcie1_cfg_status_rq_tag1(versal_cips_0_pcie1_cfg_status_rq_tag1),
        .pcie1_cfg_status_rq_tag_av(versal_cips_0_pcie1_cfg_status_rq_tag_av),
        .pcie1_cfg_status_rq_tag_vld0(versal_cips_0_pcie1_cfg_status_rq_tag_vld0),
        .pcie1_cfg_status_rq_tag_vld1(versal_cips_0_pcie1_cfg_status_rq_tag_vld1),
        .pcie1_cfg_status_rx_pm_state(versal_cips_0_pcie1_cfg_status_rx_pm_state),
        .pcie1_cfg_status_tph_requester_enable(versal_cips_0_pcie1_cfg_status_tph_requester_enable),
        .pcie1_cfg_status_tph_st_mode(versal_cips_0_pcie1_cfg_status_tph_st_mode),
        .pcie1_cfg_status_tx_pm_state(versal_cips_0_pcie1_cfg_status_tx_pm_state),
        .pcie1_cfg_status_wrreq_bme_vld(versal_cips_0_pcie1_cfg_status_wrreq_bme_vld),
        .pcie1_cfg_status_wrreq_flr_vld(versal_cips_0_pcie1_cfg_status_wrreq_flr_vld),
        .pcie1_cfg_status_wrreq_function_number(versal_cips_0_pcie1_cfg_status_wrreq_function_number),
        .pcie1_cfg_status_wrreq_msi_vld(versal_cips_0_pcie1_cfg_status_wrreq_msi_vld),
        .pcie1_cfg_status_wrreq_msix_vld(versal_cips_0_pcie1_cfg_status_wrreq_msix_vld),
        .pcie1_cfg_status_wrreq_out_value(versal_cips_0_pcie1_cfg_status_wrreq_out_value),
        .pcie1_cfg_status_wrreq_vfe_vld(versal_cips_0_pcie1_cfg_status_wrreq_vfe_vld),
        .pcie1_m_axis_cq_tdata(versal_cips_0_pcie1_m_axis_cq_TDATA),
        .pcie1_m_axis_cq_tkeep(versal_cips_0_pcie1_m_axis_cq_TKEEP),
        .pcie1_m_axis_cq_tlast(versal_cips_0_pcie1_m_axis_cq_TLAST),
        .pcie1_m_axis_cq_tready(versal_cips_0_pcie1_m_axis_cq_TREADY),
        .pcie1_m_axis_cq_tuser(versal_cips_0_pcie1_m_axis_cq_TUSER),
        .pcie1_m_axis_cq_tvalid(versal_cips_0_pcie1_m_axis_cq_TVALID),
        .pcie1_m_axis_rc_tdata(versal_cips_0_pcie1_m_axis_rc_TDATA),
        .pcie1_m_axis_rc_tkeep(versal_cips_0_pcie1_m_axis_rc_TKEEP),
        .pcie1_m_axis_rc_tlast(versal_cips_0_pcie1_m_axis_rc_TLAST),
        .pcie1_m_axis_rc_tready(versal_cips_0_pcie1_m_axis_rc_TREADY),
        .pcie1_m_axis_rc_tuser(versal_cips_0_pcie1_m_axis_rc_TUSER),
        .pcie1_m_axis_rc_tvalid(versal_cips_0_pcie1_m_axis_rc_TVALID),
        .pcie1_s_axis_cc_tdata(pcie1_s_axis_cc_0_1_TDATA),
        .pcie1_s_axis_cc_tkeep(pcie1_s_axis_cc_0_1_TKEEP),
        .pcie1_s_axis_cc_tlast(pcie1_s_axis_cc_0_1_TLAST),
        .pcie1_s_axis_cc_tready(pcie1_s_axis_cc_0_1_TREADY),
        .pcie1_s_axis_cc_tuser(pcie1_s_axis_cc_0_1_TUSER),
        .pcie1_s_axis_cc_tvalid(pcie1_s_axis_cc_0_1_TVALID),
        .pcie1_s_axis_rq_tdata(pcie1_s_axis_rq_0_1_TDATA),
        .pcie1_s_axis_rq_tkeep(pcie1_s_axis_rq_0_1_TKEEP),
        .pcie1_s_axis_rq_tlast(pcie1_s_axis_rq_0_1_TLAST),
        .pcie1_s_axis_rq_tready(pcie1_s_axis_rq_0_1_TREADY),
        .pcie1_s_axis_rq_tuser(pcie1_s_axis_rq_0_1_TUSER),
        .pcie1_s_axis_rq_tvalid(pcie1_s_axis_rq_0_1_TVALID),
        .pcie1_transmit_fc_npd_av(versal_cips_0_pcie1_transmit_fc_npd_av),
        .pcie1_transmit_fc_nph_av(versal_cips_0_pcie1_transmit_fc_nph_av),
        .pcie1_user_clk(versal_cips_0_pcie1_user_clk),
        .pcie1_user_lnk_up(versal_cips_0_pcie1_user_lnk_up),
        .pcie1_user_reset(versal_cips_0_pcie1_user_reset));
endmodule
