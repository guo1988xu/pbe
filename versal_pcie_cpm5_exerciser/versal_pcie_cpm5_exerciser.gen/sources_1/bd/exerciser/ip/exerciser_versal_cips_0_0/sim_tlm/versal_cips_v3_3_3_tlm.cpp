 
 
 
 
 
 
 
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


#include "versal_cips_v3_3_3_tlm.h"
#include "extensions/pmc_aie_extension.h"

xtlm::xtlm_aximm_target_socket* __attribute__((weak)) get_aie_npi_rd_socket();
xtlm::xtlm_aximm_target_socket* __attribute__((weak)) get_aie_npi_wr_socket();

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
void get_extensions_from_tlm(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp)
{
    if((xtlm_pay == NULL) || (gp == NULL))
        return;
    if((gp->get_command() == tlm::TLM_WRITE_COMMAND) && (xtlm_pay->get_awuser_size() > 0))
    {
  genattr_extension* ext = NULL;
  gp->get_extension(ext);
        if(ext == NULL)
            return;
  //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
  uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_awuser_ptr();
    unsigned int size  = xtlm_pay->get_awuser_size();
    *ptr = (unsigned char)val;

    }
    else if((gp->get_command() == tlm::TLM_READ_COMMAND) && (xtlm_pay->get_aruser_size() > 0))
    {
        genattr_extension* ext = NULL;
        gp->get_extension(ext);
        if(ext == NULL)
            return;
        //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
        uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_aruser_ptr();
    unsigned int size  = xtlm_pay->get_aruser_size();
    *ptr = (unsigned char)val;
  }
}
void get_extensions_from_tlm_pmc_noc(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp)
{
    if((xtlm_pay == NULL) || (gp == NULL))
        return;
    if((gp->get_command() == tlm::TLM_WRITE_COMMAND) && (xtlm_pay->get_awuser_size() > 0))
    {
  genattr_extension* ext = NULL;
  gp->get_extension(ext);
        if(ext == NULL)
            return;
  //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
  uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_awuser_ptr();
    unsigned int size  = xtlm_pay->get_awuser_size();
    *ptr = (unsigned char)val;

    }
    else if((gp->get_command() == tlm::TLM_READ_COMMAND) && (xtlm_pay->get_aruser_size() > 0))
    {
        genattr_extension* ext = NULL;
        gp->get_extension(ext);
        if(ext == NULL)
            return;
        //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
        uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_aruser_ptr();
    unsigned int size  = xtlm_pay->get_aruser_size();
    *ptr = (unsigned char)val;
  }
  if((gp->get_address() >= 0x20000000000) && (gp->get_address() <= 0x200FFFFFFFF)) {
        xsc::extension::pmc_aie_extension *m_pmc_aie_extension = new xsc::extension::pmc_aie_extension;
        xtlm_pay->set_extension(m_pmc_aie_extension);
  }
}

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
void add_extensions_to_tlm(const xtlm::aximm_payload* xtlm_pay, tlm::tlm_generic_payload* gp)
{
    if(gp == NULL)
        return;
  uint8_t val = 0;
    if((gp->get_command() != tlm::TLM_WRITE_COMMAND) && (gp->get_command() != tlm::TLM_READ_COMMAND))
        return;
  //portion of master ID bits(master_id[5:0]) are derived from the AXI ID(AWID/ARID). (refere Zynq UltraScale+ TRM page.no:414,415)
  val = ((uint8_t)(xtlm_pay->get_axi_id())) && 0x3F;
  genattr_extension* ext = new genattr_extension;
  ext->set_master_id(val);
  gp->set_extension(ext);
  gp->set_streaming_width(gp->get_data_length());
  if(gp->get_command() != tlm::TLM_WRITE_COMMAND)
  {
    gp->set_byte_enable_length(0);
    gp->set_byte_enable_ptr(0);
  }
}

/*
template<int INIT_WIDTH, int TARGET_WIDTH>
class tlm_width_conversion :public sc_module {
  public:
    tlm_utils::simple_initiator_socket<tlm_width_conversion<INIT_WIDTH,TARGET_WIDTH>, INIT_WIDTH> initsock;
    tlm_utils::simple_target_socket<tlm_width_conversion<INIT_WIDTH,TARGET_WIDTH>, TARGET_WIDTH> tarsock;
    tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>(sc_module_name name):sc_module(name){
        tarsock.register_b_transport(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::b_transport);
        tarsock.register_get_direct_mem_ptr(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::get_direct_mem_ptr);
        tarsock.register_transport_dbg(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::transport_dbg);
    }
    private:
    void b_transport(tlm::tlm_generic_payload& trans, sc_core::sc_time& delay){
        initsock->b_transport(trans, delay);
    }
    unsigned int transport_dbg(tlm::tlm_generic_payload& trans){
        return initsock->transport_dbg(trans);
    }
    bool get_direct_mem_ptr(tlm::tlm_generic_payload& trans, tlm::tlm_dmi& dmi_data){
        return initsock->get_direct_mem_ptr(trans, dmi_data);
    }
};
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                              //
// File:            versal_cips_v3_3_tlm.cpp                                                                         //
//                                                                                                              //
// Description:     versal_cips_v3_3_3_tlm class is a sc_module, act as intermediate layer between                     //
//                  xilinx_zynqmp qemu wrapper and Vivado generated systemc simulation ip wrapper.              //
//                  it's basically created for supporting tlm based xilinx_zynqmp from xtlm based vivado        //
//                  generated systemc wrapper. this wrapper is live only when SELECTED_SIM_MODEL is set         //
//                  to tlm. it's also act as bridge between vivado wrapper and xilinx_zynqmp wrapper.           //
//                  it fill the the gap between input/output ports of vivado generated wrapper to               //
//                  xilinx_zynqmp wrapper signals. This wrapper is auto generated by ttcl scripts               //
//                  based on IP configuration in vivado.                                                        //
//                                                                                                              //
//                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//TODO update clk with original freq from PARAM
//constructor having three paramters
// 1. module name in sc_module_name objec,
// 2. reference to map object of name and integer value pairs
// 3. reference to map object of name and string value pairs
// All the model parameters (integer and string) which are configuration parameters
// of ZynqUltraScale+ IP propogated from Vivado
versal_cips_v3_3_3_tlm :: versal_cips_v3_3_3_tlm (sc_core::sc_module_name name,
  xsc::common_cpp::properties model_param_props) : sc_module(name) //registering module name with parent
    ,pcie1_user_clk("pcie1_user_clk")
    ,cpm_misc_irq("cpm_misc_irq")
    ,cpm_cor_irq("cpm_cor_irq")
    ,cpm_uncor_irq("cpm_uncor_irq")
    ,cpm_irq0("cpm_irq0")
    ,cpm_irq1("cpm_irq1")
    ,pcie1_user_reset("pcie1_user_reset")
    ,pcie1_user_lnk_up("pcie1_user_lnk_up")
    ,pcie1_cfg_control_err_cor_in("pcie1_cfg_control_err_cor_in")
    ,pcie1_cfg_control_err_uncor_in("pcie1_cfg_control_err_uncor_in")
    ,pcie1_cfg_control_flr_done("pcie1_cfg_control_flr_done")
    ,pcie1_cfg_control_flr_done_function_number("pcie1_cfg_control_flr_done_function_number")
    ,pcie1_cfg_control_flr_in_process("pcie1_cfg_control_flr_in_process")
    ,pcie1_cfg_control_hot_reset_in("pcie1_cfg_control_hot_reset_in")
    ,pcie1_cfg_control_hot_reset_out("pcie1_cfg_control_hot_reset_out")
    ,pcie1_cfg_control_per_function_req("pcie1_cfg_control_per_function_req")
    ,pcie1_cfg_control_per_function_number("pcie1_cfg_control_per_function_number")
    ,pcie1_cfg_control_power_state_change_ack("pcie1_cfg_control_power_state_change_ack")
    ,pcie1_cfg_control_power_state_change_interrupt("pcie1_cfg_control_power_state_change_interrupt")
    ,pcie1_cfg_interrupt_sent("pcie1_cfg_interrupt_sent")
    ,pcie1_cfg_interrupt_intx_vector("pcie1_cfg_interrupt_intx_vector")
    ,pcie1_cfg_interrupt_pending("pcie1_cfg_interrupt_pending")
    ,pcie1_cfg_mgmt_read_en("pcie1_cfg_mgmt_read_en")
    ,pcie1_cfg_mgmt_read_write_done("pcie1_cfg_mgmt_read_write_done")
    ,pcie1_cfg_mgmt_write_en("pcie1_cfg_mgmt_write_en")
    ,pcie1_cfg_mgmt_debug_access("pcie1_cfg_mgmt_debug_access")
    ,pcie1_cfg_mgmt_read_data("pcie1_cfg_mgmt_read_data")
    ,pcie1_cfg_mgmt_addr("pcie1_cfg_mgmt_addr")
    ,pcie1_cfg_mgmt_byte_en("pcie1_cfg_mgmt_byte_en")
    ,pcie1_cfg_mgmt_write_data("pcie1_cfg_mgmt_write_data")
    ,pcie1_cfg_mgmt_function_number("pcie1_cfg_mgmt_function_number")
    ,pcie1_cfg_msi_fail("pcie1_cfg_msi_fail")
    ,pcie1_cfg_msi_sent("pcie1_cfg_msi_sent")
    ,pcie1_cfg_msi_mask_update("pcie1_cfg_msi_mask_update")
    ,pcie1_cfg_msi_data("pcie1_cfg_msi_data")
    ,pcie1_cfg_msi_enable("pcie1_cfg_msi_enable")
    ,pcie1_cfg_msi_mmenable("pcie1_cfg_msi_mmenable")
    ,pcie1_cfg_msi_tph_present("pcie1_cfg_msi_tph_present")
    ,pcie1_cfg_msi_attr("pcie1_cfg_msi_attr")
    ,pcie1_cfg_msi_select("pcie1_cfg_msi_select")
    ,pcie1_cfg_msi_tph_type("pcie1_cfg_msi_tph_type")
    ,pcie1_cfg_msi_tph_st_tag("pcie1_cfg_msi_tph_st_tag")
    ,pcie1_cfg_msi_int_vector("pcie1_cfg_msi_int_vector")
    ,pcie1_cfg_msi_pending_status("pcie1_cfg_msi_pending_status")
    ,pcie1_cfg_msi_function_number("pcie1_cfg_msi_function_number")
    ,pcie1_cfg_msi_pending_status_data_enable("pcie1_cfg_msi_pending_status_data_enable")
    ,pcie1_cfg_msi_pending_status_function_num("pcie1_cfg_msi_pending_status_function_num")
    ,pcie1_cfg_ext_read_received("pcie1_cfg_ext_read_received")
    ,pcie1_cfg_ext_write_received("pcie1_cfg_ext_write_received")
    ,pcie1_cfg_ext_write_data("pcie1_cfg_ext_write_data")
    ,pcie1_cfg_ext_read_data_valid("pcie1_cfg_ext_read_data_valid")
    ,pcie1_cfg_ext_function_number("pcie1_cfg_ext_function_number")
    ,pcie1_cfg_ext_register_number("pcie1_cfg_ext_register_number")
    ,pcie1_cfg_ext_read_data("pcie1_cfg_ext_read_data")
    ,pcie1_cfg_ext_write_byte_enable("pcie1_cfg_ext_write_byte_enable")
    ,pcie1_cfg_fc_ph("pcie1_cfg_fc_ph")
    ,pcie1_cfg_fc_pd("pcie1_cfg_fc_pd")
    ,pcie1_cfg_fc_nph("pcie1_cfg_fc_nph")
    ,pcie1_cfg_fc_npd("pcie1_cfg_fc_npd")
    ,pcie1_cfg_fc_vc_sel("pcie1_cfg_fc_vc_sel")
    ,pcie1_cfg_fc_pd_scale("pcie1_cfg_fc_pd_scale")
    ,pcie1_cfg_fc_ph_scale("pcie1_cfg_fc_ph_scale")
    ,pcie1_cfg_fc_npd_scale("pcie1_cfg_fc_npd_scale")
    ,pcie1_cfg_fc_nph_scale("pcie1_cfg_fc_nph_scale")
    ,pcie1_cfg_fc_sel("pcie1_cfg_fc_sel")
    ,pcie1_cfg_fc_cplh("pcie1_cfg_fc_cplh")
    ,pcie1_cfg_fc_cpld("pcie1_cfg_fc_cpld")
    ,pcie1_cfg_fc_cpld_scale("pcie1_cfg_fc_cpld_scale")
    ,pcie1_cfg_fc_cplh_scale("pcie1_cfg_fc_cplh_scale")
    ,pcie1_cfg_msg_tx_transmit_done("pcie1_cfg_msg_tx_transmit_done")
    ,pcie1_cfg_msg_tx_transmit("pcie1_cfg_msg_tx_transmit")
    ,pcie1_cfg_msg_tx_transmit_type("pcie1_cfg_msg_tx_transmit_type")
    ,pcie1_cfg_msg_tx_transmit_data("pcie1_cfg_msg_tx_transmit_data")
    ,pcie1_cfg_status_err_cor_out("pcie1_cfg_status_err_cor_out")
    ,pcie1_cfg_status_err_fatal_out("pcie1_cfg_status_err_fatal_out")
    ,pcie1_cfg_status_err_nonfatal_out("pcie1_cfg_status_err_nonfatal_out")
    ,pcie1_cfg_status_local_error_valid("pcie1_cfg_status_local_error_valid")
    ,pcie1_cfg_status_local_error_out("pcie1_cfg_status_local_error_out")
    ,pcie1_cfg_status_pasid_enable("pcie1_cfg_status_pasid_enable")
    ,pcie1_cfg_status_pasid_control("pcie1_cfg_status_pasid_control")
    ,pcie1_cfg_status_max_pasid_width_control("pcie1_cfg_status_max_pasid_width_control")
    ,pcie1_cfg_status_pasid_exec_permission_enable("pcie1_cfg_status_pasid_exec_permission_enable")
    ,pcie1_cfg_status_pasid_privil_mode_enable("pcie1_cfg_status_pasid_privil_mode_enable")
    ,pcie1_cfg_status_rq_tag_vld0("pcie1_cfg_status_rq_tag_vld0")
    ,pcie1_cfg_status_rq_tag_vld1("pcie1_cfg_status_rq_tag_vld1")
    ,pcie1_cfg_status_rq_seq_num_vld0("pcie1_cfg_status_rq_seq_num_vld0")
    ,pcie1_cfg_status_rq_seq_num_vld1("pcie1_cfg_status_rq_seq_num_vld1")
    ,pcie1_cfg_status_rq_seq_num_vld2("pcie1_cfg_status_rq_seq_num_vld2")
    ,pcie1_cfg_status_rq_seq_num_vld3("pcie1_cfg_status_rq_seq_num_vld3")
    ,pcie1_cfg_status_rq_tag_av("pcie1_cfg_status_rq_tag_av")
    ,pcie1_cfg_status_rq_tag0("pcie1_cfg_status_rq_tag0")
    ,pcie1_cfg_status_rq_tag1("pcie1_cfg_status_rq_tag1")
    ,pcie1_cfg_status_rq_seq_num0("pcie1_cfg_status_rq_seq_num0")
    ,pcie1_cfg_status_rq_seq_num1("pcie1_cfg_status_rq_seq_num1")
    ,pcie1_cfg_status_rq_seq_num2("pcie1_cfg_status_rq_seq_num2")
    ,pcie1_cfg_status_rq_seq_num3("pcie1_cfg_status_rq_seq_num3")
    ,pcie1_cfg_status_cq_np_req_count("pcie1_cfg_status_cq_np_req_count")
    ,pcie1_cfg_status_cq_np_req("pcie1_cfg_status_cq_np_req")
    ,pcie1_cfg_status_function_power_state("pcie1_cfg_status_function_power_state")
    ,pcie1_cfg_status_atomic_requester_enable("pcie1_cfg_status_atomic_requester_enable")
    ,pcie1_cfg_status_bus_number("pcie1_cfg_status_bus_number")
    ,pcie1_cfg_status_phy_link_down("pcie1_cfg_status_phy_link_down")
    ,pcie1_cfg_status_ext_tag_enable("pcie1_cfg_status_ext_tag_enable")
    ,pcie1_cfg_status_pl_status_change("pcie1_cfg_status_pl_status_change")
    ,pcie1_cfg_status_rcb_status("pcie1_cfg_status_rcb_status")
    ,pcie1_cfg_status_ltssm_state("pcie1_cfg_status_ltssm_state")
    ,pcie1_cfg_status_max_payload("pcie1_cfg_status_max_payload")
    ,pcie1_cfg_status_tph_st_mode("pcie1_cfg_status_tph_st_mode")
    ,pcie1_cfg_status_max_read_req("pcie1_cfg_status_max_read_req")
    ,pcie1_cfg_status_current_speed("pcie1_cfg_status_current_speed")
    ,pcie1_cfg_status_rx_pm_state("pcie1_cfg_status_rx_pm_state")
    ,pcie1_cfg_status_tx_pm_state("pcie1_cfg_status_tx_pm_state")
    ,pcie1_cfg_status_phy_link_status("pcie1_cfg_status_phy_link_status")
    ,pcie1_cfg_status_function_status("pcie1_cfg_status_function_status")
    ,pcie1_cfg_status_link_power_state("pcie1_cfg_status_link_power_state")
    ,pcie1_cfg_status_negotiated_width("pcie1_cfg_status_negotiated_width")
    ,pcie1_cfg_status_tph_requester_enable("pcie1_cfg_status_tph_requester_enable")
    ,pcie1_cfg_status_10b_tag_requester_enable("pcie1_cfg_status_10b_tag_requester_enable")
    ,pcie1_cfg_status_per_function_vld("pcie1_cfg_status_per_function_vld")
    ,pcie1_cfg_status_per_function_out("pcie1_cfg_status_per_function_out")
    ,pcie1_cfg_status_wrreq_bme_vld("pcie1_cfg_status_wrreq_bme_vld")
    ,pcie1_cfg_status_wrreq_flr_vld("pcie1_cfg_status_wrreq_flr_vld")
    ,pcie1_cfg_status_wrreq_msi_vld("pcie1_cfg_status_wrreq_msi_vld")
    ,pcie1_cfg_status_wrreq_vfe_vld("pcie1_cfg_status_wrreq_vfe_vld")
    ,pcie1_cfg_status_wrreq_msix_vld("pcie1_cfg_status_wrreq_msix_vld")
    ,pcie1_cfg_status_wrreq_out_value("pcie1_cfg_status_wrreq_out_value")
    ,pcie1_cfg_status_wrreq_function_number("pcie1_cfg_status_wrreq_function_number")
    ,pcie1_transmit_fc_npd_av("pcie1_transmit_fc_npd_av")
    ,pcie1_transmit_fc_nph_av("pcie1_transmit_fc_nph_av")
    ,pcie1_cfg_msg_recd_recd("pcie1_cfg_msg_recd_recd")
    ,pcie1_cfg_msg_recd_recd_data("pcie1_cfg_msg_recd_recd_data")
    ,pcie1_cfg_msg_recd_recd_type("pcie1_cfg_msg_recd_recd_type")
    ,PCIE1_GT_grx_n("PCIE1_GT_grx_n")
    ,PCIE1_GT_gtx_n("PCIE1_GT_gtx_n")
    ,PCIE1_GT_grx_p("PCIE1_GT_grx_p")
    ,PCIE1_GT_gtx_p("PCIE1_GT_gtx_p")
    ,gt_refclk1_clk_n("gt_refclk1_clk_n")
    ,gt_refclk1_clk_p("gt_refclk1_clk_p")
    ,dummy_usr_irq_req("dummy_usr_irq_req")
    ,dummy_usr_irq_ack("dummy_usr_irq_ack")
{
    fpd_cci_noc_clk = NULL;
    lpd_axi_noc_clk_sig = NULL;
  //  Start versal_cips_v3_3_3_tlm()
  //creating instances of xtlm slave sockets
        //Adding AXIMM/AXIS interfaces here
pcie1_s_axis_rq_socket = new xtlm::xtlm_axis_target_socket("pcie1_s_axis_rq_socket",32);
       axis_slave_stub.push_back(new xtlm::xtlm_axis_target_stub("pcie1_s_axis_rq_stub", 32));                
pcie1_s_axis_rq_socket->bind(axis_slave_stub.back()->target_socket);        
pcie1_s_axis_cc_socket = new xtlm::xtlm_axis_target_socket("pcie1_s_axis_cc_socket",32);
       axis_slave_stub.push_back(new xtlm::xtlm_axis_target_stub("pcie1_s_axis_cc_stub", 32));                
pcie1_s_axis_cc_socket->bind(axis_slave_stub.back()->target_socket);        
pcie1_m_axis_rc_socket = new xtlm::xtlm_axis_initiator_socket("pcie1_m_axis_rc_socket",32);
        axis_master_stub.push_back(new xtlm::xtlm_axis_initiator_stub("pcie1_m_axis_rc_stub", 32));                
        axis_master_stub.back()->initiator_socket(*pcie1_m_axis_rc_socket); 
pcie1_m_axis_cq_socket = new xtlm::xtlm_axis_initiator_socket("pcie1_m_axis_cq_socket",32);
        axis_master_stub.push_back(new xtlm::xtlm_axis_initiator_stub("pcie1_m_axis_cq_stub", 32));                
        axis_master_stub.back()->initiator_socket(*pcie1_m_axis_cq_socket); 
  
        //Adding AXIMM/AXIS interfaces here for XRAM
  char* tcpip_addr = getenv("COSIM_MACHINE_TCPIP_ADDRESS");
  char* unix_addr = getenv("COSIM_MACHINE_PATH");
  char* skt_name;
  if (unix_addr != NULL){
      skt_name = strdup(unix_addr);
  } else if (tcpip_addr != NULL) {
      skt_name = strdup(tcpip_addr);
  } else {
      tcpip_addr = "NO_IP_ADDRESS";
      skt_name = strdup(tcpip_addr);
  }
  m_zynq3_tlm_model = new xilinx_versal_vitis("xilinx_versal_vitis",skt_name);

  //quantumkeeper value update
  char* qk_value = getenv("TLM_QUANTUM_IN_PS");
  if(qk_value != NULL) {
      double value = atof(qk_value);
      m_zynq3_tlm_model->m_qk.set_global_quantum(sc_core::sc_time(value,SC_PS));
  } else {
      m_zynq3_tlm_model->m_qk.set_global_quantum(sc_core::sc_time(20,SC_NS));
  }
  m_zynq3_tlm_model->m_qk.reset();



  XRAM_connections();


  SC_METHOD(pl_ps_irq_method);
  dont_initialize();





  m_zynq3_tlm_model->rst(qemu_rst);

  //  End versal_cips_v3_3_3_tlm()
}

versal_cips_v3_3_3_tlm :: ~versal_cips_v3_3_3_tlm() {
  //deleting dynamically created objects
  if(fpd_cci_noc_clk != NULL) {
      delete fpd_cci_noc_clk;
      fpd_cci_noc_clk = NULL;
  }
  if(lpd_axi_noc_clk_sig != NULL) {
      delete lpd_axi_noc_clk_sig;
      lpd_axi_noc_clk_sig = NULL;
  }
    delete pcie1_s_axis_rq_socket;
pcie1_s_axis_rq_socket = NULL;
    delete pcie1_s_axis_cc_socket;
pcie1_s_axis_cc_socket = NULL;
    delete pcie1_m_axis_rc_socket;
pcie1_m_axis_rc_socket = NULL;
    delete pcie1_m_axis_cq_socket;
pcie1_m_axis_cq_socket = NULL;

    if(m_xtlm2tlm_10 != 0) {
        delete m_xtlm2tlm_10;
    }

  //deleting the thread object, RdWrTCPSocket and rwd_tlmmodel
}



void versal_cips_v3_3_3_tlm :: pl_ps_irq_method() {
}

void versal_cips_v3_3_3_tlm :: start_of_simulation()
{
  qemu_rst.write(false);
  char* tcpip_addr = getenv("COSIM_MACHINE_TCPIP_ADDRESS");
  char* unix_addr = getenv("COSIM_MACHINE_PATH");
  if(tcpip_addr == NULL && unix_addr == NULL) {
      std::cerr << "\n\n############################################################## \n#\n"
                << " #  You have set SELECTED_SIM_MODLE=TLM for Versal CIPS block.\n" 
                << " #  Since this requires software content, the QEMU based simulation in Vivado will not generate any transactions on master interfaces and will also not respond to any transactions on slave interfaces.\n" 
                << " #  To use SW driven simulation, create use the Vitis flow\n" 
                << "\n#\n##############################################################\n\n";
      //exit(0);
  }
}
void versal_cips_v3_3_3_tlm :: rwd_tlmmodule_init() {
}

void versal_cips_v3_3_3_tlm :: enable_sim_qdma() {
}
template <int IN_WIDTH, int OUT_WIDTH>
rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::rptlm2xtlm_converter(sc_module_name name):sc_module(name)
  ,target_socket("target_socket")
  ,wr_socket("init_wr_socket",OUT_WIDTH)
  ,rd_socket("init_rd_socket",OUT_WIDTH)
  ,m_btrans_conv("b_transport_converter")
  ,xtlm_bridge("tlm2xtlmbridge")
{
  target_socket.bind(m_btrans_conv.target_socket);
  m_btrans_conv.initiator_socket.bind(xtlm_bridge.target_socket);
  xtlm_bridge.rd_socket->bind(rd_socket);
  xtlm_bridge.wr_socket->bind(wr_socket);
}
template <int IN_WIDTH, int OUT_WIDTH>
void rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::registerUserExtensionHandlerCallback(
  void (*callback)(xtlm::aximm_payload*,
    const tlm::tlm_generic_payload*)) {
  xtlm_bridge.registerUserExtensionHandlerCallback(callback);
}
template <int IN_WIDTH, int OUT_WIDTH>
void rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::before_end_of_elaboration() {
  m_btrans_conv.clk(clk);
}

void versal_cips_v3_3_3_tlm :: before_end_of_elaboration() {
    {
        m_rp_bridge_pmc_npi_aie2 = NULL;
    }
    m_zynq3_tlm_model->tie_off();
}

void versal_cips_v3_3_3_tlm :: XRAM_connections() {

  unsigned int intf_count = 0;

if(intf_count > 0) {
  unsigned int count = 0;
  std::stringstream ss;
  ss << intf_count;
  std::string str = ss.str();

  std::string intr_addr_width[4] = {
    "C_S00_AXI_ADDR_WIDTH",    
    "C_S01_AXI_ADDR_WIDTH",    
    "C_S02_AXI_ADDR_WIDTH",    
    "C_S03_AXI_ADDR_WIDTH" };    

  std::string intr_datawidth[4] = {
    "C_S00_AXI_DATA_WIDTH",
    "C_S01_AXI_DATA_WIDTH",
    "C_S02_AXI_DATA_WIDTH",
    "C_S03_AXI_DATA_WIDTH" };

  std::string intf_connectivity[4] = {
    "C_M00_S00_CONNECTIVITY",
    "C_M00_S01_CONNECTIVITY",
    "C_M00_S02_CONNECTIVITY",
    "C_M00_S03_CONNECTIVITY" };

  xsc::common_cpp::properties imp_prop;
  imp_prop.addLong("C_NUM_SI",str.c_str());
  imp_prop.addLong("C_NUM_MI","1");
  imp_prop.addLong("C_ADDR_RANGES","1");

  std::string width;

  imp_prop.addLong("C_M00_AXI_DATA_WIDTH","32");
  imp_prop.addLong("C_M00_AXI_ADDR_WIDTH","64");
  imp_prop.addLong("C_M00_A00_BASE_ADDRESS","0x0");
  imp_prop.addLong("C_M00_A00_ADDR_RANGE","0xFFFFFFFFFFFFFFFF");

  xram_interconnect = new xtlm_simple_interconnect_model("XRAM_interconnect",imp_prop);
  count =0;
  
  m_xtlm2tlm_10 = new xtlm::xaximm_xtlm2tlm_t<32,32>("XRAM_xtlm2tlm_bg");
  xram_interconnect->initiator_wr_sockets[0]->bind(*m_xtlm2tlm_10->wr_socket);
  xram_interconnect->initiator_rd_sockets[0]->bind(*m_xtlm2tlm_10->rd_socket);
  m_zynq3_tlm_model->s_axi_xram->bind(m_xtlm2tlm_10->initiator_socket);

} else {
   xram_interconnect = 0;
   m_xtlm2tlm_10 = 0;
}

}


