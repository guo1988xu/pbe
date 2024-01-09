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


#include "exerciser_versal_cips_0_0_sc.h"

#include "exerciser_versal_cips_0_0.h"

#include "versal_cips_v3_3_3_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
exerciser_versal_cips_0_0::exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm) : exerciser_versal_cips_0_0_sc(nm), pcie1_user_clk("pcie1_user_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), pcie1_user_reset("pcie1_user_reset"), pcie1_user_lnk_up("pcie1_user_lnk_up"), pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in"), pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in"), pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done"), pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number"), pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process"), pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in"), pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out"), pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req"), pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number"), pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack"), pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt"), pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent"), pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector"), pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending"), pcie1_s_axis_rq_tready("pcie1_s_axis_rq_tready"), pcie1_s_axis_rq_tdata("pcie1_s_axis_rq_tdata"), pcie1_s_axis_rq_tkeep("pcie1_s_axis_rq_tkeep"), pcie1_s_axis_rq_tlast("pcie1_s_axis_rq_tlast"), pcie1_s_axis_rq_tuser("pcie1_s_axis_rq_tuser"), pcie1_s_axis_rq_tvalid("pcie1_s_axis_rq_tvalid"), pcie1_s_axis_cc_tready("pcie1_s_axis_cc_tready"), pcie1_s_axis_cc_tdata("pcie1_s_axis_cc_tdata"), pcie1_s_axis_cc_tkeep("pcie1_s_axis_cc_tkeep"), pcie1_s_axis_cc_tlast("pcie1_s_axis_cc_tlast"), pcie1_s_axis_cc_tuser("pcie1_s_axis_cc_tuser"), pcie1_s_axis_cc_tvalid("pcie1_s_axis_cc_tvalid"), pcie1_m_axis_rc_tdata("pcie1_m_axis_rc_tdata"), pcie1_m_axis_rc_tkeep("pcie1_m_axis_rc_tkeep"), pcie1_m_axis_rc_tlast("pcie1_m_axis_rc_tlast"), pcie1_m_axis_rc_tready("pcie1_m_axis_rc_tready"), pcie1_m_axis_rc_tuser("pcie1_m_axis_rc_tuser"), pcie1_m_axis_rc_tvalid("pcie1_m_axis_rc_tvalid"), pcie1_m_axis_cq_tdata("pcie1_m_axis_cq_tdata"), pcie1_m_axis_cq_tkeep("pcie1_m_axis_cq_tkeep"), pcie1_m_axis_cq_tlast("pcie1_m_axis_cq_tlast"), pcie1_m_axis_cq_tready("pcie1_m_axis_cq_tready"), pcie1_m_axis_cq_tuser("pcie1_m_axis_cq_tuser"), pcie1_m_axis_cq_tvalid("pcie1_m_axis_cq_tvalid"), pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en"), pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done"), pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en"), pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access"), pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data"), pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr"), pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en"), pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data"), pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number"), pcie1_cfg_msi_fail("pcie1_cfg_msi_fail"), pcie1_cfg_msi_sent("pcie1_cfg_msi_sent"), pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update"), pcie1_cfg_msi_data("pcie1_cfg_msi_data"), pcie1_cfg_msi_enable("pcie1_cfg_msi_enable"), pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable"), pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present"), pcie1_cfg_msi_attr("pcie1_cfg_msi_attr"), pcie1_cfg_msi_select("pcie1_cfg_msi_select"), pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type"), pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag"), pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector"), pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status"), pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number"), pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable"), pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num"), pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received"), pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received"), pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data"), pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid"), pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number"), pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number"), pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data"), pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable"), pcie1_cfg_fc_ph("pcie1_cfg_fc_ph"), pcie1_cfg_fc_pd("pcie1_cfg_fc_pd"), pcie1_cfg_fc_nph("pcie1_cfg_fc_nph"), pcie1_cfg_fc_npd("pcie1_cfg_fc_npd"), pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel"), pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale"), pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale"), pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale"), pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale"), pcie1_cfg_fc_sel("pcie1_cfg_fc_sel"), pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh"), pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld"), pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale"), pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale"), pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done"), pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit"), pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type"), pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data"), pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out"), pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out"), pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out"), pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid"), pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out"), pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable"), pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control"), pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control"), pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable"), pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable"), pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0"), pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1"), pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0"), pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1"), pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2"), pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3"), pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av"), pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0"), pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1"), pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0"), pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1"), pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2"), pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3"), pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count"), pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req"), pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state"), pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable"), pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number"), pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down"), pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable"), pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change"), pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status"), pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state"), pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload"), pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode"), pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req"), pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed"), pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state"), pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state"), pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status"), pcie1_cfg_status_function_status("pcie1_cfg_status_function_status"), pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state"), pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width"), pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable"), pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable"), pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld"), pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out"), pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld"), pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld"), pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld"), pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld"), pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld"), pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value"), pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number"), pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av"), pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av"), pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd"), pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data"), pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p")
{

  // initialize pins
  mp_impl->pcie1_user_clk(pcie1_user_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->pcie1_user_reset(pcie1_user_reset);
  mp_impl->pcie1_user_lnk_up(pcie1_user_lnk_up);
  mp_impl->pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in);
  mp_impl->pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in);
  mp_impl->pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done);
  mp_impl->pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number);
  mp_impl->pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process);
  mp_impl->pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in);
  mp_impl->pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out);
  mp_impl->pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req);
  mp_impl->pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number);
  mp_impl->pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack);
  mp_impl->pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt);
  mp_impl->pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent);
  mp_impl->pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector);
  mp_impl->pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending);
  mp_impl->pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en);
  mp_impl->pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done);
  mp_impl->pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en);
  mp_impl->pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access);
  mp_impl->pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data);
  mp_impl->pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr);
  mp_impl->pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en);
  mp_impl->pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data);
  mp_impl->pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number);
  mp_impl->pcie1_cfg_msi_fail(pcie1_cfg_msi_fail);
  mp_impl->pcie1_cfg_msi_sent(pcie1_cfg_msi_sent);
  mp_impl->pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update);
  mp_impl->pcie1_cfg_msi_data(pcie1_cfg_msi_data);
  mp_impl->pcie1_cfg_msi_enable(pcie1_cfg_msi_enable);
  mp_impl->pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable);
  mp_impl->pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present);
  mp_impl->pcie1_cfg_msi_attr(pcie1_cfg_msi_attr);
  mp_impl->pcie1_cfg_msi_select(pcie1_cfg_msi_select);
  mp_impl->pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type);
  mp_impl->pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag);
  mp_impl->pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector);
  mp_impl->pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status);
  mp_impl->pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number);
  mp_impl->pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable);
  mp_impl->pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num);
  mp_impl->pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received);
  mp_impl->pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received);
  mp_impl->pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data);
  mp_impl->pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid);
  mp_impl->pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number);
  mp_impl->pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number);
  mp_impl->pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data);
  mp_impl->pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable);
  mp_impl->pcie1_cfg_fc_ph(pcie1_cfg_fc_ph);
  mp_impl->pcie1_cfg_fc_pd(pcie1_cfg_fc_pd);
  mp_impl->pcie1_cfg_fc_nph(pcie1_cfg_fc_nph);
  mp_impl->pcie1_cfg_fc_npd(pcie1_cfg_fc_npd);
  mp_impl->pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel);
  mp_impl->pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale);
  mp_impl->pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale);
  mp_impl->pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale);
  mp_impl->pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale);
  mp_impl->pcie1_cfg_fc_sel(pcie1_cfg_fc_sel);
  mp_impl->pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh);
  mp_impl->pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld);
  mp_impl->pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale);
  mp_impl->pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale);
  mp_impl->pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done);
  mp_impl->pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit);
  mp_impl->pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type);
  mp_impl->pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data);
  mp_impl->pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out);
  mp_impl->pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out);
  mp_impl->pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out);
  mp_impl->pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid);
  mp_impl->pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out);
  mp_impl->pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable);
  mp_impl->pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control);
  mp_impl->pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control);
  mp_impl->pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable);
  mp_impl->pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable);
  mp_impl->pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0);
  mp_impl->pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3);
  mp_impl->pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av);
  mp_impl->pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0);
  mp_impl->pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1);
  mp_impl->pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0);
  mp_impl->pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1);
  mp_impl->pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2);
  mp_impl->pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3);
  mp_impl->pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count);
  mp_impl->pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req);
  mp_impl->pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state);
  mp_impl->pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable);
  mp_impl->pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number);
  mp_impl->pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down);
  mp_impl->pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable);
  mp_impl->pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change);
  mp_impl->pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status);
  mp_impl->pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state);
  mp_impl->pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload);
  mp_impl->pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode);
  mp_impl->pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req);
  mp_impl->pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed);
  mp_impl->pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state);
  mp_impl->pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state);
  mp_impl->pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status);
  mp_impl->pcie1_cfg_status_function_status(pcie1_cfg_status_function_status);
  mp_impl->pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state);
  mp_impl->pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width);
  mp_impl->pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable);
  mp_impl->pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable);
  mp_impl->pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld);
  mp_impl->pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out);
  mp_impl->pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld);
  mp_impl->pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld);
  mp_impl->pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld);
  mp_impl->pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld);
  mp_impl->pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld);
  mp_impl->pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value);
  mp_impl->pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number);
  mp_impl->pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av);
  mp_impl->pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av);
  mp_impl->pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd);
  mp_impl->pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data);
  mp_impl->pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);

  // initialize transactors
  mp_pcie1_s_axis_rq_transactor = NULL;
  mp_pcie1_s_axis_rq_tkeep_converter = NULL;
  mp_pcie1_s_axis_cc_transactor = NULL;
  mp_pcie1_s_axis_cc_tkeep_converter = NULL;
  mp_pcie1_m_axis_rc_transactor = NULL;
  mp_pcie1_m_axis_rc_tkeep_converter = NULL;
  mp_pcie1_m_axis_cq_transactor = NULL;
  mp_pcie1_m_axis_cq_tkeep_converter = NULL;

  // initialize socket stubs

}

void exerciser_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'pcie1_s_axis_rq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_rq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_rq' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_rq_transactor_param_props;
    pcie1_s_axis_rq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_rq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TUSER_WIDTH", "373");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_rq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_rq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_rq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_rq_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_rq_transactor = new xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>("pcie1_s_axis_rq_transactor", pcie1_s_axis_rq_transactor_param_props);

    // pcie1_s_axis_rq' transactor ports

    mp_pcie1_s_axis_rq_transactor->TREADY(pcie1_s_axis_rq_tready);
    mp_pcie1_s_axis_rq_transactor->TDATA(pcie1_s_axis_rq_tdata);
    mp_pcie1_s_axis_rq_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_rq_tkeep_converter");
    mp_pcie1_s_axis_rq_tkeep_converter->vector_in(pcie1_s_axis_rq_tkeep);
    mp_pcie1_s_axis_rq_tkeep_converter->vector_out(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TKEEP(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TLAST(pcie1_s_axis_rq_tlast);
    mp_pcie1_s_axis_rq_transactor->TUSER(pcie1_s_axis_rq_tuser);
    mp_pcie1_s_axis_rq_transactor->TVALID(pcie1_s_axis_rq_tvalid);
    mp_pcie1_s_axis_rq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_rq_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_rq' transactor sockets

    mp_impl->pcie1_s_axis_rq_socket->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_s_axis_cc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_cc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_cc' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_cc_transactor_param_props;
    pcie1_s_axis_cc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_cc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TUSER_WIDTH", "165");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_cc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_cc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_cc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_cc_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_cc_transactor = new xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>("pcie1_s_axis_cc_transactor", pcie1_s_axis_cc_transactor_param_props);

    // pcie1_s_axis_cc' transactor ports

    mp_pcie1_s_axis_cc_transactor->TREADY(pcie1_s_axis_cc_tready);
    mp_pcie1_s_axis_cc_transactor->TDATA(pcie1_s_axis_cc_tdata);
    mp_pcie1_s_axis_cc_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_cc_tkeep_converter");
    mp_pcie1_s_axis_cc_tkeep_converter->vector_in(pcie1_s_axis_cc_tkeep);
    mp_pcie1_s_axis_cc_tkeep_converter->vector_out(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TKEEP(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TLAST(pcie1_s_axis_cc_tlast);
    mp_pcie1_s_axis_cc_transactor->TUSER(pcie1_s_axis_cc_tuser);
    mp_pcie1_s_axis_cc_transactor->TVALID(pcie1_s_axis_cc_tvalid);
    mp_pcie1_s_axis_cc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_cc_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_cc' transactor sockets

    mp_impl->pcie1_s_axis_cc_socket->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_rc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_rc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_rc' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_rc_transactor_param_props;
    pcie1_m_axis_rc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_rc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TUSER_WIDTH", "337");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_rc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_rc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_rc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_rc_transactor = new xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>("pcie1_m_axis_rc_transactor", pcie1_m_axis_rc_transactor_param_props);

    // pcie1_m_axis_rc' transactor ports

    mp_pcie1_m_axis_rc_transactor->TDATA(pcie1_m_axis_rc_tdata);
    mp_pcie1_m_axis_rc_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_rc_tkeep_converter");
    mp_pcie1_m_axis_rc_tkeep_converter->vector_in(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_tkeep_converter->vector_out(pcie1_m_axis_rc_tkeep);
    mp_pcie1_m_axis_rc_transactor->TKEEP(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_transactor->TLAST(pcie1_m_axis_rc_tlast);
    mp_pcie1_m_axis_rc_transactor->TREADY(pcie1_m_axis_rc_tready);
    mp_pcie1_m_axis_rc_transactor->TUSER(pcie1_m_axis_rc_tuser);
    mp_pcie1_m_axis_rc_transactor->TVALID(pcie1_m_axis_rc_tvalid);
    mp_pcie1_m_axis_rc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_rc_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_rc' transactor sockets

    mp_impl->pcie1_m_axis_rc_socket->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_cq' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_cq_transactor_param_props;
    pcie1_m_axis_cq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_cq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TUSER_WIDTH", "465");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_cq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_cq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_cq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_cq_transactor = new xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>("pcie1_m_axis_cq_transactor", pcie1_m_axis_cq_transactor_param_props);

    // pcie1_m_axis_cq' transactor ports

    mp_pcie1_m_axis_cq_transactor->TDATA(pcie1_m_axis_cq_tdata);
    mp_pcie1_m_axis_cq_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_cq_tkeep_converter");
    mp_pcie1_m_axis_cq_tkeep_converter->vector_in(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_tkeep_converter->vector_out(pcie1_m_axis_cq_tkeep);
    mp_pcie1_m_axis_cq_transactor->TKEEP(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_transactor->TLAST(pcie1_m_axis_cq_tlast);
    mp_pcie1_m_axis_cq_transactor->TREADY(pcie1_m_axis_cq_tready);
    mp_pcie1_m_axis_cq_transactor->TUSER(pcie1_m_axis_cq_tuser);
    mp_pcie1_m_axis_cq_transactor->TVALID(pcie1_m_axis_cq_tvalid);
    mp_pcie1_m_axis_cq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_cq_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_cq' transactor sockets

    mp_impl->pcie1_m_axis_cq_socket->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
exerciser_versal_cips_0_0::exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm) : exerciser_versal_cips_0_0_sc(nm), pcie1_user_clk("pcie1_user_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), pcie1_user_reset("pcie1_user_reset"), pcie1_user_lnk_up("pcie1_user_lnk_up"), pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in"), pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in"), pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done"), pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number"), pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process"), pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in"), pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out"), pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req"), pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number"), pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack"), pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt"), pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent"), pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector"), pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending"), pcie1_s_axis_rq_tready("pcie1_s_axis_rq_tready"), pcie1_s_axis_rq_tdata("pcie1_s_axis_rq_tdata"), pcie1_s_axis_rq_tkeep("pcie1_s_axis_rq_tkeep"), pcie1_s_axis_rq_tlast("pcie1_s_axis_rq_tlast"), pcie1_s_axis_rq_tuser("pcie1_s_axis_rq_tuser"), pcie1_s_axis_rq_tvalid("pcie1_s_axis_rq_tvalid"), pcie1_s_axis_cc_tready("pcie1_s_axis_cc_tready"), pcie1_s_axis_cc_tdata("pcie1_s_axis_cc_tdata"), pcie1_s_axis_cc_tkeep("pcie1_s_axis_cc_tkeep"), pcie1_s_axis_cc_tlast("pcie1_s_axis_cc_tlast"), pcie1_s_axis_cc_tuser("pcie1_s_axis_cc_tuser"), pcie1_s_axis_cc_tvalid("pcie1_s_axis_cc_tvalid"), pcie1_m_axis_rc_tdata("pcie1_m_axis_rc_tdata"), pcie1_m_axis_rc_tkeep("pcie1_m_axis_rc_tkeep"), pcie1_m_axis_rc_tlast("pcie1_m_axis_rc_tlast"), pcie1_m_axis_rc_tready("pcie1_m_axis_rc_tready"), pcie1_m_axis_rc_tuser("pcie1_m_axis_rc_tuser"), pcie1_m_axis_rc_tvalid("pcie1_m_axis_rc_tvalid"), pcie1_m_axis_cq_tdata("pcie1_m_axis_cq_tdata"), pcie1_m_axis_cq_tkeep("pcie1_m_axis_cq_tkeep"), pcie1_m_axis_cq_tlast("pcie1_m_axis_cq_tlast"), pcie1_m_axis_cq_tready("pcie1_m_axis_cq_tready"), pcie1_m_axis_cq_tuser("pcie1_m_axis_cq_tuser"), pcie1_m_axis_cq_tvalid("pcie1_m_axis_cq_tvalid"), pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en"), pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done"), pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en"), pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access"), pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data"), pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr"), pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en"), pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data"), pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number"), pcie1_cfg_msi_fail("pcie1_cfg_msi_fail"), pcie1_cfg_msi_sent("pcie1_cfg_msi_sent"), pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update"), pcie1_cfg_msi_data("pcie1_cfg_msi_data"), pcie1_cfg_msi_enable("pcie1_cfg_msi_enable"), pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable"), pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present"), pcie1_cfg_msi_attr("pcie1_cfg_msi_attr"), pcie1_cfg_msi_select("pcie1_cfg_msi_select"), pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type"), pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag"), pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector"), pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status"), pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number"), pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable"), pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num"), pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received"), pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received"), pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data"), pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid"), pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number"), pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number"), pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data"), pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable"), pcie1_cfg_fc_ph("pcie1_cfg_fc_ph"), pcie1_cfg_fc_pd("pcie1_cfg_fc_pd"), pcie1_cfg_fc_nph("pcie1_cfg_fc_nph"), pcie1_cfg_fc_npd("pcie1_cfg_fc_npd"), pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel"), pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale"), pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale"), pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale"), pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale"), pcie1_cfg_fc_sel("pcie1_cfg_fc_sel"), pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh"), pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld"), pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale"), pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale"), pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done"), pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit"), pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type"), pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data"), pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out"), pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out"), pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out"), pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid"), pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out"), pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable"), pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control"), pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control"), pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable"), pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable"), pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0"), pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1"), pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0"), pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1"), pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2"), pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3"), pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av"), pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0"), pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1"), pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0"), pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1"), pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2"), pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3"), pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count"), pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req"), pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state"), pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable"), pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number"), pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down"), pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable"), pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change"), pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status"), pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state"), pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload"), pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode"), pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req"), pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed"), pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state"), pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state"), pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status"), pcie1_cfg_status_function_status("pcie1_cfg_status_function_status"), pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state"), pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width"), pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable"), pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable"), pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld"), pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out"), pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld"), pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld"), pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld"), pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld"), pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld"), pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value"), pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number"), pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av"), pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av"), pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd"), pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data"), pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p")
{

  // initialize pins
  mp_impl->pcie1_user_clk(pcie1_user_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->pcie1_user_reset(pcie1_user_reset);
  mp_impl->pcie1_user_lnk_up(pcie1_user_lnk_up);
  mp_impl->pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in);
  mp_impl->pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in);
  mp_impl->pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done);
  mp_impl->pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number);
  mp_impl->pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process);
  mp_impl->pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in);
  mp_impl->pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out);
  mp_impl->pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req);
  mp_impl->pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number);
  mp_impl->pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack);
  mp_impl->pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt);
  mp_impl->pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent);
  mp_impl->pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector);
  mp_impl->pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending);
  mp_impl->pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en);
  mp_impl->pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done);
  mp_impl->pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en);
  mp_impl->pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access);
  mp_impl->pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data);
  mp_impl->pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr);
  mp_impl->pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en);
  mp_impl->pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data);
  mp_impl->pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number);
  mp_impl->pcie1_cfg_msi_fail(pcie1_cfg_msi_fail);
  mp_impl->pcie1_cfg_msi_sent(pcie1_cfg_msi_sent);
  mp_impl->pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update);
  mp_impl->pcie1_cfg_msi_data(pcie1_cfg_msi_data);
  mp_impl->pcie1_cfg_msi_enable(pcie1_cfg_msi_enable);
  mp_impl->pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable);
  mp_impl->pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present);
  mp_impl->pcie1_cfg_msi_attr(pcie1_cfg_msi_attr);
  mp_impl->pcie1_cfg_msi_select(pcie1_cfg_msi_select);
  mp_impl->pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type);
  mp_impl->pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag);
  mp_impl->pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector);
  mp_impl->pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status);
  mp_impl->pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number);
  mp_impl->pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable);
  mp_impl->pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num);
  mp_impl->pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received);
  mp_impl->pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received);
  mp_impl->pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data);
  mp_impl->pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid);
  mp_impl->pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number);
  mp_impl->pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number);
  mp_impl->pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data);
  mp_impl->pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable);
  mp_impl->pcie1_cfg_fc_ph(pcie1_cfg_fc_ph);
  mp_impl->pcie1_cfg_fc_pd(pcie1_cfg_fc_pd);
  mp_impl->pcie1_cfg_fc_nph(pcie1_cfg_fc_nph);
  mp_impl->pcie1_cfg_fc_npd(pcie1_cfg_fc_npd);
  mp_impl->pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel);
  mp_impl->pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale);
  mp_impl->pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale);
  mp_impl->pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale);
  mp_impl->pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale);
  mp_impl->pcie1_cfg_fc_sel(pcie1_cfg_fc_sel);
  mp_impl->pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh);
  mp_impl->pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld);
  mp_impl->pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale);
  mp_impl->pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale);
  mp_impl->pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done);
  mp_impl->pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit);
  mp_impl->pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type);
  mp_impl->pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data);
  mp_impl->pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out);
  mp_impl->pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out);
  mp_impl->pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out);
  mp_impl->pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid);
  mp_impl->pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out);
  mp_impl->pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable);
  mp_impl->pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control);
  mp_impl->pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control);
  mp_impl->pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable);
  mp_impl->pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable);
  mp_impl->pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0);
  mp_impl->pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3);
  mp_impl->pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av);
  mp_impl->pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0);
  mp_impl->pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1);
  mp_impl->pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0);
  mp_impl->pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1);
  mp_impl->pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2);
  mp_impl->pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3);
  mp_impl->pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count);
  mp_impl->pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req);
  mp_impl->pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state);
  mp_impl->pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable);
  mp_impl->pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number);
  mp_impl->pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down);
  mp_impl->pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable);
  mp_impl->pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change);
  mp_impl->pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status);
  mp_impl->pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state);
  mp_impl->pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload);
  mp_impl->pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode);
  mp_impl->pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req);
  mp_impl->pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed);
  mp_impl->pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state);
  mp_impl->pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state);
  mp_impl->pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status);
  mp_impl->pcie1_cfg_status_function_status(pcie1_cfg_status_function_status);
  mp_impl->pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state);
  mp_impl->pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width);
  mp_impl->pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable);
  mp_impl->pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable);
  mp_impl->pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld);
  mp_impl->pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out);
  mp_impl->pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld);
  mp_impl->pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld);
  mp_impl->pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld);
  mp_impl->pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld);
  mp_impl->pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld);
  mp_impl->pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value);
  mp_impl->pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number);
  mp_impl->pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av);
  mp_impl->pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av);
  mp_impl->pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd);
  mp_impl->pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data);
  mp_impl->pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);

  // initialize transactors
  mp_pcie1_s_axis_rq_transactor = NULL;
  mp_pcie1_s_axis_rq_tkeep_converter = NULL;
  mp_pcie1_s_axis_cc_transactor = NULL;
  mp_pcie1_s_axis_cc_tkeep_converter = NULL;
  mp_pcie1_m_axis_rc_transactor = NULL;
  mp_pcie1_m_axis_rc_tkeep_converter = NULL;
  mp_pcie1_m_axis_cq_transactor = NULL;
  mp_pcie1_m_axis_cq_tkeep_converter = NULL;

  // initialize socket stubs

}

void exerciser_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'pcie1_s_axis_rq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_rq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_rq' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_rq_transactor_param_props;
    pcie1_s_axis_rq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_rq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TUSER_WIDTH", "373");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_rq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_rq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_rq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_rq_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_rq_transactor = new xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>("pcie1_s_axis_rq_transactor", pcie1_s_axis_rq_transactor_param_props);

    // pcie1_s_axis_rq' transactor ports

    mp_pcie1_s_axis_rq_transactor->TREADY(pcie1_s_axis_rq_tready);
    mp_pcie1_s_axis_rq_transactor->TDATA(pcie1_s_axis_rq_tdata);
    mp_pcie1_s_axis_rq_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_rq_tkeep_converter");
    mp_pcie1_s_axis_rq_tkeep_converter->vector_in(pcie1_s_axis_rq_tkeep);
    mp_pcie1_s_axis_rq_tkeep_converter->vector_out(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TKEEP(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TLAST(pcie1_s_axis_rq_tlast);
    mp_pcie1_s_axis_rq_transactor->TUSER(pcie1_s_axis_rq_tuser);
    mp_pcie1_s_axis_rq_transactor->TVALID(pcie1_s_axis_rq_tvalid);
    mp_pcie1_s_axis_rq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_rq_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_rq' transactor sockets

    mp_impl->pcie1_s_axis_rq_socket->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_s_axis_cc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_cc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_cc' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_cc_transactor_param_props;
    pcie1_s_axis_cc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_cc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TUSER_WIDTH", "165");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_cc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_cc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_cc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_cc_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_cc_transactor = new xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>("pcie1_s_axis_cc_transactor", pcie1_s_axis_cc_transactor_param_props);

    // pcie1_s_axis_cc' transactor ports

    mp_pcie1_s_axis_cc_transactor->TREADY(pcie1_s_axis_cc_tready);
    mp_pcie1_s_axis_cc_transactor->TDATA(pcie1_s_axis_cc_tdata);
    mp_pcie1_s_axis_cc_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_cc_tkeep_converter");
    mp_pcie1_s_axis_cc_tkeep_converter->vector_in(pcie1_s_axis_cc_tkeep);
    mp_pcie1_s_axis_cc_tkeep_converter->vector_out(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TKEEP(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TLAST(pcie1_s_axis_cc_tlast);
    mp_pcie1_s_axis_cc_transactor->TUSER(pcie1_s_axis_cc_tuser);
    mp_pcie1_s_axis_cc_transactor->TVALID(pcie1_s_axis_cc_tvalid);
    mp_pcie1_s_axis_cc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_cc_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_cc' transactor sockets

    mp_impl->pcie1_s_axis_cc_socket->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_rc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_rc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_rc' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_rc_transactor_param_props;
    pcie1_m_axis_rc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_rc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TUSER_WIDTH", "337");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_rc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_rc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_rc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_rc_transactor = new xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>("pcie1_m_axis_rc_transactor", pcie1_m_axis_rc_transactor_param_props);

    // pcie1_m_axis_rc' transactor ports

    mp_pcie1_m_axis_rc_transactor->TDATA(pcie1_m_axis_rc_tdata);
    mp_pcie1_m_axis_rc_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_rc_tkeep_converter");
    mp_pcie1_m_axis_rc_tkeep_converter->vector_in(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_tkeep_converter->vector_out(pcie1_m_axis_rc_tkeep);
    mp_pcie1_m_axis_rc_transactor->TKEEP(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_transactor->TLAST(pcie1_m_axis_rc_tlast);
    mp_pcie1_m_axis_rc_transactor->TREADY(pcie1_m_axis_rc_tready);
    mp_pcie1_m_axis_rc_transactor->TUSER(pcie1_m_axis_rc_tuser);
    mp_pcie1_m_axis_rc_transactor->TVALID(pcie1_m_axis_rc_tvalid);
    mp_pcie1_m_axis_rc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_rc_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_rc' transactor sockets

    mp_impl->pcie1_m_axis_rc_socket->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_cq' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_cq_transactor_param_props;
    pcie1_m_axis_cq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_cq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TUSER_WIDTH", "465");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_cq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_cq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_cq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_cq_transactor = new xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>("pcie1_m_axis_cq_transactor", pcie1_m_axis_cq_transactor_param_props);

    // pcie1_m_axis_cq' transactor ports

    mp_pcie1_m_axis_cq_transactor->TDATA(pcie1_m_axis_cq_tdata);
    mp_pcie1_m_axis_cq_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_cq_tkeep_converter");
    mp_pcie1_m_axis_cq_tkeep_converter->vector_in(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_tkeep_converter->vector_out(pcie1_m_axis_cq_tkeep);
    mp_pcie1_m_axis_cq_transactor->TKEEP(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_transactor->TLAST(pcie1_m_axis_cq_tlast);
    mp_pcie1_m_axis_cq_transactor->TREADY(pcie1_m_axis_cq_tready);
    mp_pcie1_m_axis_cq_transactor->TUSER(pcie1_m_axis_cq_tuser);
    mp_pcie1_m_axis_cq_transactor->TVALID(pcie1_m_axis_cq_tvalid);
    mp_pcie1_m_axis_cq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_cq_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_cq' transactor sockets

    mp_impl->pcie1_m_axis_cq_socket->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
exerciser_versal_cips_0_0::exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm) : exerciser_versal_cips_0_0_sc(nm), pcie1_user_clk("pcie1_user_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), pcie1_user_reset("pcie1_user_reset"), pcie1_user_lnk_up("pcie1_user_lnk_up"), pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in"), pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in"), pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done"), pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number"), pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process"), pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in"), pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out"), pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req"), pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number"), pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack"), pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt"), pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent"), pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector"), pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending"), pcie1_s_axis_rq_tready("pcie1_s_axis_rq_tready"), pcie1_s_axis_rq_tdata("pcie1_s_axis_rq_tdata"), pcie1_s_axis_rq_tkeep("pcie1_s_axis_rq_tkeep"), pcie1_s_axis_rq_tlast("pcie1_s_axis_rq_tlast"), pcie1_s_axis_rq_tuser("pcie1_s_axis_rq_tuser"), pcie1_s_axis_rq_tvalid("pcie1_s_axis_rq_tvalid"), pcie1_s_axis_cc_tready("pcie1_s_axis_cc_tready"), pcie1_s_axis_cc_tdata("pcie1_s_axis_cc_tdata"), pcie1_s_axis_cc_tkeep("pcie1_s_axis_cc_tkeep"), pcie1_s_axis_cc_tlast("pcie1_s_axis_cc_tlast"), pcie1_s_axis_cc_tuser("pcie1_s_axis_cc_tuser"), pcie1_s_axis_cc_tvalid("pcie1_s_axis_cc_tvalid"), pcie1_m_axis_rc_tdata("pcie1_m_axis_rc_tdata"), pcie1_m_axis_rc_tkeep("pcie1_m_axis_rc_tkeep"), pcie1_m_axis_rc_tlast("pcie1_m_axis_rc_tlast"), pcie1_m_axis_rc_tready("pcie1_m_axis_rc_tready"), pcie1_m_axis_rc_tuser("pcie1_m_axis_rc_tuser"), pcie1_m_axis_rc_tvalid("pcie1_m_axis_rc_tvalid"), pcie1_m_axis_cq_tdata("pcie1_m_axis_cq_tdata"), pcie1_m_axis_cq_tkeep("pcie1_m_axis_cq_tkeep"), pcie1_m_axis_cq_tlast("pcie1_m_axis_cq_tlast"), pcie1_m_axis_cq_tready("pcie1_m_axis_cq_tready"), pcie1_m_axis_cq_tuser("pcie1_m_axis_cq_tuser"), pcie1_m_axis_cq_tvalid("pcie1_m_axis_cq_tvalid"), pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en"), pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done"), pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en"), pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access"), pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data"), pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr"), pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en"), pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data"), pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number"), pcie1_cfg_msi_fail("pcie1_cfg_msi_fail"), pcie1_cfg_msi_sent("pcie1_cfg_msi_sent"), pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update"), pcie1_cfg_msi_data("pcie1_cfg_msi_data"), pcie1_cfg_msi_enable("pcie1_cfg_msi_enable"), pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable"), pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present"), pcie1_cfg_msi_attr("pcie1_cfg_msi_attr"), pcie1_cfg_msi_select("pcie1_cfg_msi_select"), pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type"), pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag"), pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector"), pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status"), pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number"), pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable"), pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num"), pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received"), pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received"), pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data"), pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid"), pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number"), pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number"), pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data"), pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable"), pcie1_cfg_fc_ph("pcie1_cfg_fc_ph"), pcie1_cfg_fc_pd("pcie1_cfg_fc_pd"), pcie1_cfg_fc_nph("pcie1_cfg_fc_nph"), pcie1_cfg_fc_npd("pcie1_cfg_fc_npd"), pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel"), pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale"), pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale"), pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale"), pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale"), pcie1_cfg_fc_sel("pcie1_cfg_fc_sel"), pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh"), pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld"), pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale"), pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale"), pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done"), pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit"), pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type"), pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data"), pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out"), pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out"), pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out"), pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid"), pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out"), pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable"), pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control"), pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control"), pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable"), pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable"), pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0"), pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1"), pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0"), pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1"), pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2"), pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3"), pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av"), pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0"), pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1"), pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0"), pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1"), pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2"), pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3"), pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count"), pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req"), pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state"), pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable"), pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number"), pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down"), pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable"), pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change"), pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status"), pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state"), pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload"), pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode"), pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req"), pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed"), pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state"), pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state"), pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status"), pcie1_cfg_status_function_status("pcie1_cfg_status_function_status"), pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state"), pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width"), pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable"), pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable"), pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld"), pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out"), pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld"), pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld"), pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld"), pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld"), pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld"), pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value"), pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number"), pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av"), pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av"), pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd"), pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data"), pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p")
{

  // initialize pins
  mp_impl->pcie1_user_clk(pcie1_user_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->pcie1_user_reset(pcie1_user_reset);
  mp_impl->pcie1_user_lnk_up(pcie1_user_lnk_up);
  mp_impl->pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in);
  mp_impl->pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in);
  mp_impl->pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done);
  mp_impl->pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number);
  mp_impl->pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process);
  mp_impl->pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in);
  mp_impl->pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out);
  mp_impl->pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req);
  mp_impl->pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number);
  mp_impl->pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack);
  mp_impl->pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt);
  mp_impl->pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent);
  mp_impl->pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector);
  mp_impl->pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending);
  mp_impl->pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en);
  mp_impl->pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done);
  mp_impl->pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en);
  mp_impl->pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access);
  mp_impl->pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data);
  mp_impl->pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr);
  mp_impl->pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en);
  mp_impl->pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data);
  mp_impl->pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number);
  mp_impl->pcie1_cfg_msi_fail(pcie1_cfg_msi_fail);
  mp_impl->pcie1_cfg_msi_sent(pcie1_cfg_msi_sent);
  mp_impl->pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update);
  mp_impl->pcie1_cfg_msi_data(pcie1_cfg_msi_data);
  mp_impl->pcie1_cfg_msi_enable(pcie1_cfg_msi_enable);
  mp_impl->pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable);
  mp_impl->pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present);
  mp_impl->pcie1_cfg_msi_attr(pcie1_cfg_msi_attr);
  mp_impl->pcie1_cfg_msi_select(pcie1_cfg_msi_select);
  mp_impl->pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type);
  mp_impl->pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag);
  mp_impl->pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector);
  mp_impl->pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status);
  mp_impl->pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number);
  mp_impl->pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable);
  mp_impl->pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num);
  mp_impl->pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received);
  mp_impl->pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received);
  mp_impl->pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data);
  mp_impl->pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid);
  mp_impl->pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number);
  mp_impl->pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number);
  mp_impl->pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data);
  mp_impl->pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable);
  mp_impl->pcie1_cfg_fc_ph(pcie1_cfg_fc_ph);
  mp_impl->pcie1_cfg_fc_pd(pcie1_cfg_fc_pd);
  mp_impl->pcie1_cfg_fc_nph(pcie1_cfg_fc_nph);
  mp_impl->pcie1_cfg_fc_npd(pcie1_cfg_fc_npd);
  mp_impl->pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel);
  mp_impl->pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale);
  mp_impl->pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale);
  mp_impl->pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale);
  mp_impl->pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale);
  mp_impl->pcie1_cfg_fc_sel(pcie1_cfg_fc_sel);
  mp_impl->pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh);
  mp_impl->pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld);
  mp_impl->pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale);
  mp_impl->pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale);
  mp_impl->pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done);
  mp_impl->pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit);
  mp_impl->pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type);
  mp_impl->pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data);
  mp_impl->pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out);
  mp_impl->pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out);
  mp_impl->pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out);
  mp_impl->pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid);
  mp_impl->pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out);
  mp_impl->pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable);
  mp_impl->pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control);
  mp_impl->pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control);
  mp_impl->pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable);
  mp_impl->pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable);
  mp_impl->pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0);
  mp_impl->pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3);
  mp_impl->pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av);
  mp_impl->pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0);
  mp_impl->pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1);
  mp_impl->pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0);
  mp_impl->pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1);
  mp_impl->pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2);
  mp_impl->pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3);
  mp_impl->pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count);
  mp_impl->pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req);
  mp_impl->pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state);
  mp_impl->pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable);
  mp_impl->pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number);
  mp_impl->pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down);
  mp_impl->pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable);
  mp_impl->pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change);
  mp_impl->pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status);
  mp_impl->pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state);
  mp_impl->pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload);
  mp_impl->pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode);
  mp_impl->pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req);
  mp_impl->pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed);
  mp_impl->pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state);
  mp_impl->pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state);
  mp_impl->pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status);
  mp_impl->pcie1_cfg_status_function_status(pcie1_cfg_status_function_status);
  mp_impl->pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state);
  mp_impl->pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width);
  mp_impl->pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable);
  mp_impl->pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable);
  mp_impl->pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld);
  mp_impl->pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out);
  mp_impl->pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld);
  mp_impl->pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld);
  mp_impl->pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld);
  mp_impl->pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld);
  mp_impl->pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld);
  mp_impl->pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value);
  mp_impl->pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number);
  mp_impl->pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av);
  mp_impl->pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av);
  mp_impl->pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd);
  mp_impl->pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data);
  mp_impl->pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);

  // initialize transactors
  mp_pcie1_s_axis_rq_transactor = NULL;
  mp_pcie1_s_axis_rq_tkeep_converter = NULL;
  mp_pcie1_s_axis_cc_transactor = NULL;
  mp_pcie1_s_axis_cc_tkeep_converter = NULL;
  mp_pcie1_m_axis_rc_transactor = NULL;
  mp_pcie1_m_axis_rc_tkeep_converter = NULL;
  mp_pcie1_m_axis_cq_transactor = NULL;
  mp_pcie1_m_axis_cq_tkeep_converter = NULL;

  // initialize socket stubs

}

void exerciser_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'pcie1_s_axis_rq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_rq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_rq' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_rq_transactor_param_props;
    pcie1_s_axis_rq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_rq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TUSER_WIDTH", "373");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_rq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_rq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_rq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_rq_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_rq_transactor = new xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>("pcie1_s_axis_rq_transactor", pcie1_s_axis_rq_transactor_param_props);

    // pcie1_s_axis_rq' transactor ports

    mp_pcie1_s_axis_rq_transactor->TREADY(pcie1_s_axis_rq_tready);
    mp_pcie1_s_axis_rq_transactor->TDATA(pcie1_s_axis_rq_tdata);
    mp_pcie1_s_axis_rq_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_rq_tkeep_converter");
    mp_pcie1_s_axis_rq_tkeep_converter->vector_in(pcie1_s_axis_rq_tkeep);
    mp_pcie1_s_axis_rq_tkeep_converter->vector_out(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TKEEP(m_pcie1_s_axis_rq_tkeep_converter_signal);
    mp_pcie1_s_axis_rq_transactor->TLAST(pcie1_s_axis_rq_tlast);
    mp_pcie1_s_axis_rq_transactor->TUSER(pcie1_s_axis_rq_tuser);
    mp_pcie1_s_axis_rq_transactor->TVALID(pcie1_s_axis_rq_tvalid);
    mp_pcie1_s_axis_rq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_rq_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_rq' transactor sockets

    mp_impl->pcie1_s_axis_rq_socket->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_s_axis_cc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_cc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_s_axis_cc' transactor parameters
    xsc::common_cpp::properties pcie1_s_axis_cc_transactor_param_props;
    pcie1_s_axis_cc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_cc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TUSER_WIDTH", "165");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_cc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_cc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_cc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_cc_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_cc_transactor = new xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>("pcie1_s_axis_cc_transactor", pcie1_s_axis_cc_transactor_param_props);

    // pcie1_s_axis_cc' transactor ports

    mp_pcie1_s_axis_cc_transactor->TREADY(pcie1_s_axis_cc_tready);
    mp_pcie1_s_axis_cc_transactor->TDATA(pcie1_s_axis_cc_tdata);
    mp_pcie1_s_axis_cc_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_cc_tkeep_converter");
    mp_pcie1_s_axis_cc_tkeep_converter->vector_in(pcie1_s_axis_cc_tkeep);
    mp_pcie1_s_axis_cc_tkeep_converter->vector_out(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TKEEP(m_pcie1_s_axis_cc_tkeep_converter_signal);
    mp_pcie1_s_axis_cc_transactor->TLAST(pcie1_s_axis_cc_tlast);
    mp_pcie1_s_axis_cc_transactor->TUSER(pcie1_s_axis_cc_tuser);
    mp_pcie1_s_axis_cc_transactor->TVALID(pcie1_s_axis_cc_tvalid);
    mp_pcie1_s_axis_cc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_s_axis_cc_transactor->RST(pcie1_user_reset);

    // pcie1_s_axis_cc' transactor sockets

    mp_impl->pcie1_s_axis_cc_socket->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_rc' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_rc_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_rc' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_rc_transactor_param_props;
    pcie1_m_axis_rc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_rc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TUSER_WIDTH", "337");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_rc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_rc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_rc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_rc_transactor = new xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>("pcie1_m_axis_rc_transactor", pcie1_m_axis_rc_transactor_param_props);

    // pcie1_m_axis_rc' transactor ports

    mp_pcie1_m_axis_rc_transactor->TDATA(pcie1_m_axis_rc_tdata);
    mp_pcie1_m_axis_rc_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_rc_tkeep_converter");
    mp_pcie1_m_axis_rc_tkeep_converter->vector_in(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_tkeep_converter->vector_out(pcie1_m_axis_rc_tkeep);
    mp_pcie1_m_axis_rc_transactor->TKEEP(m_pcie1_m_axis_rc_tkeep_converter_signal);
    mp_pcie1_m_axis_rc_transactor->TLAST(pcie1_m_axis_rc_tlast);
    mp_pcie1_m_axis_rc_transactor->TREADY(pcie1_m_axis_rc_tready);
    mp_pcie1_m_axis_rc_transactor->TUSER(pcie1_m_axis_rc_tuser);
    mp_pcie1_m_axis_rc_transactor->TVALID(pcie1_m_axis_rc_tvalid);
    mp_pcie1_m_axis_rc_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_rc_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_rc' transactor sockets

    mp_impl->pcie1_m_axis_rc_socket->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
  }
  else
  {
  }

  // configure 'pcie1_m_axis_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'pcie1_m_axis_cq' transactor parameters
    xsc::common_cpp::properties pcie1_m_axis_cq_transactor_param_props;
    pcie1_m_axis_cq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_cq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TUSER_WIDTH", "465");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_cq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_cq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_cq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_cq_transactor = new xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>("pcie1_m_axis_cq_transactor", pcie1_m_axis_cq_transactor_param_props);

    // pcie1_m_axis_cq' transactor ports

    mp_pcie1_m_axis_cq_transactor->TDATA(pcie1_m_axis_cq_tdata);
    mp_pcie1_m_axis_cq_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_cq_tkeep_converter");
    mp_pcie1_m_axis_cq_tkeep_converter->vector_in(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_tkeep_converter->vector_out(pcie1_m_axis_cq_tkeep);
    mp_pcie1_m_axis_cq_transactor->TKEEP(m_pcie1_m_axis_cq_tkeep_converter_signal);
    mp_pcie1_m_axis_cq_transactor->TLAST(pcie1_m_axis_cq_tlast);
    mp_pcie1_m_axis_cq_transactor->TREADY(pcie1_m_axis_cq_tready);
    mp_pcie1_m_axis_cq_transactor->TUSER(pcie1_m_axis_cq_tuser);
    mp_pcie1_m_axis_cq_transactor->TVALID(pcie1_m_axis_cq_tvalid);
    mp_pcie1_m_axis_cq_transactor->CLK(pcie1_user_clk);
    mp_pcie1_m_axis_cq_transactor->RST(pcie1_user_reset);

    // pcie1_m_axis_cq' transactor sockets

    mp_impl->pcie1_m_axis_cq_socket->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
exerciser_versal_cips_0_0::exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm) : exerciser_versal_cips_0_0_sc(nm),  pcie1_user_clk("pcie1_user_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), pcie1_user_reset("pcie1_user_reset"), pcie1_user_lnk_up("pcie1_user_lnk_up"), pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in"), pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in"), pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done"), pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number"), pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process"), pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in"), pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out"), pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req"), pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number"), pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack"), pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt"), pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent"), pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector"), pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending"), pcie1_s_axis_rq_tready("pcie1_s_axis_rq_tready"), pcie1_s_axis_rq_tdata("pcie1_s_axis_rq_tdata"), pcie1_s_axis_rq_tkeep("pcie1_s_axis_rq_tkeep"), pcie1_s_axis_rq_tlast("pcie1_s_axis_rq_tlast"), pcie1_s_axis_rq_tuser("pcie1_s_axis_rq_tuser"), pcie1_s_axis_rq_tvalid("pcie1_s_axis_rq_tvalid"), pcie1_s_axis_cc_tready("pcie1_s_axis_cc_tready"), pcie1_s_axis_cc_tdata("pcie1_s_axis_cc_tdata"), pcie1_s_axis_cc_tkeep("pcie1_s_axis_cc_tkeep"), pcie1_s_axis_cc_tlast("pcie1_s_axis_cc_tlast"), pcie1_s_axis_cc_tuser("pcie1_s_axis_cc_tuser"), pcie1_s_axis_cc_tvalid("pcie1_s_axis_cc_tvalid"), pcie1_m_axis_rc_tdata("pcie1_m_axis_rc_tdata"), pcie1_m_axis_rc_tkeep("pcie1_m_axis_rc_tkeep"), pcie1_m_axis_rc_tlast("pcie1_m_axis_rc_tlast"), pcie1_m_axis_rc_tready("pcie1_m_axis_rc_tready"), pcie1_m_axis_rc_tuser("pcie1_m_axis_rc_tuser"), pcie1_m_axis_rc_tvalid("pcie1_m_axis_rc_tvalid"), pcie1_m_axis_cq_tdata("pcie1_m_axis_cq_tdata"), pcie1_m_axis_cq_tkeep("pcie1_m_axis_cq_tkeep"), pcie1_m_axis_cq_tlast("pcie1_m_axis_cq_tlast"), pcie1_m_axis_cq_tready("pcie1_m_axis_cq_tready"), pcie1_m_axis_cq_tuser("pcie1_m_axis_cq_tuser"), pcie1_m_axis_cq_tvalid("pcie1_m_axis_cq_tvalid"), pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en"), pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done"), pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en"), pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access"), pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data"), pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr"), pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en"), pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data"), pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number"), pcie1_cfg_msi_fail("pcie1_cfg_msi_fail"), pcie1_cfg_msi_sent("pcie1_cfg_msi_sent"), pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update"), pcie1_cfg_msi_data("pcie1_cfg_msi_data"), pcie1_cfg_msi_enable("pcie1_cfg_msi_enable"), pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable"), pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present"), pcie1_cfg_msi_attr("pcie1_cfg_msi_attr"), pcie1_cfg_msi_select("pcie1_cfg_msi_select"), pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type"), pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag"), pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector"), pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status"), pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number"), pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable"), pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num"), pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received"), pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received"), pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data"), pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid"), pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number"), pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number"), pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data"), pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable"), pcie1_cfg_fc_ph("pcie1_cfg_fc_ph"), pcie1_cfg_fc_pd("pcie1_cfg_fc_pd"), pcie1_cfg_fc_nph("pcie1_cfg_fc_nph"), pcie1_cfg_fc_npd("pcie1_cfg_fc_npd"), pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel"), pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale"), pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale"), pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale"), pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale"), pcie1_cfg_fc_sel("pcie1_cfg_fc_sel"), pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh"), pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld"), pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale"), pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale"), pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done"), pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit"), pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type"), pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data"), pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out"), pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out"), pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out"), pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid"), pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out"), pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable"), pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control"), pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control"), pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable"), pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable"), pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0"), pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1"), pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0"), pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1"), pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2"), pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3"), pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av"), pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0"), pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1"), pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0"), pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1"), pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2"), pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3"), pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count"), pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req"), pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state"), pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable"), pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number"), pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down"), pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable"), pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change"), pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status"), pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state"), pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload"), pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode"), pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req"), pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed"), pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state"), pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state"), pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status"), pcie1_cfg_status_function_status("pcie1_cfg_status_function_status"), pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state"), pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width"), pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable"), pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable"), pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld"), pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out"), pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld"), pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld"), pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld"), pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld"), pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld"), pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value"), pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number"), pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av"), pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av"), pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd"), pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data"), pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p")
{
  // initialize pins
  mp_impl->pcie1_user_clk(pcie1_user_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->pcie1_user_reset(pcie1_user_reset);
  mp_impl->pcie1_user_lnk_up(pcie1_user_lnk_up);
  mp_impl->pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in);
  mp_impl->pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in);
  mp_impl->pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done);
  mp_impl->pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number);
  mp_impl->pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process);
  mp_impl->pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in);
  mp_impl->pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out);
  mp_impl->pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req);
  mp_impl->pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number);
  mp_impl->pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack);
  mp_impl->pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt);
  mp_impl->pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent);
  mp_impl->pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector);
  mp_impl->pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending);
  mp_impl->pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en);
  mp_impl->pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done);
  mp_impl->pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en);
  mp_impl->pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access);
  mp_impl->pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data);
  mp_impl->pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr);
  mp_impl->pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en);
  mp_impl->pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data);
  mp_impl->pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number);
  mp_impl->pcie1_cfg_msi_fail(pcie1_cfg_msi_fail);
  mp_impl->pcie1_cfg_msi_sent(pcie1_cfg_msi_sent);
  mp_impl->pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update);
  mp_impl->pcie1_cfg_msi_data(pcie1_cfg_msi_data);
  mp_impl->pcie1_cfg_msi_enable(pcie1_cfg_msi_enable);
  mp_impl->pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable);
  mp_impl->pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present);
  mp_impl->pcie1_cfg_msi_attr(pcie1_cfg_msi_attr);
  mp_impl->pcie1_cfg_msi_select(pcie1_cfg_msi_select);
  mp_impl->pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type);
  mp_impl->pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag);
  mp_impl->pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector);
  mp_impl->pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status);
  mp_impl->pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number);
  mp_impl->pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable);
  mp_impl->pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num);
  mp_impl->pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received);
  mp_impl->pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received);
  mp_impl->pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data);
  mp_impl->pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid);
  mp_impl->pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number);
  mp_impl->pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number);
  mp_impl->pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data);
  mp_impl->pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable);
  mp_impl->pcie1_cfg_fc_ph(pcie1_cfg_fc_ph);
  mp_impl->pcie1_cfg_fc_pd(pcie1_cfg_fc_pd);
  mp_impl->pcie1_cfg_fc_nph(pcie1_cfg_fc_nph);
  mp_impl->pcie1_cfg_fc_npd(pcie1_cfg_fc_npd);
  mp_impl->pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel);
  mp_impl->pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale);
  mp_impl->pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale);
  mp_impl->pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale);
  mp_impl->pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale);
  mp_impl->pcie1_cfg_fc_sel(pcie1_cfg_fc_sel);
  mp_impl->pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh);
  mp_impl->pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld);
  mp_impl->pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale);
  mp_impl->pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale);
  mp_impl->pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done);
  mp_impl->pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit);
  mp_impl->pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type);
  mp_impl->pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data);
  mp_impl->pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out);
  mp_impl->pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out);
  mp_impl->pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out);
  mp_impl->pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid);
  mp_impl->pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out);
  mp_impl->pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable);
  mp_impl->pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control);
  mp_impl->pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control);
  mp_impl->pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable);
  mp_impl->pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable);
  mp_impl->pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0);
  mp_impl->pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3);
  mp_impl->pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av);
  mp_impl->pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0);
  mp_impl->pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1);
  mp_impl->pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0);
  mp_impl->pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1);
  mp_impl->pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2);
  mp_impl->pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3);
  mp_impl->pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count);
  mp_impl->pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req);
  mp_impl->pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state);
  mp_impl->pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable);
  mp_impl->pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number);
  mp_impl->pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down);
  mp_impl->pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable);
  mp_impl->pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change);
  mp_impl->pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status);
  mp_impl->pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state);
  mp_impl->pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload);
  mp_impl->pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode);
  mp_impl->pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req);
  mp_impl->pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed);
  mp_impl->pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state);
  mp_impl->pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state);
  mp_impl->pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status);
  mp_impl->pcie1_cfg_status_function_status(pcie1_cfg_status_function_status);
  mp_impl->pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state);
  mp_impl->pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width);
  mp_impl->pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable);
  mp_impl->pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable);
  mp_impl->pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld);
  mp_impl->pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out);
  mp_impl->pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld);
  mp_impl->pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld);
  mp_impl->pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld);
  mp_impl->pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld);
  mp_impl->pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld);
  mp_impl->pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value);
  mp_impl->pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number);
  mp_impl->pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av);
  mp_impl->pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av);
  mp_impl->pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd);
  mp_impl->pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data);
  mp_impl->pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);

  // initialize transactors
  mp_pcie1_s_axis_rq_transactor = NULL;
  mp_pcie1_s_axis_rq_tkeep_converter = NULL;
  mp_pcie1_s_axis_cc_transactor = NULL;
  mp_pcie1_s_axis_cc_tkeep_converter = NULL;
  mp_pcie1_m_axis_rc_transactor = NULL;
  mp_pcie1_m_axis_rc_tkeep_converter = NULL;
  mp_pcie1_m_axis_cq_transactor = NULL;
  mp_pcie1_m_axis_cq_tkeep_converter = NULL;

  // Instantiate Socket Stubs

  // configure pcie1_s_axis_rq_transactor
    xsc::common_cpp::properties pcie1_s_axis_rq_transactor_param_props;
    pcie1_s_axis_rq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_rq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TUSER_WIDTH", "373");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_rq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_rq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_rq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_rq_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_rq_transactor = new xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>("pcie1_s_axis_rq_transactor", pcie1_s_axis_rq_transactor_param_props);
  mp_pcie1_s_axis_rq_transactor->TREADY(pcie1_s_axis_rq_tready);
  mp_pcie1_s_axis_rq_transactor->TDATA(pcie1_s_axis_rq_tdata);
  mp_pcie1_s_axis_rq_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_rq_tkeep_converter");
  mp_pcie1_s_axis_rq_tkeep_converter->vector_in(pcie1_s_axis_rq_tkeep);
  mp_pcie1_s_axis_rq_tkeep_converter->vector_out(m_pcie1_s_axis_rq_tkeep_converter_signal);
  mp_pcie1_s_axis_rq_transactor->TKEEP(m_pcie1_s_axis_rq_tkeep_converter_signal);
  mp_pcie1_s_axis_rq_transactor->TLAST(pcie1_s_axis_rq_tlast);
  mp_pcie1_s_axis_rq_transactor->TUSER(pcie1_s_axis_rq_tuser);
  mp_pcie1_s_axis_rq_transactor->TVALID(pcie1_s_axis_rq_tvalid);
  mp_pcie1_s_axis_rq_transactor->CLK(pcie1_user_clk);
  mp_pcie1_s_axis_rq_transactor->RST(pcie1_user_reset);
  // configure pcie1_s_axis_cc_transactor
    xsc::common_cpp::properties pcie1_s_axis_cc_transactor_param_props;
    pcie1_s_axis_cc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_cc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TUSER_WIDTH", "165");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_cc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_cc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_cc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_cc_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_cc_transactor = new xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>("pcie1_s_axis_cc_transactor", pcie1_s_axis_cc_transactor_param_props);
  mp_pcie1_s_axis_cc_transactor->TREADY(pcie1_s_axis_cc_tready);
  mp_pcie1_s_axis_cc_transactor->TDATA(pcie1_s_axis_cc_tdata);
  mp_pcie1_s_axis_cc_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_cc_tkeep_converter");
  mp_pcie1_s_axis_cc_tkeep_converter->vector_in(pcie1_s_axis_cc_tkeep);
  mp_pcie1_s_axis_cc_tkeep_converter->vector_out(m_pcie1_s_axis_cc_tkeep_converter_signal);
  mp_pcie1_s_axis_cc_transactor->TKEEP(m_pcie1_s_axis_cc_tkeep_converter_signal);
  mp_pcie1_s_axis_cc_transactor->TLAST(pcie1_s_axis_cc_tlast);
  mp_pcie1_s_axis_cc_transactor->TUSER(pcie1_s_axis_cc_tuser);
  mp_pcie1_s_axis_cc_transactor->TVALID(pcie1_s_axis_cc_tvalid);
  mp_pcie1_s_axis_cc_transactor->CLK(pcie1_user_clk);
  mp_pcie1_s_axis_cc_transactor->RST(pcie1_user_reset);
  // configure pcie1_m_axis_rc_transactor
    xsc::common_cpp::properties pcie1_m_axis_rc_transactor_param_props;
    pcie1_m_axis_rc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_rc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TUSER_WIDTH", "337");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_rc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_rc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_rc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_rc_transactor = new xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>("pcie1_m_axis_rc_transactor", pcie1_m_axis_rc_transactor_param_props);
  mp_pcie1_m_axis_rc_transactor->TDATA(pcie1_m_axis_rc_tdata);
  mp_pcie1_m_axis_rc_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_rc_tkeep_converter");
  mp_pcie1_m_axis_rc_tkeep_converter->vector_in(m_pcie1_m_axis_rc_tkeep_converter_signal);
  mp_pcie1_m_axis_rc_tkeep_converter->vector_out(pcie1_m_axis_rc_tkeep);
  mp_pcie1_m_axis_rc_transactor->TKEEP(m_pcie1_m_axis_rc_tkeep_converter_signal);
  mp_pcie1_m_axis_rc_transactor->TLAST(pcie1_m_axis_rc_tlast);
  mp_pcie1_m_axis_rc_transactor->TREADY(pcie1_m_axis_rc_tready);
  mp_pcie1_m_axis_rc_transactor->TUSER(pcie1_m_axis_rc_tuser);
  mp_pcie1_m_axis_rc_transactor->TVALID(pcie1_m_axis_rc_tvalid);
  mp_pcie1_m_axis_rc_transactor->CLK(pcie1_user_clk);
  mp_pcie1_m_axis_rc_transactor->RST(pcie1_user_reset);
  // configure pcie1_m_axis_cq_transactor
    xsc::common_cpp::properties pcie1_m_axis_cq_transactor_param_props;
    pcie1_m_axis_cq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_cq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TUSER_WIDTH", "465");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_cq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_cq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_cq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_cq_transactor = new xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>("pcie1_m_axis_cq_transactor", pcie1_m_axis_cq_transactor_param_props);
  mp_pcie1_m_axis_cq_transactor->TDATA(pcie1_m_axis_cq_tdata);
  mp_pcie1_m_axis_cq_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_cq_tkeep_converter");
  mp_pcie1_m_axis_cq_tkeep_converter->vector_in(m_pcie1_m_axis_cq_tkeep_converter_signal);
  mp_pcie1_m_axis_cq_tkeep_converter->vector_out(pcie1_m_axis_cq_tkeep);
  mp_pcie1_m_axis_cq_transactor->TKEEP(m_pcie1_m_axis_cq_tkeep_converter_signal);
  mp_pcie1_m_axis_cq_transactor->TLAST(pcie1_m_axis_cq_tlast);
  mp_pcie1_m_axis_cq_transactor->TREADY(pcie1_m_axis_cq_tready);
  mp_pcie1_m_axis_cq_transactor->TUSER(pcie1_m_axis_cq_tuser);
  mp_pcie1_m_axis_cq_transactor->TVALID(pcie1_m_axis_cq_tvalid);
  mp_pcie1_m_axis_cq_transactor->CLK(pcie1_user_clk);
  mp_pcie1_m_axis_cq_transactor->RST(pcie1_user_reset);

  // initialize transactors stubs
  pcie1_s_axis_rq_transactor_target_socket_stub = nullptr;
  pcie1_s_axis_cc_transactor_target_socket_stub = nullptr;
  pcie1_m_axis_rc_transactor_initiator_socket_stub = nullptr;
  pcie1_m_axis_cq_transactor_initiator_socket_stub = nullptr;

}

void exerciser_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'pcie1_s_axis_rq' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_rq_TLM_MODE") != 1)
  {
    mp_impl->pcie1_s_axis_rq_socket->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
  
  }
  else
  {
    pcie1_s_axis_rq_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    pcie1_s_axis_rq_transactor_target_socket_stub->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
    mp_pcie1_s_axis_rq_transactor->disable_transactor();
  }

  // configure 'pcie1_s_axis_cc' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_cc_TLM_MODE") != 1)
  {
    mp_impl->pcie1_s_axis_cc_socket->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
  
  }
  else
  {
    pcie1_s_axis_cc_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    pcie1_s_axis_cc_transactor_target_socket_stub->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
    mp_pcie1_s_axis_cc_transactor->disable_transactor();
  }

  // configure 'pcie1_m_axis_rc' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_rc_TLM_MODE") != 1)
  {
    mp_impl->pcie1_m_axis_rc_socket->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
  
  }
  else
  {
    pcie1_m_axis_rc_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    pcie1_m_axis_rc_transactor_initiator_socket_stub->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
    mp_pcie1_m_axis_rc_transactor->disable_transactor();
  }

  // configure 'pcie1_m_axis_cq' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_cq_TLM_MODE") != 1)
  {
    mp_impl->pcie1_m_axis_cq_socket->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
  
  }
  else
  {
    pcie1_m_axis_cq_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    pcie1_m_axis_cq_transactor_initiator_socket_stub->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
    mp_pcie1_m_axis_cq_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
exerciser_versal_cips_0_0::exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm) : exerciser_versal_cips_0_0_sc(nm),  pcie1_user_clk("pcie1_user_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), pcie1_user_reset("pcie1_user_reset"), pcie1_user_lnk_up("pcie1_user_lnk_up"), pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in"), pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in"), pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done"), pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number"), pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process"), pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in"), pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out"), pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req"), pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number"), pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack"), pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt"), pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent"), pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector"), pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending"), pcie1_s_axis_rq_tready("pcie1_s_axis_rq_tready"), pcie1_s_axis_rq_tdata("pcie1_s_axis_rq_tdata"), pcie1_s_axis_rq_tkeep("pcie1_s_axis_rq_tkeep"), pcie1_s_axis_rq_tlast("pcie1_s_axis_rq_tlast"), pcie1_s_axis_rq_tuser("pcie1_s_axis_rq_tuser"), pcie1_s_axis_rq_tvalid("pcie1_s_axis_rq_tvalid"), pcie1_s_axis_cc_tready("pcie1_s_axis_cc_tready"), pcie1_s_axis_cc_tdata("pcie1_s_axis_cc_tdata"), pcie1_s_axis_cc_tkeep("pcie1_s_axis_cc_tkeep"), pcie1_s_axis_cc_tlast("pcie1_s_axis_cc_tlast"), pcie1_s_axis_cc_tuser("pcie1_s_axis_cc_tuser"), pcie1_s_axis_cc_tvalid("pcie1_s_axis_cc_tvalid"), pcie1_m_axis_rc_tdata("pcie1_m_axis_rc_tdata"), pcie1_m_axis_rc_tkeep("pcie1_m_axis_rc_tkeep"), pcie1_m_axis_rc_tlast("pcie1_m_axis_rc_tlast"), pcie1_m_axis_rc_tready("pcie1_m_axis_rc_tready"), pcie1_m_axis_rc_tuser("pcie1_m_axis_rc_tuser"), pcie1_m_axis_rc_tvalid("pcie1_m_axis_rc_tvalid"), pcie1_m_axis_cq_tdata("pcie1_m_axis_cq_tdata"), pcie1_m_axis_cq_tkeep("pcie1_m_axis_cq_tkeep"), pcie1_m_axis_cq_tlast("pcie1_m_axis_cq_tlast"), pcie1_m_axis_cq_tready("pcie1_m_axis_cq_tready"), pcie1_m_axis_cq_tuser("pcie1_m_axis_cq_tuser"), pcie1_m_axis_cq_tvalid("pcie1_m_axis_cq_tvalid"), pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en"), pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done"), pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en"), pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access"), pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data"), pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr"), pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en"), pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data"), pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number"), pcie1_cfg_msi_fail("pcie1_cfg_msi_fail"), pcie1_cfg_msi_sent("pcie1_cfg_msi_sent"), pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update"), pcie1_cfg_msi_data("pcie1_cfg_msi_data"), pcie1_cfg_msi_enable("pcie1_cfg_msi_enable"), pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable"), pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present"), pcie1_cfg_msi_attr("pcie1_cfg_msi_attr"), pcie1_cfg_msi_select("pcie1_cfg_msi_select"), pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type"), pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag"), pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector"), pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status"), pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number"), pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable"), pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num"), pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received"), pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received"), pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data"), pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid"), pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number"), pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number"), pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data"), pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable"), pcie1_cfg_fc_ph("pcie1_cfg_fc_ph"), pcie1_cfg_fc_pd("pcie1_cfg_fc_pd"), pcie1_cfg_fc_nph("pcie1_cfg_fc_nph"), pcie1_cfg_fc_npd("pcie1_cfg_fc_npd"), pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel"), pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale"), pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale"), pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale"), pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale"), pcie1_cfg_fc_sel("pcie1_cfg_fc_sel"), pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh"), pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld"), pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale"), pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale"), pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done"), pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit"), pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type"), pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data"), pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out"), pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out"), pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out"), pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid"), pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out"), pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable"), pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control"), pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control"), pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable"), pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable"), pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0"), pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1"), pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0"), pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1"), pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2"), pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3"), pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av"), pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0"), pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1"), pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0"), pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1"), pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2"), pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3"), pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count"), pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req"), pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state"), pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable"), pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number"), pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down"), pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable"), pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change"), pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status"), pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state"), pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload"), pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode"), pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req"), pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed"), pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state"), pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state"), pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status"), pcie1_cfg_status_function_status("pcie1_cfg_status_function_status"), pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state"), pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width"), pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable"), pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable"), pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld"), pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out"), pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld"), pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld"), pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld"), pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld"), pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld"), pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value"), pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number"), pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av"), pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av"), pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd"), pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data"), pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p")
{
  // initialize pins
  mp_impl->pcie1_user_clk(pcie1_user_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->pcie1_user_reset(pcie1_user_reset);
  mp_impl->pcie1_user_lnk_up(pcie1_user_lnk_up);
  mp_impl->pcie1_cfg_control_err_cor_in(pcie1_cfg_control_err_cor_in);
  mp_impl->pcie1_cfg_control_err_uncor_in(pcie1_cfg_control_err_uncor_in);
  mp_impl->pcie1_cfg_control_flr_done(pcie1_cfg_control_flr_done);
  mp_impl->pcie1_cfg_control_flr_done_function_number(pcie1_cfg_control_flr_done_function_number);
  mp_impl->pcie1_cfg_control_flr_in_process(pcie1_cfg_control_flr_in_process);
  mp_impl->pcie1_cfg_control_hot_reset_in(pcie1_cfg_control_hot_reset_in);
  mp_impl->pcie1_cfg_control_hot_reset_out(pcie1_cfg_control_hot_reset_out);
  mp_impl->pcie1_cfg_control_per_function_req(pcie1_cfg_control_per_function_req);
  mp_impl->pcie1_cfg_control_per_function_number(pcie1_cfg_control_per_function_number);
  mp_impl->pcie1_cfg_control_power_state_change_ack(pcie1_cfg_control_power_state_change_ack);
  mp_impl->pcie1_cfg_control_power_state_change_interrupt(pcie1_cfg_control_power_state_change_interrupt);
  mp_impl->pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent);
  mp_impl->pcie1_cfg_interrupt_intx_vector(pcie1_cfg_interrupt_intx_vector);
  mp_impl->pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending);
  mp_impl->pcie1_cfg_mgmt_read_en(pcie1_cfg_mgmt_read_en);
  mp_impl->pcie1_cfg_mgmt_read_write_done(pcie1_cfg_mgmt_read_write_done);
  mp_impl->pcie1_cfg_mgmt_write_en(pcie1_cfg_mgmt_write_en);
  mp_impl->pcie1_cfg_mgmt_debug_access(pcie1_cfg_mgmt_debug_access);
  mp_impl->pcie1_cfg_mgmt_read_data(pcie1_cfg_mgmt_read_data);
  mp_impl->pcie1_cfg_mgmt_addr(pcie1_cfg_mgmt_addr);
  mp_impl->pcie1_cfg_mgmt_byte_en(pcie1_cfg_mgmt_byte_en);
  mp_impl->pcie1_cfg_mgmt_write_data(pcie1_cfg_mgmt_write_data);
  mp_impl->pcie1_cfg_mgmt_function_number(pcie1_cfg_mgmt_function_number);
  mp_impl->pcie1_cfg_msi_fail(pcie1_cfg_msi_fail);
  mp_impl->pcie1_cfg_msi_sent(pcie1_cfg_msi_sent);
  mp_impl->pcie1_cfg_msi_mask_update(pcie1_cfg_msi_mask_update);
  mp_impl->pcie1_cfg_msi_data(pcie1_cfg_msi_data);
  mp_impl->pcie1_cfg_msi_enable(pcie1_cfg_msi_enable);
  mp_impl->pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable);
  mp_impl->pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present);
  mp_impl->pcie1_cfg_msi_attr(pcie1_cfg_msi_attr);
  mp_impl->pcie1_cfg_msi_select(pcie1_cfg_msi_select);
  mp_impl->pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type);
  mp_impl->pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag);
  mp_impl->pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector);
  mp_impl->pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status);
  mp_impl->pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number);
  mp_impl->pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable);
  mp_impl->pcie1_cfg_msi_pending_status_function_num(pcie1_cfg_msi_pending_status_function_num);
  mp_impl->pcie1_cfg_ext_read_received(pcie1_cfg_ext_read_received);
  mp_impl->pcie1_cfg_ext_write_received(pcie1_cfg_ext_write_received);
  mp_impl->pcie1_cfg_ext_write_data(pcie1_cfg_ext_write_data);
  mp_impl->pcie1_cfg_ext_read_data_valid(pcie1_cfg_ext_read_data_valid);
  mp_impl->pcie1_cfg_ext_function_number(pcie1_cfg_ext_function_number);
  mp_impl->pcie1_cfg_ext_register_number(pcie1_cfg_ext_register_number);
  mp_impl->pcie1_cfg_ext_read_data(pcie1_cfg_ext_read_data);
  mp_impl->pcie1_cfg_ext_write_byte_enable(pcie1_cfg_ext_write_byte_enable);
  mp_impl->pcie1_cfg_fc_ph(pcie1_cfg_fc_ph);
  mp_impl->pcie1_cfg_fc_pd(pcie1_cfg_fc_pd);
  mp_impl->pcie1_cfg_fc_nph(pcie1_cfg_fc_nph);
  mp_impl->pcie1_cfg_fc_npd(pcie1_cfg_fc_npd);
  mp_impl->pcie1_cfg_fc_vc_sel(pcie1_cfg_fc_vc_sel);
  mp_impl->pcie1_cfg_fc_pd_scale(pcie1_cfg_fc_pd_scale);
  mp_impl->pcie1_cfg_fc_ph_scale(pcie1_cfg_fc_ph_scale);
  mp_impl->pcie1_cfg_fc_npd_scale(pcie1_cfg_fc_npd_scale);
  mp_impl->pcie1_cfg_fc_nph_scale(pcie1_cfg_fc_nph_scale);
  mp_impl->pcie1_cfg_fc_sel(pcie1_cfg_fc_sel);
  mp_impl->pcie1_cfg_fc_cplh(pcie1_cfg_fc_cplh);
  mp_impl->pcie1_cfg_fc_cpld(pcie1_cfg_fc_cpld);
  mp_impl->pcie1_cfg_fc_cpld_scale(pcie1_cfg_fc_cpld_scale);
  mp_impl->pcie1_cfg_fc_cplh_scale(pcie1_cfg_fc_cplh_scale);
  mp_impl->pcie1_cfg_msg_tx_transmit_done(pcie1_cfg_msg_tx_transmit_done);
  mp_impl->pcie1_cfg_msg_tx_transmit(pcie1_cfg_msg_tx_transmit);
  mp_impl->pcie1_cfg_msg_tx_transmit_type(pcie1_cfg_msg_tx_transmit_type);
  mp_impl->pcie1_cfg_msg_tx_transmit_data(pcie1_cfg_msg_tx_transmit_data);
  mp_impl->pcie1_cfg_status_err_cor_out(pcie1_cfg_status_err_cor_out);
  mp_impl->pcie1_cfg_status_err_fatal_out(pcie1_cfg_status_err_fatal_out);
  mp_impl->pcie1_cfg_status_err_nonfatal_out(pcie1_cfg_status_err_nonfatal_out);
  mp_impl->pcie1_cfg_status_local_error_valid(pcie1_cfg_status_local_error_valid);
  mp_impl->pcie1_cfg_status_local_error_out(pcie1_cfg_status_local_error_out);
  mp_impl->pcie1_cfg_status_pasid_enable(pcie1_cfg_status_pasid_enable);
  mp_impl->pcie1_cfg_status_pasid_control(pcie1_cfg_status_pasid_control);
  mp_impl->pcie1_cfg_status_max_pasid_width_control(pcie1_cfg_status_max_pasid_width_control);
  mp_impl->pcie1_cfg_status_pasid_exec_permission_enable(pcie1_cfg_status_pasid_exec_permission_enable);
  mp_impl->pcie1_cfg_status_pasid_privil_mode_enable(pcie1_cfg_status_pasid_privil_mode_enable);
  mp_impl->pcie1_cfg_status_rq_tag_vld0(pcie1_cfg_status_rq_tag_vld0);
  mp_impl->pcie1_cfg_status_rq_tag_vld1(pcie1_cfg_status_rq_tag_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld0(pcie1_cfg_status_rq_seq_num_vld0);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld1(pcie1_cfg_status_rq_seq_num_vld1);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld2(pcie1_cfg_status_rq_seq_num_vld2);
  mp_impl->pcie1_cfg_status_rq_seq_num_vld3(pcie1_cfg_status_rq_seq_num_vld3);
  mp_impl->pcie1_cfg_status_rq_tag_av(pcie1_cfg_status_rq_tag_av);
  mp_impl->pcie1_cfg_status_rq_tag0(pcie1_cfg_status_rq_tag0);
  mp_impl->pcie1_cfg_status_rq_tag1(pcie1_cfg_status_rq_tag1);
  mp_impl->pcie1_cfg_status_rq_seq_num0(pcie1_cfg_status_rq_seq_num0);
  mp_impl->pcie1_cfg_status_rq_seq_num1(pcie1_cfg_status_rq_seq_num1);
  mp_impl->pcie1_cfg_status_rq_seq_num2(pcie1_cfg_status_rq_seq_num2);
  mp_impl->pcie1_cfg_status_rq_seq_num3(pcie1_cfg_status_rq_seq_num3);
  mp_impl->pcie1_cfg_status_cq_np_req_count(pcie1_cfg_status_cq_np_req_count);
  mp_impl->pcie1_cfg_status_cq_np_req(pcie1_cfg_status_cq_np_req);
  mp_impl->pcie1_cfg_status_function_power_state(pcie1_cfg_status_function_power_state);
  mp_impl->pcie1_cfg_status_atomic_requester_enable(pcie1_cfg_status_atomic_requester_enable);
  mp_impl->pcie1_cfg_status_bus_number(pcie1_cfg_status_bus_number);
  mp_impl->pcie1_cfg_status_phy_link_down(pcie1_cfg_status_phy_link_down);
  mp_impl->pcie1_cfg_status_ext_tag_enable(pcie1_cfg_status_ext_tag_enable);
  mp_impl->pcie1_cfg_status_pl_status_change(pcie1_cfg_status_pl_status_change);
  mp_impl->pcie1_cfg_status_rcb_status(pcie1_cfg_status_rcb_status);
  mp_impl->pcie1_cfg_status_ltssm_state(pcie1_cfg_status_ltssm_state);
  mp_impl->pcie1_cfg_status_max_payload(pcie1_cfg_status_max_payload);
  mp_impl->pcie1_cfg_status_tph_st_mode(pcie1_cfg_status_tph_st_mode);
  mp_impl->pcie1_cfg_status_max_read_req(pcie1_cfg_status_max_read_req);
  mp_impl->pcie1_cfg_status_current_speed(pcie1_cfg_status_current_speed);
  mp_impl->pcie1_cfg_status_rx_pm_state(pcie1_cfg_status_rx_pm_state);
  mp_impl->pcie1_cfg_status_tx_pm_state(pcie1_cfg_status_tx_pm_state);
  mp_impl->pcie1_cfg_status_phy_link_status(pcie1_cfg_status_phy_link_status);
  mp_impl->pcie1_cfg_status_function_status(pcie1_cfg_status_function_status);
  mp_impl->pcie1_cfg_status_link_power_state(pcie1_cfg_status_link_power_state);
  mp_impl->pcie1_cfg_status_negotiated_width(pcie1_cfg_status_negotiated_width);
  mp_impl->pcie1_cfg_status_tph_requester_enable(pcie1_cfg_status_tph_requester_enable);
  mp_impl->pcie1_cfg_status_10b_tag_requester_enable(pcie1_cfg_status_10b_tag_requester_enable);
  mp_impl->pcie1_cfg_status_per_function_vld(pcie1_cfg_status_per_function_vld);
  mp_impl->pcie1_cfg_status_per_function_out(pcie1_cfg_status_per_function_out);
  mp_impl->pcie1_cfg_status_wrreq_bme_vld(pcie1_cfg_status_wrreq_bme_vld);
  mp_impl->pcie1_cfg_status_wrreq_flr_vld(pcie1_cfg_status_wrreq_flr_vld);
  mp_impl->pcie1_cfg_status_wrreq_msi_vld(pcie1_cfg_status_wrreq_msi_vld);
  mp_impl->pcie1_cfg_status_wrreq_vfe_vld(pcie1_cfg_status_wrreq_vfe_vld);
  mp_impl->pcie1_cfg_status_wrreq_msix_vld(pcie1_cfg_status_wrreq_msix_vld);
  mp_impl->pcie1_cfg_status_wrreq_out_value(pcie1_cfg_status_wrreq_out_value);
  mp_impl->pcie1_cfg_status_wrreq_function_number(pcie1_cfg_status_wrreq_function_number);
  mp_impl->pcie1_transmit_fc_npd_av(pcie1_transmit_fc_npd_av);
  mp_impl->pcie1_transmit_fc_nph_av(pcie1_transmit_fc_nph_av);
  mp_impl->pcie1_cfg_msg_recd_recd(pcie1_cfg_msg_recd_recd);
  mp_impl->pcie1_cfg_msg_recd_recd_data(pcie1_cfg_msg_recd_recd_data);
  mp_impl->pcie1_cfg_msg_recd_recd_type(pcie1_cfg_msg_recd_recd_type);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);

  // initialize transactors
  mp_pcie1_s_axis_rq_transactor = NULL;
  mp_pcie1_s_axis_rq_tkeep_converter = NULL;
  mp_pcie1_s_axis_cc_transactor = NULL;
  mp_pcie1_s_axis_cc_tkeep_converter = NULL;
  mp_pcie1_m_axis_rc_transactor = NULL;
  mp_pcie1_m_axis_rc_tkeep_converter = NULL;
  mp_pcie1_m_axis_cq_transactor = NULL;
  mp_pcie1_m_axis_cq_tkeep_converter = NULL;

  // Instantiate Socket Stubs

  // configure pcie1_s_axis_rq_transactor
    xsc::common_cpp::properties pcie1_s_axis_rq_transactor_param_props;
    pcie1_s_axis_rq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_rq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TUSER_WIDTH", "373");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_rq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_rq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_rq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_rq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_rq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_rq_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_rq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_rq_transactor = new xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>("pcie1_s_axis_rq_transactor", pcie1_s_axis_rq_transactor_param_props);
  mp_pcie1_s_axis_rq_transactor->TREADY(pcie1_s_axis_rq_tready);
  mp_pcie1_s_axis_rq_transactor->TDATA(pcie1_s_axis_rq_tdata);
  mp_pcie1_s_axis_rq_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_rq_tkeep_converter");
  mp_pcie1_s_axis_rq_tkeep_converter->vector_in(pcie1_s_axis_rq_tkeep);
  mp_pcie1_s_axis_rq_tkeep_converter->vector_out(m_pcie1_s_axis_rq_tkeep_converter_signal);
  mp_pcie1_s_axis_rq_transactor->TKEEP(m_pcie1_s_axis_rq_tkeep_converter_signal);
  mp_pcie1_s_axis_rq_transactor->TLAST(pcie1_s_axis_rq_tlast);
  mp_pcie1_s_axis_rq_transactor->TUSER(pcie1_s_axis_rq_tuser);
  mp_pcie1_s_axis_rq_transactor->TVALID(pcie1_s_axis_rq_tvalid);
  mp_pcie1_s_axis_rq_transactor->CLK(pcie1_user_clk);
  mp_pcie1_s_axis_rq_transactor->RST(pcie1_user_reset);
  // configure pcie1_s_axis_cc_transactor
    xsc::common_cpp::properties pcie1_s_axis_cc_transactor_param_props;
    pcie1_s_axis_cc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_s_axis_cc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TUSER_WIDTH", "165");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_s_axis_cc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_s_axis_cc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_s_axis_cc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_s_axis_cc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_s_axis_cc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_s_axis_cc_transactor_param_props.addString("CONNECTIONS", "");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_s_axis_cc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_s_axis_cc_transactor = new xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>("pcie1_s_axis_cc_transactor", pcie1_s_axis_cc_transactor_param_props);
  mp_pcie1_s_axis_cc_transactor->TREADY(pcie1_s_axis_cc_tready);
  mp_pcie1_s_axis_cc_transactor->TDATA(pcie1_s_axis_cc_tdata);
  mp_pcie1_s_axis_cc_tkeep_converter = new xsc::common::vector2vector_converter<32,128>("pcie1_s_axis_cc_tkeep_converter");
  mp_pcie1_s_axis_cc_tkeep_converter->vector_in(pcie1_s_axis_cc_tkeep);
  mp_pcie1_s_axis_cc_tkeep_converter->vector_out(m_pcie1_s_axis_cc_tkeep_converter_signal);
  mp_pcie1_s_axis_cc_transactor->TKEEP(m_pcie1_s_axis_cc_tkeep_converter_signal);
  mp_pcie1_s_axis_cc_transactor->TLAST(pcie1_s_axis_cc_tlast);
  mp_pcie1_s_axis_cc_transactor->TUSER(pcie1_s_axis_cc_tuser);
  mp_pcie1_s_axis_cc_transactor->TVALID(pcie1_s_axis_cc_tvalid);
  mp_pcie1_s_axis_cc_transactor->CLK(pcie1_user_clk);
  mp_pcie1_s_axis_cc_transactor->RST(pcie1_user_reset);
  // configure pcie1_m_axis_rc_transactor
    xsc::common_cpp::properties pcie1_m_axis_rc_transactor_param_props;
    pcie1_m_axis_rc_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_rc_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TUSER_WIDTH", "337");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_rc_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_rc_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_rc_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_rc_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_rc_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_rc_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_rc_transactor = new xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>("pcie1_m_axis_rc_transactor", pcie1_m_axis_rc_transactor_param_props);
  mp_pcie1_m_axis_rc_transactor->TDATA(pcie1_m_axis_rc_tdata);
  mp_pcie1_m_axis_rc_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_rc_tkeep_converter");
  mp_pcie1_m_axis_rc_tkeep_converter->vector_in(m_pcie1_m_axis_rc_tkeep_converter_signal);
  mp_pcie1_m_axis_rc_tkeep_converter->vector_out(pcie1_m_axis_rc_tkeep);
  mp_pcie1_m_axis_rc_transactor->TKEEP(m_pcie1_m_axis_rc_tkeep_converter_signal);
  mp_pcie1_m_axis_rc_transactor->TLAST(pcie1_m_axis_rc_tlast);
  mp_pcie1_m_axis_rc_transactor->TREADY(pcie1_m_axis_rc_tready);
  mp_pcie1_m_axis_rc_transactor->TUSER(pcie1_m_axis_rc_tuser);
  mp_pcie1_m_axis_rc_transactor->TVALID(pcie1_m_axis_rc_tvalid);
  mp_pcie1_m_axis_rc_transactor->CLK(pcie1_user_clk);
  mp_pcie1_m_axis_rc_transactor->RST(pcie1_user_reset);
  // configure pcie1_m_axis_cq_transactor
    xsc::common_cpp::properties pcie1_m_axis_cq_transactor_param_props;
    pcie1_m_axis_cq_transactor_param_props.addLong("TDATA_NUM_BYTES", "128");
    pcie1_m_axis_cq_transactor_param_props.addLong("TDEST_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TID_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TUSER_WIDTH", "465");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TREADY", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TSTRB", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TKEEP", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_TLAST", "1");
    pcie1_m_axis_cq_transactor_param_props.addLong("FREQ_HZ", "250000000");
    pcie1_m_axis_cq_transactor_param_props.addLong("HAS_RESET", "1");
    pcie1_m_axis_cq_transactor_param_props.addFloat("PHASE", "0.0");
    pcie1_m_axis_cq_transactor_param_props.addString("CLK_DOMAIN", "bd_6f6a_cpm_0_0_pcie1_user_clk");
    pcie1_m_axis_cq_transactor_param_props.addString("LAYERED_METADATA", "undef");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    pcie1_m_axis_cq_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_pcie1_m_axis_cq_transactor = new xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>("pcie1_m_axis_cq_transactor", pcie1_m_axis_cq_transactor_param_props);
  mp_pcie1_m_axis_cq_transactor->TDATA(pcie1_m_axis_cq_tdata);
  mp_pcie1_m_axis_cq_tkeep_converter = new xsc::common::vector2vector_converter<128,32>("pcie1_m_axis_cq_tkeep_converter");
  mp_pcie1_m_axis_cq_tkeep_converter->vector_in(m_pcie1_m_axis_cq_tkeep_converter_signal);
  mp_pcie1_m_axis_cq_tkeep_converter->vector_out(pcie1_m_axis_cq_tkeep);
  mp_pcie1_m_axis_cq_transactor->TKEEP(m_pcie1_m_axis_cq_tkeep_converter_signal);
  mp_pcie1_m_axis_cq_transactor->TLAST(pcie1_m_axis_cq_tlast);
  mp_pcie1_m_axis_cq_transactor->TREADY(pcie1_m_axis_cq_tready);
  mp_pcie1_m_axis_cq_transactor->TUSER(pcie1_m_axis_cq_tuser);
  mp_pcie1_m_axis_cq_transactor->TVALID(pcie1_m_axis_cq_tvalid);
  mp_pcie1_m_axis_cq_transactor->CLK(pcie1_user_clk);
  mp_pcie1_m_axis_cq_transactor->RST(pcie1_user_reset);

  // initialize transactors stubs
  pcie1_s_axis_rq_transactor_target_socket_stub = nullptr;
  pcie1_s_axis_cc_transactor_target_socket_stub = nullptr;
  pcie1_m_axis_rc_transactor_initiator_socket_stub = nullptr;
  pcie1_m_axis_cq_transactor_initiator_socket_stub = nullptr;

}

void exerciser_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'pcie1_s_axis_rq' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_rq_TLM_MODE") != 1)
  {
    mp_impl->pcie1_s_axis_rq_socket->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
  
  }
  else
  {
    pcie1_s_axis_rq_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    pcie1_s_axis_rq_transactor_target_socket_stub->bind(*(mp_pcie1_s_axis_rq_transactor->socket));
    mp_pcie1_s_axis_rq_transactor->disable_transactor();
  }

  // configure 'pcie1_s_axis_cc' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_s_axis_cc_TLM_MODE") != 1)
  {
    mp_impl->pcie1_s_axis_cc_socket->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
  
  }
  else
  {
    pcie1_s_axis_cc_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    pcie1_s_axis_cc_transactor_target_socket_stub->bind(*(mp_pcie1_s_axis_cc_transactor->socket));
    mp_pcie1_s_axis_cc_transactor->disable_transactor();
  }

  // configure 'pcie1_m_axis_rc' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_rc_TLM_MODE") != 1)
  {
    mp_impl->pcie1_m_axis_rc_socket->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
  
  }
  else
  {
    pcie1_m_axis_rc_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    pcie1_m_axis_rc_transactor_initiator_socket_stub->bind(*(mp_pcie1_m_axis_rc_transactor->socket));
    mp_pcie1_m_axis_rc_transactor->disable_transactor();
  }

  // configure 'pcie1_m_axis_cq' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("exerciser_versal_cips_0_0", "pcie1_m_axis_cq_TLM_MODE") != 1)
  {
    mp_impl->pcie1_m_axis_cq_socket->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
  
  }
  else
  {
    pcie1_m_axis_cq_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    pcie1_m_axis_cq_transactor_initiator_socket_stub->bind(*(mp_pcie1_m_axis_cq_transactor->socket));
    mp_pcie1_m_axis_cq_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




exerciser_versal_cips_0_0::~exerciser_versal_cips_0_0()
{
  delete mp_pcie1_s_axis_rq_transactor;
  delete mp_pcie1_s_axis_rq_tkeep_converter;

  delete mp_pcie1_s_axis_cc_transactor;
  delete mp_pcie1_s_axis_cc_tkeep_converter;

  delete mp_pcie1_m_axis_rc_transactor;
  delete mp_pcie1_m_axis_rc_tkeep_converter;

  delete mp_pcie1_m_axis_cq_transactor;
  delete mp_pcie1_m_axis_cq_tkeep_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(exerciser_versal_cips_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(exerciser_versal_cips_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(exerciser_versal_cips_0_0);
SC_REGISTER_BV(1024);
#endif

