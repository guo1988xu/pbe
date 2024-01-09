#ifndef IP_EXERCISER_VERSAL_CIPS_0_0_H_
#define IP_EXERCISER_VERSAL_CIPS_0_0_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "exerciser_versal_cips_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport exerciser_versal_cips_0_0 : public exerciser_versal_cips_0_0_sc
{
public:

  exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~exerciser_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pcie1_user_clk;
  sc_core::sc_out< bool > cpm_misc_irq;
  sc_core::sc_out< bool > cpm_cor_irq;
  sc_core::sc_out< bool > cpm_uncor_irq;
  sc_core::sc_in< bool > cpm_irq0;
  sc_core::sc_in< bool > cpm_irq1;
  sc_core::sc_out< bool > pcie1_user_reset;
  sc_core::sc_out< bool > pcie1_user_lnk_up;
  sc_core::sc_in< bool > pcie1_cfg_control_err_cor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_err_uncor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_flr_done;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_flr_done_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_control_flr_in_process;
  sc_core::sc_in< bool > pcie1_cfg_control_hot_reset_in;
  sc_core::sc_out< bool > pcie1_cfg_control_hot_reset_out;
  sc_core::sc_in< bool > pcie1_cfg_control_per_function_req;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_per_function_number;
  sc_core::sc_in< bool > pcie1_cfg_control_power_state_change_ack;
  sc_core::sc_out< bool > pcie1_cfg_control_power_state_change_interrupt;
  sc_core::sc_out< bool > pcie1_cfg_interrupt_sent;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_interrupt_intx_vector;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_interrupt_pending;
  sc_core::sc_out< bool > pcie1_s_axis_rq_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_rq_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_rq_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tlast;
  sc_core::sc_in< sc_dt::sc_bv<373> > pcie1_s_axis_rq_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tvalid;
  sc_core::sc_out< bool > pcie1_s_axis_cc_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_cc_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_cc_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tlast;
  sc_core::sc_in< sc_dt::sc_bv<165> > pcie1_s_axis_cc_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_rc_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_rc_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_rc_tready;
  sc_core::sc_out< sc_dt::sc_bv<337> > pcie1_m_axis_rc_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_cq_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_cq_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_cq_tready;
  sc_core::sc_out< sc_dt::sc_bv<465> > pcie1_m_axis_cq_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tvalid;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_read_en;
  sc_core::sc_out< bool > pcie1_cfg_mgmt_read_write_done;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_write_en;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_debug_access;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_read_data;
  sc_core::sc_in< sc_dt::sc_bv<10> > pcie1_cfg_mgmt_addr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_mgmt_byte_en;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_write_data;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_mgmt_function_number;
  sc_core::sc_out< bool > pcie1_cfg_msi_fail;
  sc_core::sc_out< bool > pcie1_cfg_msi_sent;
  sc_core::sc_out< bool > pcie1_cfg_msi_mask_update;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_msi_data;
  sc_core::sc_out< bool > pcie1_cfg_msi_enable;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_msi_mmenable;
  sc_core::sc_in< bool > pcie1_cfg_msi_tph_present;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msi_attr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_select;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_msi_tph_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > pcie1_cfg_msi_tph_st_tag;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_int_vector;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_pending_status;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_msi_function_number;
  sc_core::sc_in< bool > pcie1_cfg_msi_pending_status_data_enable;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_pending_status_function_num;
  sc_core::sc_out< bool > pcie1_cfg_ext_read_received;
  sc_core::sc_out< bool > pcie1_cfg_ext_write_received;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_ext_write_data;
  sc_core::sc_in< bool > pcie1_cfg_ext_read_data_valid;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_ext_function_number;
  sc_core::sc_out< sc_dt::sc_bv<10> > pcie1_cfg_ext_register_number;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_ext_read_data;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_ext_write_byte_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_ph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_pd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_nph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_npd;
  sc_core::sc_in< bool > pcie1_cfg_fc_vc_sel;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_pd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_ph_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_npd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_nph_scale;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_fc_sel;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_cplh;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_cpld;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cpld_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cplh_scale;
  sc_core::sc_out< bool > pcie1_cfg_msg_tx_transmit_done;
  sc_core::sc_in< bool > pcie1_cfg_msg_tx_transmit;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msg_tx_transmit_type;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msg_tx_transmit_data;
  sc_core::sc_out< bool > pcie1_cfg_status_err_cor_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_fatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_nonfatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_local_error_valid;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_status_local_error_out;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_enable;
  sc_core::sc_out< sc_dt::sc_bv<48> > pcie1_cfg_status_pasid_control;
  sc_core::sc_out< sc_dt::sc_bv<80> > pcie1_cfg_status_max_pasid_width_control;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_exec_permission_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_privil_mode_enable;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld0;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld0;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld2;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld3;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_rq_tag_av;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag0;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num0;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num2;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num3;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_cq_np_req_count;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_status_cq_np_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_function_power_state;
  sc_core::sc_out< bool > pcie1_cfg_status_atomic_requester_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_status_bus_number;
  sc_core::sc_out< bool > pcie1_cfg_status_phy_link_down;
  sc_core::sc_out< bool > pcie1_cfg_status_ext_tag_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pl_status_change;
  sc_core::sc_out< bool > pcie1_cfg_status_rcb_status;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_ltssm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_max_payload;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_status_tph_st_mode;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_max_read_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_current_speed;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_tx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_phy_link_status;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_function_status;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_link_power_state;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_negotiated_width;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_tph_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_10b_tag_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_per_function_vld;
  sc_core::sc_out< sc_dt::sc_bv<24> > pcie1_cfg_status_per_function_out;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_bme_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_flr_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msi_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_vfe_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msix_vld;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_wrreq_out_value;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_status_wrreq_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_npd_av;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_nph_av;
  sc_core::sc_out< bool > pcie1_cfg_msg_recd_recd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_msg_recd_recd_data;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_msg_recd_recd_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_n;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_n;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_p;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_p;
  sc_core::sc_in< bool > gt_refclk1_clk_n;
  sc_core::sc_in< bool > gt_refclk1_clk_p;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>* mp_pcie1_s_axis_rq_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_rq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_rq_tkeep_converter_signal;
  xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>* mp_pcie1_s_axis_cc_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_cc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_cc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>* mp_pcie1_m_axis_rc_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_rc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_rc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>* mp_pcie1_m_axis_cq_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_cq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_cq_tkeep_converter_signal;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport exerciser_versal_cips_0_0 : public exerciser_versal_cips_0_0_sc
{
public:

  exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~exerciser_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pcie1_user_clk;
  sc_core::sc_out< bool > cpm_misc_irq;
  sc_core::sc_out< bool > cpm_cor_irq;
  sc_core::sc_out< bool > cpm_uncor_irq;
  sc_core::sc_in< bool > cpm_irq0;
  sc_core::sc_in< bool > cpm_irq1;
  sc_core::sc_out< bool > pcie1_user_reset;
  sc_core::sc_out< bool > pcie1_user_lnk_up;
  sc_core::sc_in< bool > pcie1_cfg_control_err_cor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_err_uncor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_flr_done;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_flr_done_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_control_flr_in_process;
  sc_core::sc_in< bool > pcie1_cfg_control_hot_reset_in;
  sc_core::sc_out< bool > pcie1_cfg_control_hot_reset_out;
  sc_core::sc_in< bool > pcie1_cfg_control_per_function_req;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_per_function_number;
  sc_core::sc_in< bool > pcie1_cfg_control_power_state_change_ack;
  sc_core::sc_out< bool > pcie1_cfg_control_power_state_change_interrupt;
  sc_core::sc_out< bool > pcie1_cfg_interrupt_sent;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_interrupt_intx_vector;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_interrupt_pending;
  sc_core::sc_out< bool > pcie1_s_axis_rq_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_rq_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_rq_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tlast;
  sc_core::sc_in< sc_dt::sc_bv<373> > pcie1_s_axis_rq_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tvalid;
  sc_core::sc_out< bool > pcie1_s_axis_cc_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_cc_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_cc_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tlast;
  sc_core::sc_in< sc_dt::sc_bv<165> > pcie1_s_axis_cc_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_rc_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_rc_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_rc_tready;
  sc_core::sc_out< sc_dt::sc_bv<337> > pcie1_m_axis_rc_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_cq_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_cq_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_cq_tready;
  sc_core::sc_out< sc_dt::sc_bv<465> > pcie1_m_axis_cq_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tvalid;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_read_en;
  sc_core::sc_out< bool > pcie1_cfg_mgmt_read_write_done;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_write_en;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_debug_access;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_read_data;
  sc_core::sc_in< sc_dt::sc_bv<10> > pcie1_cfg_mgmt_addr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_mgmt_byte_en;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_write_data;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_mgmt_function_number;
  sc_core::sc_out< bool > pcie1_cfg_msi_fail;
  sc_core::sc_out< bool > pcie1_cfg_msi_sent;
  sc_core::sc_out< bool > pcie1_cfg_msi_mask_update;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_msi_data;
  sc_core::sc_out< bool > pcie1_cfg_msi_enable;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_msi_mmenable;
  sc_core::sc_in< bool > pcie1_cfg_msi_tph_present;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msi_attr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_select;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_msi_tph_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > pcie1_cfg_msi_tph_st_tag;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_int_vector;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_pending_status;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_msi_function_number;
  sc_core::sc_in< bool > pcie1_cfg_msi_pending_status_data_enable;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_pending_status_function_num;
  sc_core::sc_out< bool > pcie1_cfg_ext_read_received;
  sc_core::sc_out< bool > pcie1_cfg_ext_write_received;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_ext_write_data;
  sc_core::sc_in< bool > pcie1_cfg_ext_read_data_valid;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_ext_function_number;
  sc_core::sc_out< sc_dt::sc_bv<10> > pcie1_cfg_ext_register_number;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_ext_read_data;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_ext_write_byte_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_ph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_pd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_nph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_npd;
  sc_core::sc_in< bool > pcie1_cfg_fc_vc_sel;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_pd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_ph_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_npd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_nph_scale;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_fc_sel;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_cplh;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_cpld;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cpld_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cplh_scale;
  sc_core::sc_out< bool > pcie1_cfg_msg_tx_transmit_done;
  sc_core::sc_in< bool > pcie1_cfg_msg_tx_transmit;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msg_tx_transmit_type;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msg_tx_transmit_data;
  sc_core::sc_out< bool > pcie1_cfg_status_err_cor_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_fatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_nonfatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_local_error_valid;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_status_local_error_out;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_enable;
  sc_core::sc_out< sc_dt::sc_bv<48> > pcie1_cfg_status_pasid_control;
  sc_core::sc_out< sc_dt::sc_bv<80> > pcie1_cfg_status_max_pasid_width_control;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_exec_permission_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_privil_mode_enable;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld0;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld0;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld2;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld3;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_rq_tag_av;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag0;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num0;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num2;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num3;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_cq_np_req_count;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_status_cq_np_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_function_power_state;
  sc_core::sc_out< bool > pcie1_cfg_status_atomic_requester_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_status_bus_number;
  sc_core::sc_out< bool > pcie1_cfg_status_phy_link_down;
  sc_core::sc_out< bool > pcie1_cfg_status_ext_tag_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pl_status_change;
  sc_core::sc_out< bool > pcie1_cfg_status_rcb_status;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_ltssm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_max_payload;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_status_tph_st_mode;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_max_read_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_current_speed;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_tx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_phy_link_status;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_function_status;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_link_power_state;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_negotiated_width;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_tph_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_10b_tag_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_per_function_vld;
  sc_core::sc_out< sc_dt::sc_bv<24> > pcie1_cfg_status_per_function_out;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_bme_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_flr_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msi_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_vfe_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msix_vld;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_wrreq_out_value;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_status_wrreq_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_npd_av;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_nph_av;
  sc_core::sc_out< bool > pcie1_cfg_msg_recd_recd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_msg_recd_recd_data;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_msg_recd_recd_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_n;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_n;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_p;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_p;
  sc_core::sc_in< bool > gt_refclk1_clk_n;
  sc_core::sc_in< bool > gt_refclk1_clk_p;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>* mp_pcie1_s_axis_rq_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_rq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_rq_tkeep_converter_signal;
  xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>* mp_pcie1_s_axis_cc_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_cc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_cc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>* mp_pcie1_m_axis_rc_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_rc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_rc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>* mp_pcie1_m_axis_cq_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_cq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_cq_tkeep_converter_signal;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport exerciser_versal_cips_0_0 : public exerciser_versal_cips_0_0_sc
{
public:

  exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~exerciser_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pcie1_user_clk;
  sc_core::sc_out< bool > cpm_misc_irq;
  sc_core::sc_out< bool > cpm_cor_irq;
  sc_core::sc_out< bool > cpm_uncor_irq;
  sc_core::sc_in< bool > cpm_irq0;
  sc_core::sc_in< bool > cpm_irq1;
  sc_core::sc_out< bool > pcie1_user_reset;
  sc_core::sc_out< bool > pcie1_user_lnk_up;
  sc_core::sc_in< bool > pcie1_cfg_control_err_cor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_err_uncor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_flr_done;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_flr_done_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_control_flr_in_process;
  sc_core::sc_in< bool > pcie1_cfg_control_hot_reset_in;
  sc_core::sc_out< bool > pcie1_cfg_control_hot_reset_out;
  sc_core::sc_in< bool > pcie1_cfg_control_per_function_req;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_per_function_number;
  sc_core::sc_in< bool > pcie1_cfg_control_power_state_change_ack;
  sc_core::sc_out< bool > pcie1_cfg_control_power_state_change_interrupt;
  sc_core::sc_out< bool > pcie1_cfg_interrupt_sent;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_interrupt_intx_vector;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_interrupt_pending;
  sc_core::sc_out< bool > pcie1_s_axis_rq_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_rq_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_rq_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tlast;
  sc_core::sc_in< sc_dt::sc_bv<373> > pcie1_s_axis_rq_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tvalid;
  sc_core::sc_out< bool > pcie1_s_axis_cc_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_cc_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_cc_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tlast;
  sc_core::sc_in< sc_dt::sc_bv<165> > pcie1_s_axis_cc_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_rc_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_rc_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_rc_tready;
  sc_core::sc_out< sc_dt::sc_bv<337> > pcie1_m_axis_rc_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_cq_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_cq_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_cq_tready;
  sc_core::sc_out< sc_dt::sc_bv<465> > pcie1_m_axis_cq_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tvalid;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_read_en;
  sc_core::sc_out< bool > pcie1_cfg_mgmt_read_write_done;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_write_en;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_debug_access;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_read_data;
  sc_core::sc_in< sc_dt::sc_bv<10> > pcie1_cfg_mgmt_addr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_mgmt_byte_en;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_write_data;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_mgmt_function_number;
  sc_core::sc_out< bool > pcie1_cfg_msi_fail;
  sc_core::sc_out< bool > pcie1_cfg_msi_sent;
  sc_core::sc_out< bool > pcie1_cfg_msi_mask_update;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_msi_data;
  sc_core::sc_out< bool > pcie1_cfg_msi_enable;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_msi_mmenable;
  sc_core::sc_in< bool > pcie1_cfg_msi_tph_present;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msi_attr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_select;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_msi_tph_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > pcie1_cfg_msi_tph_st_tag;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_int_vector;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_pending_status;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_msi_function_number;
  sc_core::sc_in< bool > pcie1_cfg_msi_pending_status_data_enable;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_pending_status_function_num;
  sc_core::sc_out< bool > pcie1_cfg_ext_read_received;
  sc_core::sc_out< bool > pcie1_cfg_ext_write_received;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_ext_write_data;
  sc_core::sc_in< bool > pcie1_cfg_ext_read_data_valid;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_ext_function_number;
  sc_core::sc_out< sc_dt::sc_bv<10> > pcie1_cfg_ext_register_number;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_ext_read_data;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_ext_write_byte_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_ph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_pd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_nph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_npd;
  sc_core::sc_in< bool > pcie1_cfg_fc_vc_sel;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_pd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_ph_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_npd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_nph_scale;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_fc_sel;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_cplh;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_cpld;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cpld_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cplh_scale;
  sc_core::sc_out< bool > pcie1_cfg_msg_tx_transmit_done;
  sc_core::sc_in< bool > pcie1_cfg_msg_tx_transmit;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msg_tx_transmit_type;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msg_tx_transmit_data;
  sc_core::sc_out< bool > pcie1_cfg_status_err_cor_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_fatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_nonfatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_local_error_valid;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_status_local_error_out;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_enable;
  sc_core::sc_out< sc_dt::sc_bv<48> > pcie1_cfg_status_pasid_control;
  sc_core::sc_out< sc_dt::sc_bv<80> > pcie1_cfg_status_max_pasid_width_control;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_exec_permission_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_privil_mode_enable;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld0;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld0;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld2;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld3;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_rq_tag_av;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag0;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num0;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num2;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num3;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_cq_np_req_count;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_status_cq_np_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_function_power_state;
  sc_core::sc_out< bool > pcie1_cfg_status_atomic_requester_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_status_bus_number;
  sc_core::sc_out< bool > pcie1_cfg_status_phy_link_down;
  sc_core::sc_out< bool > pcie1_cfg_status_ext_tag_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pl_status_change;
  sc_core::sc_out< bool > pcie1_cfg_status_rcb_status;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_ltssm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_max_payload;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_status_tph_st_mode;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_max_read_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_current_speed;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_tx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_phy_link_status;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_function_status;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_link_power_state;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_negotiated_width;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_tph_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_10b_tag_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_per_function_vld;
  sc_core::sc_out< sc_dt::sc_bv<24> > pcie1_cfg_status_per_function_out;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_bme_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_flr_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msi_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_vfe_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msix_vld;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_wrreq_out_value;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_status_wrreq_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_npd_av;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_nph_av;
  sc_core::sc_out< bool > pcie1_cfg_msg_recd_recd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_msg_recd_recd_data;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_msg_recd_recd_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_n;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_n;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_p;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_p;
  sc_core::sc_in< bool > gt_refclk1_clk_n;
  sc_core::sc_in< bool > gt_refclk1_clk_p;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>* mp_pcie1_s_axis_rq_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_rq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_rq_tkeep_converter_signal;
  xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>* mp_pcie1_s_axis_cc_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_cc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_cc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>* mp_pcie1_m_axis_rc_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_rc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_rc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>* mp_pcie1_m_axis_cq_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_cq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_cq_tkeep_converter_signal;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_axis_initiator_stub.h"

#include "utils/xtlm_axis_target_stub.h"

class DllExport exerciser_versal_cips_0_0 : public exerciser_versal_cips_0_0_sc
{
public:

  exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~exerciser_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pcie1_user_clk;
  sc_core::sc_out< bool > cpm_misc_irq;
  sc_core::sc_out< bool > cpm_cor_irq;
  sc_core::sc_out< bool > cpm_uncor_irq;
  sc_core::sc_in< bool > cpm_irq0;
  sc_core::sc_in< bool > cpm_irq1;
  sc_core::sc_out< bool > pcie1_user_reset;
  sc_core::sc_out< bool > pcie1_user_lnk_up;
  sc_core::sc_in< bool > pcie1_cfg_control_err_cor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_err_uncor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_flr_done;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_flr_done_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_control_flr_in_process;
  sc_core::sc_in< bool > pcie1_cfg_control_hot_reset_in;
  sc_core::sc_out< bool > pcie1_cfg_control_hot_reset_out;
  sc_core::sc_in< bool > pcie1_cfg_control_per_function_req;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_per_function_number;
  sc_core::sc_in< bool > pcie1_cfg_control_power_state_change_ack;
  sc_core::sc_out< bool > pcie1_cfg_control_power_state_change_interrupt;
  sc_core::sc_out< bool > pcie1_cfg_interrupt_sent;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_interrupt_intx_vector;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_interrupt_pending;
  sc_core::sc_out< bool > pcie1_s_axis_rq_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_rq_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_rq_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tlast;
  sc_core::sc_in< sc_dt::sc_bv<373> > pcie1_s_axis_rq_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tvalid;
  sc_core::sc_out< bool > pcie1_s_axis_cc_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_cc_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_cc_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tlast;
  sc_core::sc_in< sc_dt::sc_bv<165> > pcie1_s_axis_cc_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_rc_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_rc_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_rc_tready;
  sc_core::sc_out< sc_dt::sc_bv<337> > pcie1_m_axis_rc_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_cq_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_cq_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_cq_tready;
  sc_core::sc_out< sc_dt::sc_bv<465> > pcie1_m_axis_cq_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tvalid;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_read_en;
  sc_core::sc_out< bool > pcie1_cfg_mgmt_read_write_done;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_write_en;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_debug_access;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_read_data;
  sc_core::sc_in< sc_dt::sc_bv<10> > pcie1_cfg_mgmt_addr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_mgmt_byte_en;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_write_data;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_mgmt_function_number;
  sc_core::sc_out< bool > pcie1_cfg_msi_fail;
  sc_core::sc_out< bool > pcie1_cfg_msi_sent;
  sc_core::sc_out< bool > pcie1_cfg_msi_mask_update;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_msi_data;
  sc_core::sc_out< bool > pcie1_cfg_msi_enable;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_msi_mmenable;
  sc_core::sc_in< bool > pcie1_cfg_msi_tph_present;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msi_attr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_select;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_msi_tph_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > pcie1_cfg_msi_tph_st_tag;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_int_vector;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_pending_status;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_msi_function_number;
  sc_core::sc_in< bool > pcie1_cfg_msi_pending_status_data_enable;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_pending_status_function_num;
  sc_core::sc_out< bool > pcie1_cfg_ext_read_received;
  sc_core::sc_out< bool > pcie1_cfg_ext_write_received;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_ext_write_data;
  sc_core::sc_in< bool > pcie1_cfg_ext_read_data_valid;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_ext_function_number;
  sc_core::sc_out< sc_dt::sc_bv<10> > pcie1_cfg_ext_register_number;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_ext_read_data;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_ext_write_byte_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_ph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_pd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_nph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_npd;
  sc_core::sc_in< bool > pcie1_cfg_fc_vc_sel;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_pd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_ph_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_npd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_nph_scale;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_fc_sel;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_cplh;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_cpld;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cpld_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cplh_scale;
  sc_core::sc_out< bool > pcie1_cfg_msg_tx_transmit_done;
  sc_core::sc_in< bool > pcie1_cfg_msg_tx_transmit;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msg_tx_transmit_type;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msg_tx_transmit_data;
  sc_core::sc_out< bool > pcie1_cfg_status_err_cor_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_fatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_nonfatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_local_error_valid;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_status_local_error_out;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_enable;
  sc_core::sc_out< sc_dt::sc_bv<48> > pcie1_cfg_status_pasid_control;
  sc_core::sc_out< sc_dt::sc_bv<80> > pcie1_cfg_status_max_pasid_width_control;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_exec_permission_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_privil_mode_enable;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld0;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld0;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld2;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld3;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_rq_tag_av;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag0;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num0;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num2;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num3;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_cq_np_req_count;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_status_cq_np_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_function_power_state;
  sc_core::sc_out< bool > pcie1_cfg_status_atomic_requester_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_status_bus_number;
  sc_core::sc_out< bool > pcie1_cfg_status_phy_link_down;
  sc_core::sc_out< bool > pcie1_cfg_status_ext_tag_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pl_status_change;
  sc_core::sc_out< bool > pcie1_cfg_status_rcb_status;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_ltssm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_max_payload;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_status_tph_st_mode;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_max_read_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_current_speed;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_tx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_phy_link_status;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_function_status;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_link_power_state;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_negotiated_width;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_tph_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_10b_tag_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_per_function_vld;
  sc_core::sc_out< sc_dt::sc_bv<24> > pcie1_cfg_status_per_function_out;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_bme_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_flr_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msi_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_vfe_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msix_vld;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_wrreq_out_value;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_status_wrreq_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_npd_av;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_nph_av;
  sc_core::sc_out< bool > pcie1_cfg_msg_recd_recd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_msg_recd_recd_data;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_msg_recd_recd_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_n;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_n;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_p;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_p;
  sc_core::sc_in< bool > gt_refclk1_clk_n;
  sc_core::sc_in< bool > gt_refclk1_clk_p;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>* mp_pcie1_s_axis_rq_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_rq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_rq_tkeep_converter_signal;
  xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>* mp_pcie1_s_axis_cc_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_cc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_cc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>* mp_pcie1_m_axis_rc_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_rc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_rc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>* mp_pcie1_m_axis_cq_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_cq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_cq_tkeep_converter_signal;

  // Transactor stubs
  xtlm::xtlm_axis_initiator_stub * pcie1_m_axis_cq_transactor_initiator_socket_stub;
  xtlm::xtlm_axis_initiator_stub * pcie1_m_axis_rc_transactor_initiator_socket_stub;
  xtlm::xtlm_axis_target_stub * pcie1_s_axis_cc_transactor_target_socket_stub;
  xtlm::xtlm_axis_target_stub * pcie1_s_axis_rq_transactor_target_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_axis_initiator_stub.h"

#include "utils/xtlm_axis_target_stub.h"

class DllExport exerciser_versal_cips_0_0 : public exerciser_versal_cips_0_0_sc
{
public:

  exerciser_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~exerciser_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pcie1_user_clk;
  sc_core::sc_out< bool > cpm_misc_irq;
  sc_core::sc_out< bool > cpm_cor_irq;
  sc_core::sc_out< bool > cpm_uncor_irq;
  sc_core::sc_in< bool > cpm_irq0;
  sc_core::sc_in< bool > cpm_irq1;
  sc_core::sc_out< bool > pcie1_user_reset;
  sc_core::sc_out< bool > pcie1_user_lnk_up;
  sc_core::sc_in< bool > pcie1_cfg_control_err_cor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_err_uncor_in;
  sc_core::sc_in< bool > pcie1_cfg_control_flr_done;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_flr_done_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_control_flr_in_process;
  sc_core::sc_in< bool > pcie1_cfg_control_hot_reset_in;
  sc_core::sc_out< bool > pcie1_cfg_control_hot_reset_out;
  sc_core::sc_in< bool > pcie1_cfg_control_per_function_req;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_control_per_function_number;
  sc_core::sc_in< bool > pcie1_cfg_control_power_state_change_ack;
  sc_core::sc_out< bool > pcie1_cfg_control_power_state_change_interrupt;
  sc_core::sc_out< bool > pcie1_cfg_interrupt_sent;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_interrupt_intx_vector;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_interrupt_pending;
  sc_core::sc_out< bool > pcie1_s_axis_rq_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_rq_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_rq_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tlast;
  sc_core::sc_in< sc_dt::sc_bv<373> > pcie1_s_axis_rq_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_rq_tvalid;
  sc_core::sc_out< bool > pcie1_s_axis_cc_tready;
  sc_core::sc_in< sc_dt::sc_bv<1024> > pcie1_s_axis_cc_tdata;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_s_axis_cc_tkeep;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tlast;
  sc_core::sc_in< sc_dt::sc_bv<165> > pcie1_s_axis_cc_tuser;
  sc_core::sc_in< bool > pcie1_s_axis_cc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_rc_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_rc_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_rc_tready;
  sc_core::sc_out< sc_dt::sc_bv<337> > pcie1_m_axis_rc_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_rc_tvalid;
  sc_core::sc_out< sc_dt::sc_bv<1024> > pcie1_m_axis_cq_tdata;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_m_axis_cq_tkeep;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tlast;
  sc_core::sc_in< bool > pcie1_m_axis_cq_tready;
  sc_core::sc_out< sc_dt::sc_bv<465> > pcie1_m_axis_cq_tuser;
  sc_core::sc_out< bool > pcie1_m_axis_cq_tvalid;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_read_en;
  sc_core::sc_out< bool > pcie1_cfg_mgmt_read_write_done;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_write_en;
  sc_core::sc_in< bool > pcie1_cfg_mgmt_debug_access;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_read_data;
  sc_core::sc_in< sc_dt::sc_bv<10> > pcie1_cfg_mgmt_addr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_mgmt_byte_en;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_mgmt_write_data;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_mgmt_function_number;
  sc_core::sc_out< bool > pcie1_cfg_msi_fail;
  sc_core::sc_out< bool > pcie1_cfg_msi_sent;
  sc_core::sc_out< bool > pcie1_cfg_msi_mask_update;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_msi_data;
  sc_core::sc_out< bool > pcie1_cfg_msi_enable;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_msi_mmenable;
  sc_core::sc_in< bool > pcie1_cfg_msi_tph_present;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msi_attr;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_select;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_msi_tph_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > pcie1_cfg_msi_tph_st_tag;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_int_vector;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msi_pending_status;
  sc_core::sc_in< sc_dt::sc_bv<16> > pcie1_cfg_msi_function_number;
  sc_core::sc_in< bool > pcie1_cfg_msi_pending_status_data_enable;
  sc_core::sc_in< sc_dt::sc_bv<4> > pcie1_cfg_msi_pending_status_function_num;
  sc_core::sc_out< bool > pcie1_cfg_ext_read_received;
  sc_core::sc_out< bool > pcie1_cfg_ext_write_received;
  sc_core::sc_out< sc_dt::sc_bv<32> > pcie1_cfg_ext_write_data;
  sc_core::sc_in< bool > pcie1_cfg_ext_read_data_valid;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_ext_function_number;
  sc_core::sc_out< sc_dt::sc_bv<10> > pcie1_cfg_ext_register_number;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_ext_read_data;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_ext_write_byte_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_ph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_pd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_nph;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_npd;
  sc_core::sc_in< bool > pcie1_cfg_fc_vc_sel;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_pd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_ph_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_npd_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_nph_scale;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_fc_sel;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_fc_cplh;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_fc_cpld;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cpld_scale;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_fc_cplh_scale;
  sc_core::sc_out< bool > pcie1_cfg_msg_tx_transmit_done;
  sc_core::sc_in< bool > pcie1_cfg_msg_tx_transmit;
  sc_core::sc_in< sc_dt::sc_bv<3> > pcie1_cfg_msg_tx_transmit_type;
  sc_core::sc_in< sc_dt::sc_bv<32> > pcie1_cfg_msg_tx_transmit_data;
  sc_core::sc_out< bool > pcie1_cfg_status_err_cor_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_fatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_err_nonfatal_out;
  sc_core::sc_out< bool > pcie1_cfg_status_local_error_valid;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_status_local_error_out;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_enable;
  sc_core::sc_out< sc_dt::sc_bv<48> > pcie1_cfg_status_pasid_control;
  sc_core::sc_out< sc_dt::sc_bv<80> > pcie1_cfg_status_max_pasid_width_control;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_exec_permission_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pasid_privil_mode_enable;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld0;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rq_tag_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld0;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld1;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld2;
  sc_core::sc_out< bool > pcie1_cfg_status_rq_seq_num_vld3;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_rq_tag_av;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag0;
  sc_core::sc_out< sc_dt::sc_bv<20> > pcie1_cfg_status_rq_tag1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num0;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num1;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num2;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_rq_seq_num3;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_cq_np_req_count;
  sc_core::sc_in< sc_dt::sc_bv<2> > pcie1_cfg_status_cq_np_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_function_power_state;
  sc_core::sc_out< bool > pcie1_cfg_status_atomic_requester_enable;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_status_bus_number;
  sc_core::sc_out< bool > pcie1_cfg_status_phy_link_down;
  sc_core::sc_out< bool > pcie1_cfg_status_ext_tag_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_pl_status_change;
  sc_core::sc_out< bool > pcie1_cfg_status_rcb_status;
  sc_core::sc_out< sc_dt::sc_bv<6> > pcie1_cfg_status_ltssm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_max_payload;
  sc_core::sc_out< sc_dt::sc_bv<12> > pcie1_cfg_status_tph_st_mode;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_max_read_req;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_current_speed;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_rx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_tx_pm_state;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_phy_link_status;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_function_status;
  sc_core::sc_out< sc_dt::sc_bv<2> > pcie1_cfg_status_link_power_state;
  sc_core::sc_out< sc_dt::sc_bv<3> > pcie1_cfg_status_negotiated_width;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_tph_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_10b_tag_requester_enable;
  sc_core::sc_out< bool > pcie1_cfg_status_per_function_vld;
  sc_core::sc_out< sc_dt::sc_bv<24> > pcie1_cfg_status_per_function_out;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_bme_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_flr_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msi_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_vfe_vld;
  sc_core::sc_out< bool > pcie1_cfg_status_wrreq_msix_vld;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_cfg_status_wrreq_out_value;
  sc_core::sc_out< sc_dt::sc_bv<16> > pcie1_cfg_status_wrreq_function_number;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_npd_av;
  sc_core::sc_out< sc_dt::sc_bv<4> > pcie1_transmit_fc_nph_av;
  sc_core::sc_out< bool > pcie1_cfg_msg_recd_recd;
  sc_core::sc_out< sc_dt::sc_bv<8> > pcie1_cfg_msg_recd_recd_data;
  sc_core::sc_out< sc_dt::sc_bv<5> > pcie1_cfg_msg_recd_recd_type;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_n;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_n;
  sc_core::sc_in< sc_dt::sc_bv<8> > PCIE1_GT_grx_p;
  sc_core::sc_out< sc_dt::sc_bv<8> > PCIE1_GT_gtx_p;
  sc_core::sc_in< bool > gt_refclk1_clk_n;
  sc_core::sc_in< bool > gt_refclk1_clk_p;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaxis_pin2xtlm_t<128,373,1,1,1,1>* mp_pcie1_s_axis_rq_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_rq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_rq_tkeep_converter_signal;
  xtlm::xaxis_pin2xtlm_t<128,165,1,1,1,1>* mp_pcie1_s_axis_cc_transactor;
  xsc::common::vector2vector_converter<32,128>* mp_pcie1_s_axis_cc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_s_axis_cc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,337,1,1,1,1>* mp_pcie1_m_axis_rc_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_rc_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_rc_tkeep_converter_signal;
  xtlm::xaxis_xtlm2pin_t<128,465,1,1,1,1>* mp_pcie1_m_axis_cq_transactor;
  xsc::common::vector2vector_converter<128,32>* mp_pcie1_m_axis_cq_tkeep_converter;
  sc_signal< sc_bv<128> > m_pcie1_m_axis_cq_tkeep_converter_signal;

  // Transactor stubs
  xtlm::xtlm_axis_initiator_stub * pcie1_m_axis_cq_transactor_initiator_socket_stub;
  xtlm::xtlm_axis_initiator_stub * pcie1_m_axis_rc_transactor_initiator_socket_stub;
  xtlm::xtlm_axis_target_stub * pcie1_s_axis_cc_transactor_target_socket_stub;
  xtlm::xtlm_axis_target_stub * pcie1_s_axis_rq_transactor_target_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_EXERCISER_VERSAL_CIPS_0_0_H_
