 

 
 
 
 
 
 
// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.

#ifndef __PS_PMC_TLM_H__
#define __PS_PMC_TLM_H__


#include "systemc.h"
#include "xtlm.h"
#include "xtlm_adaptors/xaximm_xtlm2tlm_t.h"
#include "xtlm_adaptors/xaximm_tlm2xtlm.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"
#include <vector>
#include "genattr.h"
#include "xilinx_versal_vitis.h"
#include <stdlib.h>
#include "xtlm_simple_interconnect_model.h"
 
 
 
 
 
#include "b_transport_converter.h"
#include "utils/xtlm_axis_target_stub.h"
#include "utils/xtlm_axis_initiator_stub.h"
#include "utils/xtlm_aximm_target_stub.h"
#include "utils/xtlm_aximm_initiator_stub.h"

#ifndef _INCLUDED_SIM_QDMA_
#ifndef PF_BAR_STRUCT
typedef struct PF_BAR_st {
    uint32_t pf_id;
    uint32_t bar_id;
    uint64_t remap_addr;
} PF_BAR_st_type;
typedef struct pf_bar_size : PF_BAR_st {
    uint64_t size;
} PF_BAR_size_type;
#define PF_BAR_STRUCT
#endif
#endif

/***************************************************************************************
*
* A Simple Converter which converts Remote-port's simplae_intiator_sockets<32>->b_transport()
* calls to xTLM sockets bn_transport_x() calls..
*
* This is Only specific to remote-port so not creating seperate header for it.
*
***************************************************************************************/
template <int IN_WIDTH, int OUT_WIDTH>
class rptlm2xtlm_converter : public sc_module {
  public:
    sc_core::sc_in<bool> clk;
    tlm::tlm_target_socket<IN_WIDTH> target_socket;
    xtlm::xtlm_aximm_initiator_socket wr_socket;
    xtlm::xtlm_aximm_initiator_socket rd_socket;
    rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>(sc_module_name name);//:sc_module(name)
    void registerUserExtensionHandlerCallback(
			void (*callback)(xtlm::aximm_payload*,
				const tlm::tlm_generic_payload*));

    private:
    b_transport_converter<IN_WIDTH, OUT_WIDTH> m_btrans_conv;
    xtlm::xaximm_tlm2xtlm_t<OUT_WIDTH> xtlm_bridge;
    void before_end_of_elaboration();
};

/***************************************************************************************
*   Global method, get registered with tlm2xtlm bridge
*   This function is called when tlm2xtlm bridge convert tlm payload to xtlm payload.
*
*   caller:     tlm2xtlm bridge
*   purpose:    To get master id and other parameters out of genattr_extension
*               and use master id to AxUSER PIN of xtlm payload.
*
*
***************************************************************************************/
extern void get_extensions_from_tlm(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp);

/***************************************************************************************
*   Global method, get registered with xtlm2tlm bridge
*   This function is called when xtlm2tlm bridge convert xtlm payload to tlm payload.
*
*   caller:     xtlm2tlm bridge
*   purpose:    To create and add master id and other parameters to genattr_extension.
*               Master id red from AxID PIN of xtlm payload.
*
*
***************************************************************************************/
extern void add_extensions_to_tlm(const xtlm::aximm_payload* xtlm_pay, tlm::tlm_generic_payload* gp);



////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                    //
// File:        versal_cips_v3_3_tlm.h                                                                //
//                                                                                                    //
// Description: versal_cips_v3_3_3_tlm class is a sc_module, act as intermediate layer between          //
//              xilinx_zynqmp qemu wrapper and Vivado generated systemc simulation ip wrapper.        //
//              it's basically created for supporting tlm based xilinx_zynqmp from xtlm based vivado  //
//              generated systemc wrapper. this wrapper is live only when SELECTED_SIM_MODEL is set   //
//              to tlm. it's also act as bridge between vivado wrapper and xilinx_zynqmp wrapper.     //
//              it fill the the gap between input/output ports of vivado generated wrapper to         //
//              xilinx_zynqmp wrapper signals. This wrapper is auto generated by ttcl scripts         //
//              based on IP configuration in vivado.                                                  //
//                                                                                                    //
//                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
template<int INIT_WIDTH, int TARGET_WIDTH>
class tlm_width_conversion;
class versal_cips_v3_3_3_tlm : public sc_core::sc_module   {
//Adding Non-AXI port
    public:
//Adding ports other than AXIMM/S interface ports
    sc_core::sc_out<bool> pcie1_user_clk;
    sc_core::sc_out<bool> cpm_misc_irq;
    sc_core::sc_out<bool> cpm_cor_irq;
    sc_core::sc_out<bool> cpm_uncor_irq;
    sc_core::sc_in<bool> cpm_irq0;
    sc_core::sc_in<bool> cpm_irq1;
    sc_core::sc_out<bool> pcie1_user_reset;
    sc_core::sc_out<bool> pcie1_user_lnk_up;
    sc_core::sc_in<bool> pcie1_cfg_control_err_cor_in;
    sc_core::sc_in<bool> pcie1_cfg_control_err_uncor_in;
    sc_core::sc_in<bool> pcie1_cfg_control_flr_done;
    sc_core::sc_in<sc_dt::sc_bv<16> >  pcie1_cfg_control_flr_done_function_number;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_control_flr_in_process;
    sc_core::sc_in<bool> pcie1_cfg_control_hot_reset_in;
    sc_core::sc_out<bool> pcie1_cfg_control_hot_reset_out;
    sc_core::sc_in<bool> pcie1_cfg_control_per_function_req;
    sc_core::sc_in<sc_dt::sc_bv<16> >  pcie1_cfg_control_per_function_number;
    sc_core::sc_in<bool> pcie1_cfg_control_power_state_change_ack;
    sc_core::sc_out<bool> pcie1_cfg_control_power_state_change_interrupt;
    sc_core::sc_out<bool> pcie1_cfg_interrupt_sent;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_interrupt_intx_vector;
    sc_core::sc_in<sc_dt::sc_bv<16> >  pcie1_cfg_interrupt_pending;
    sc_core::sc_in<bool> pcie1_cfg_mgmt_read_en;
    sc_core::sc_out<bool> pcie1_cfg_mgmt_read_write_done;
    sc_core::sc_in<bool> pcie1_cfg_mgmt_write_en;
    sc_core::sc_in<bool> pcie1_cfg_mgmt_debug_access;
    sc_core::sc_out<sc_dt::sc_bv<32> >  pcie1_cfg_mgmt_read_data;
    sc_core::sc_in<sc_dt::sc_bv<10> >  pcie1_cfg_mgmt_addr;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_mgmt_byte_en;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_mgmt_write_data;
    sc_core::sc_in<sc_dt::sc_bv<16> >  pcie1_cfg_mgmt_function_number;
    sc_core::sc_out<bool> pcie1_cfg_msi_fail;
    sc_core::sc_out<bool> pcie1_cfg_msi_sent;
    sc_core::sc_out<bool> pcie1_cfg_msi_mask_update;
    sc_core::sc_out<sc_dt::sc_bv<32> >  pcie1_cfg_msi_data;
    sc_core::sc_out<bool> pcie1_cfg_msi_enable;
    sc_core::sc_out<sc_dt::sc_bv<3> >  pcie1_cfg_msi_mmenable;
    sc_core::sc_in<bool> pcie1_cfg_msi_tph_present;
    sc_core::sc_in<sc_dt::sc_bv<3> >  pcie1_cfg_msi_attr;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_msi_select;
    sc_core::sc_in<sc_dt::sc_bv<2> >  pcie1_cfg_msi_tph_type;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie1_cfg_msi_tph_st_tag;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_msi_int_vector;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_msi_pending_status;
    sc_core::sc_in<sc_dt::sc_bv<16> >  pcie1_cfg_msi_function_number;
    sc_core::sc_in<bool> pcie1_cfg_msi_pending_status_data_enable;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_msi_pending_status_function_num;
    sc_core::sc_out<bool> pcie1_cfg_ext_read_received;
    sc_core::sc_out<bool> pcie1_cfg_ext_write_received;
    sc_core::sc_out<sc_dt::sc_bv<32> >  pcie1_cfg_ext_write_data;
    sc_core::sc_in<bool> pcie1_cfg_ext_read_data_valid;
    sc_core::sc_out<sc_dt::sc_bv<16> >  pcie1_cfg_ext_function_number;
    sc_core::sc_out<sc_dt::sc_bv<10> >  pcie1_cfg_ext_register_number;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_ext_read_data;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_ext_write_byte_enable;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_cfg_fc_ph;
    sc_core::sc_out<sc_dt::sc_bv<12> >  pcie1_cfg_fc_pd;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_cfg_fc_nph;
    sc_core::sc_out<sc_dt::sc_bv<12> >  pcie1_cfg_fc_npd;
    sc_core::sc_in<bool> pcie1_cfg_fc_vc_sel;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_pd_scale;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_ph_scale;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_npd_scale;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_nph_scale;
    sc_core::sc_in<sc_dt::sc_bv<3> >  pcie1_cfg_fc_sel;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_cfg_fc_cplh;
    sc_core::sc_out<sc_dt::sc_bv<12> >  pcie1_cfg_fc_cpld;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_cpld_scale;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_fc_cplh_scale;
    sc_core::sc_out<bool> pcie1_cfg_msg_tx_transmit_done;
    sc_core::sc_in<bool> pcie1_cfg_msg_tx_transmit;
    sc_core::sc_in<sc_dt::sc_bv<3> >  pcie1_cfg_msg_tx_transmit_type;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_msg_tx_transmit_data;
    sc_core::sc_out<bool> pcie1_cfg_status_err_cor_out;
    sc_core::sc_out<bool> pcie1_cfg_status_err_fatal_out;
    sc_core::sc_out<bool> pcie1_cfg_status_err_nonfatal_out;
    sc_core::sc_out<bool> pcie1_cfg_status_local_error_valid;
    sc_core::sc_out<sc_dt::sc_bv<5> >  pcie1_cfg_status_local_error_out;
    sc_core::sc_out<bool> pcie1_cfg_status_pasid_enable;
    sc_core::sc_out<sc_dt::sc_bv<48> >  pcie1_cfg_status_pasid_control;
    sc_core::sc_out<sc_dt::sc_bv<80> >  pcie1_cfg_status_max_pasid_width_control;
    sc_core::sc_out<bool> pcie1_cfg_status_pasid_exec_permission_enable;
    sc_core::sc_out<bool> pcie1_cfg_status_pasid_privil_mode_enable;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_rq_tag_vld0;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_rq_tag_vld1;
    sc_core::sc_out<bool> pcie1_cfg_status_rq_seq_num_vld0;
    sc_core::sc_out<bool> pcie1_cfg_status_rq_seq_num_vld1;
    sc_core::sc_out<bool> pcie1_cfg_status_rq_seq_num_vld2;
    sc_core::sc_out<bool> pcie1_cfg_status_rq_seq_num_vld3;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_status_rq_tag_av;
    sc_core::sc_out<sc_dt::sc_bv<20> >  pcie1_cfg_status_rq_tag0;
    sc_core::sc_out<sc_dt::sc_bv<20> >  pcie1_cfg_status_rq_tag1;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_rq_seq_num0;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_rq_seq_num1;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_rq_seq_num2;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_rq_seq_num3;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_cq_np_req_count;
    sc_core::sc_in<sc_dt::sc_bv<2> >  pcie1_cfg_status_cq_np_req;
    sc_core::sc_out<sc_dt::sc_bv<3> >  pcie1_cfg_status_function_power_state;
    sc_core::sc_out<bool> pcie1_cfg_status_atomic_requester_enable;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_cfg_status_bus_number;
    sc_core::sc_out<bool> pcie1_cfg_status_phy_link_down;
    sc_core::sc_out<bool> pcie1_cfg_status_ext_tag_enable;
    sc_core::sc_out<bool> pcie1_cfg_status_pl_status_change;
    sc_core::sc_out<bool> pcie1_cfg_status_rcb_status;
    sc_core::sc_out<sc_dt::sc_bv<6> >  pcie1_cfg_status_ltssm_state;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_max_payload;
    sc_core::sc_out<sc_dt::sc_bv<12> >  pcie1_cfg_status_tph_st_mode;
    sc_core::sc_out<sc_dt::sc_bv<3> >  pcie1_cfg_status_max_read_req;
    sc_core::sc_out<sc_dt::sc_bv<3> >  pcie1_cfg_status_current_speed;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_rx_pm_state;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_tx_pm_state;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_phy_link_status;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_status_function_status;
    sc_core::sc_out<sc_dt::sc_bv<2> >  pcie1_cfg_status_link_power_state;
    sc_core::sc_out<sc_dt::sc_bv<3> >  pcie1_cfg_status_negotiated_width;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_status_tph_requester_enable;
    sc_core::sc_out<bool> pcie1_cfg_status_10b_tag_requester_enable;
    sc_core::sc_out<bool> pcie1_cfg_status_per_function_vld;
    sc_core::sc_out<sc_dt::sc_bv<24> >  pcie1_cfg_status_per_function_out;
    sc_core::sc_out<bool> pcie1_cfg_status_wrreq_bme_vld;
    sc_core::sc_out<bool> pcie1_cfg_status_wrreq_flr_vld;
    sc_core::sc_out<bool> pcie1_cfg_status_wrreq_msi_vld;
    sc_core::sc_out<bool> pcie1_cfg_status_wrreq_vfe_vld;
    sc_core::sc_out<bool> pcie1_cfg_status_wrreq_msix_vld;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_status_wrreq_out_value;
    sc_core::sc_out<sc_dt::sc_bv<16> >  pcie1_cfg_status_wrreq_function_number;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_transmit_fc_npd_av;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_transmit_fc_nph_av;
    sc_core::sc_out<bool> pcie1_cfg_msg_recd_recd;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_cfg_msg_recd_recd_data;
    sc_core::sc_out<sc_dt::sc_bv<5> >  pcie1_cfg_msg_recd_recd_type;
    sc_core::sc_in<sc_dt::sc_bv<8> >  PCIE1_GT_grx_n;
    sc_core::sc_out<sc_dt::sc_bv<8> >  PCIE1_GT_gtx_n;
    sc_core::sc_in<sc_dt::sc_bv<8> >  PCIE1_GT_grx_p;
    sc_core::sc_out<sc_dt::sc_bv<8> >  PCIE1_GT_gtx_p;
    sc_core::sc_in<bool> gt_refclk1_clk_n;
    sc_core::sc_in<bool> gt_refclk1_clk_p;

 

        //Adding AXIMM/AXIS interfaces here
        //Adding AXIMM/AXIS interfaces here
        xtlm::xtlm_axis_target_socket*         pcie1_s_axis_rq_socket;
        xtlm::xtlm_axis_target_socket*         pcie1_s_axis_cc_socket;
        xtlm::xtlm_axis_initiator_socket*      pcie1_m_axis_rc_socket;
        xtlm::xtlm_axis_initiator_socket*      pcie1_m_axis_cq_socket;

    
        //constructor having three paramters
        // 1. module name in sc_module_name objec,
        // 2. reference to map object of name and integer value pairs
        // 3. reference to map object of name and string value pairs
        // All the model parameters (integer and string) which are configuration parameters
        // of ZynqUltraScale+ IP propogated from Vivado
        versal_cips_v3_3_3_tlm (sc_core::sc_module_name name, xsc::common_cpp::properties model_param_props);
        ~versal_cips_v3_3_3_tlm();
        SC_HAS_PROCESS(versal_cips_v3_3_3_tlm);

private:
    //zynqmp tlm wrapper provided by Edgar
    //module with interfaces of standard tlm
    //and input/output ports at signal level
    xilinx_versal_vitis* m_zynq3_tlm_model;

    // Array of Xtlm2tlm Bridges
    // Converts Xtlm transactions to tlm transactions
    // Bridge's Xtlm wr/rd target sockets binds with
    // xtlm initiator sockets of zynq_ultra_ps_e_tlm and tlm simple initiator
    // socket with xilinx_zynqmp's target socket
    // Array of size 11

    xtlm::xaximm_xtlm2tlm_t<32,32> *m_xtlm2tlm_10;

       
    rptlm2xtlm_converter<32,32 > *m_rp_bridge_pmc_npi_aie2;

    sc_core::sc_clock *fpd_cci_noc_clk;
    sc_core::sc_clock *lpd_axi_noc_clk_sig;


    void pl_ps_irq_method();

    sc_signal<bool> qemu_rst;
    void start_of_simulation();
    void rwd_tlmmodule_init();

    void enable_sim_qdma();
    //for stubbing axis interfaces of pcie.. TODO: in future they bind to sim_qdma
    sc_signal<sc_bv<16> > dummy_usr_irq_req;
    sc_signal<sc_bv<16> > dummy_usr_irq_ack;
    
    std::vector<xtlm::xtlm_axis_target_stub*>    axis_slave_stub;
    std::vector<xtlm::xtlm_axis_initiator_stub*> axis_master_stub;
    std::vector<xtlm::xtlm_aximm_target_stub*>    aximm_slave_stub;
    std::vector<xtlm::xtlm_aximm_initiator_stub*> aximm_master_stub;
    
    std::vector<PF_BAR_st_type*> bar_info;

    void before_end_of_elaboration();

    xtlm_simple_interconnect_model *xram_interconnect;
    void XRAM_connections();

};
#endif

