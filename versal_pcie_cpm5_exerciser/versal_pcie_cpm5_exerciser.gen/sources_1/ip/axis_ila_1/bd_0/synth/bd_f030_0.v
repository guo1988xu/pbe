//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f030_0.bd
//Design : bd_f030_0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f030_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f030_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=31,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axis_ila_1.hwdef" *) 
module bd_f030_0
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe13,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN bd_f030_0_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE0, LAYERED_METADATA undef" *) input [3:0]probe0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE1, LAYERED_METADATA undef" *) input [0:0]probe1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE10, LAYERED_METADATA undef" *) input [31:0]probe10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE11, LAYERED_METADATA undef" *) input [31:0]probe11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE12, LAYERED_METADATA undef" *) input [0:0]probe12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE13, LAYERED_METADATA undef" *) input [31:0]probe13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE2, LAYERED_METADATA undef" *) input [0:0]probe2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE3, LAYERED_METADATA undef" *) input [2:0]probe3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE4, LAYERED_METADATA undef" *) input [31:0]probe4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE5, LAYERED_METADATA undef" *) input [0:0]probe5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE6, LAYERED_METADATA undef" *) input [0:0]probe6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE7, LAYERED_METADATA undef" *) input [0:0]probe7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE8, LAYERED_METADATA undef" *) input [2:0]probe8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.PROBE9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.PROBE9, LAYERED_METADATA undef" *) input [31:0]probe9;

  wire [9:0]axis_cap_ctrl_addr;
  wire axis_cap_ctrl_full;
  wire axis_cap_ctrl_full_iclk;
  wire [9:0]axis_cap_ctrl_hwcnt;
  wire [9:0]axis_cap_ctrl_lwcnt;
  wire [9:0]axis_cap_ctrl_scnt;
  wire [2:0]axis_cap_ctrl_trig_state;
  wire [2:0]axis_cap_ctrl_trig_state_iclk;
  wire axis_cap_ctrl_trigger_o;
  wire axis_cap_ctrl_write_en;
  wire axis_dbg_stub_aclk_int;
  wire axis_dbg_stub_aresetn_int;
  wire [31:0]axis_dbg_stub_s_axis_int_TDATA;
  wire axis_dbg_stub_s_axis_int_TLAST;
  wire axis_dbg_stub_s_axis_int_TREADY;
  wire axis_dbg_stub_s_axis_int_TVALID;
  wire axis_dbg_sync_2_dest_out;
  wire [9:0]axis_dbg_sync_3_dest_out_bus;
  wire [9:0]axis_dbg_sync_4_dest_out_bus;
  wire [2:0]axis_dbg_sync_5_dest_out_bus;
  wire axis_dbg_sync_6_dest_arst;
  wire [31:0]axis_ila_intf_M_AXIS_TDATA;
  wire axis_ila_intf_M_AXIS_TLAST;
  wire axis_ila_intf_M_AXIS_TREADY;
  wire axis_ila_intf_M_AXIS_TVALID;
  wire axis_ila_intf_adv_trig_config_o;
  wire [9:0]axis_ila_intf_app_spec_o;
  wire axis_ila_intf_aresetn_out;
  wire axis_ila_intf_arm_o;
  wire [9:0]axis_ila_intf_bit_sel_o;
  wire [1:0]axis_ila_intf_capture_mode_o;
  wire axis_ila_intf_cfg_data_o;
  wire axis_ila_intf_cfg_en_o;
  wire [2:0]axis_ila_intf_ct_state_sel_o;
  wire axis_ila_intf_halt_o;
  wire [9:0]axis_ila_intf_max_bit_o;
  wire axis_ila_intf_read_addr_reset_o;
  wire axis_ila_intf_read_data_en_o;
  wire axis_ila_intf_scnt_max_eq_1_o;
  wire [9:0]axis_ila_intf_trace_rd_addr_o;
  wire axis_ila_intf_trig_pos_eq_0_o;
  wire axis_ila_intf_trig_pos_eq_scnt_max_o;
  wire axis_ila_intf_wr_cc_config_o;
  wire axis_ila_intf_wr_mu_config_o;
  wire axis_ila_intf_wr_tc_config_o;
  wire [3:0]axis_ila_pp_probe0_out;
  wire [31:0]axis_ila_pp_probe10_out;
  wire [31:0]axis_ila_pp_probe11_out;
  wire [0:0]axis_ila_pp_probe12_out;
  wire [31:0]axis_ila_pp_probe13_out;
  wire [0:0]axis_ila_pp_probe1_out;
  wire [0:0]axis_ila_pp_probe2_out;
  wire [2:0]axis_ila_pp_probe3_out;
  wire [31:0]axis_ila_pp_probe4_out;
  wire [0:0]axis_ila_pp_probe5_out;
  wire [0:0]axis_ila_pp_probe6_out;
  wire [0:0]axis_ila_pp_probe7_out;
  wire [2:0]axis_ila_pp_probe8_out;
  wire [31:0]axis_ila_pp_probe9_out;
  wire axis_itct_cc_cfg_din0;
  wire axis_itct_cc_cfg_din1;
  wire axis_itct_cc_cfg_din2;
  wire axis_itct_cc_cfg_din3;
  wire axis_itct_cc_cfg_en0;
  wire axis_itct_cc_cfg_en1;
  wire axis_itct_cc_cfg_en2;
  wire axis_itct_cc_cfg_en3;
  wire axis_itct_cfg_din0;
  wire axis_itct_cfg_din1;
  wire axis_itct_cfg_din10;
  wire axis_itct_cfg_din11;
  wire axis_itct_cfg_din12;
  wire axis_itct_cfg_din13;
  wire axis_itct_cfg_din2;
  wire axis_itct_cfg_din3;
  wire axis_itct_cfg_din4;
  wire axis_itct_cfg_din5;
  wire axis_itct_cfg_din6;
  wire axis_itct_cfg_din7;
  wire axis_itct_cfg_din8;
  wire axis_itct_cfg_din9;
  wire axis_itct_cfg_en0;
  wire axis_itct_cfg_en1;
  wire axis_itct_cfg_en10;
  wire axis_itct_cfg_en11;
  wire axis_itct_cfg_en12;
  wire axis_itct_cfg_en13;
  wire axis_itct_cfg_en2;
  wire axis_itct_cfg_en3;
  wire axis_itct_cfg_en4;
  wire axis_itct_cfg_en5;
  wire axis_itct_cfg_en6;
  wire axis_itct_cfg_en7;
  wire axis_itct_cfg_en8;
  wire axis_itct_cfg_en9;
  wire axis_itct_tc0_cfg_din;
  wire axis_itct_tc0_cfg_en;
  wire [13:0]axis_itct_trigger_din;
  wire axis_mem_data_out_en_o;
  wire [31:0]axis_mem_data_word_out_o;
  wire axis_mem_reset_out_ack_o;
  wire [9:0]axis_mem_trace_rd_addr_o;
  wire [12:0]axis_mem_trace_rd_wrd_cnt_o;
  wire axis_mu0_0_cfg_dout;
  wire axis_mu0_0_match_out;
  wire axis_mu10_0_cfg_dout;
  wire axis_mu10_0_match_out;
  wire axis_mu11_0_cfg_dout;
  wire axis_mu11_0_match_out;
  wire axis_mu12_0_cfg_dout;
  wire axis_mu12_0_match_out;
  wire axis_mu13_0_cfg_dout;
  wire axis_mu13_0_match_out;
  wire axis_mu1_0_cfg_dout;
  wire axis_mu1_0_match_out;
  wire axis_mu2_0_cfg_dout;
  wire axis_mu2_0_match_out;
  wire axis_mu3_0_cfg_dout;
  wire axis_mu3_0_match_out;
  wire axis_mu4_0_cfg_dout;
  wire axis_mu4_0_match_out;
  wire axis_mu5_0_cfg_dout;
  wire axis_mu5_0_match_out;
  wire axis_mu6_0_cfg_dout;
  wire axis_mu6_0_match_out;
  wire axis_mu7_0_cfg_dout;
  wire axis_mu7_0_match_out;
  wire axis_mu8_0_cfg_dout;
  wire axis_mu8_0_match_out;
  wire axis_mu9_0_cfg_dout;
  wire axis_mu9_0_match_out;
  wire cc_axis_mu0_cfg_dout;
  wire cc_axis_mu0_match_out;
  wire cc_axis_mu1_cfg_dout;
  wire cc_axis_mu1_match_out;
  wire cc_axis_mu2_cfg_dout;
  wire cc_axis_mu2_match_out;
  wire cc_axis_mu3_cfg_dout;
  wire cc_axis_mu3_match_out;
  wire clk_1;
  wire [3:0]probe0_1;
  wire [31:0]probe10_1;
  wire [31:0]probe11_1;
  wire [0:0]probe12_1;
  wire [31:0]probe13_1;
  wire [0:0]probe1_1;
  wire [0:0]probe2_1;
  wire [2:0]probe3_1;
  wire [31:0]probe4_1;
  wire [0:0]probe5_1;
  wire [0:0]probe6_1;
  wire [0:0]probe7_1;
  wire [2:0]probe8_1;
  wire [31:0]probe9_1;
  wire tc_axis_mu0_cfg_dout;
  wire tc_axis_mu0_match_out;
  wire [0:0]xlconstant_dout;

  assign clk_1 = clk;
  assign probe0_1 = probe0[3:0];
  assign probe10_1 = probe10[31:0];
  assign probe11_1 = probe11[31:0];
  assign probe12_1 = probe12[0];
  assign probe13_1 = probe13[31:0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[2:0];
  assign probe4_1 = probe4[31:0];
  assign probe5_1 = probe5[0];
  assign probe6_1 = probe6[0];
  assign probe7_1 = probe7[0];
  assign probe8_1 = probe8[2:0];
  assign probe9_1 = probe9[31:0];
  bd_f030_0_axis_cap_ctrl_0 axis_cap_ctrl
       (.addr(axis_cap_ctrl_addr),
        .addr_sel(axis_ila_intf_bit_sel_o),
        .aresetn(axis_ila_intf_aresetn_out),
        .armed(axis_ila_intf_arm_o),
        .capture_fsm_i(xlconstant_dout),
        .capture_mode_i(axis_ila_intf_capture_mode_o),
        .capture_sqc_in(xlconstant_dout),
        .en_adv_trigger_i(axis_ila_intf_adv_trig_config_o),
        .full(axis_cap_ctrl_full),
        .full_iclk(axis_cap_ctrl_full_iclk),
        .halt(axis_ila_intf_halt_o),
        .hwcnt(axis_cap_ctrl_hwcnt),
        .hwcnt_eq_wcnt_max(cc_axis_mu2_match_out),
        .ila_clk(clk_1),
        .lwcnt(axis_cap_ctrl_lwcnt),
        .lwcnt_eq_scnt_max(cc_axis_mu3_match_out),
        .max_bit(axis_ila_intf_max_bit_o),
        .scnt(axis_cap_ctrl_scnt),
        .scnt_eq_scnt_max(cc_axis_mu1_match_out),
        .scnt_eq_trig_pos(cc_axis_mu0_match_out),
        .scnt_max_eq_1(axis_ila_intf_scnt_max_eq_1_o),
        .shifted_trig_in(1'b0),
        .trig_out_fsm_i(xlconstant_dout),
        .trig_pos_eq_0(axis_ila_intf_trig_pos_eq_0_o),
        .trig_pos_eq_scnt_max(axis_ila_intf_trig_pos_eq_scnt_max_o),
        .trig_state(axis_cap_ctrl_trig_state),
        .trig_state_iclk(axis_cap_ctrl_trig_state_iclk),
        .trigger(tc_axis_mu0_match_out),
        .trigger_o(axis_cap_ctrl_trigger_o),
        .use_case_i(axis_ila_intf_ct_state_sel_o),
        .write_en(axis_cap_ctrl_write_en));
  bd_f030_0_axis_dbg_stub_0 axis_dbg_stub
       (.aclk(xlconstant_dout),
        .aclk_int(axis_dbg_stub_aclk_int),
        .aresetn(xlconstant_dout),
        .aresetn_int(axis_dbg_stub_aresetn_int),
        .m_axis_tdata_int(axis_ila_intf_M_AXIS_TDATA),
        .m_axis_tlast_int(axis_ila_intf_M_AXIS_TLAST),
        .m_axis_tready(1'b1),
        .m_axis_tready_int(axis_ila_intf_M_AXIS_TREADY),
        .m_axis_tvalid_int(axis_ila_intf_M_AXIS_TVALID),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdata_int(axis_dbg_stub_s_axis_int_TDATA),
        .s_axis_tlast(1'b0),
        .s_axis_tlast_int(axis_dbg_stub_s_axis_int_TLAST),
        .s_axis_tready_int(axis_dbg_stub_s_axis_int_TREADY),
        .s_axis_tvalid(1'b0),
        .s_axis_tvalid_int(axis_dbg_stub_s_axis_int_TVALID));
  bd_f030_0_axis_dbg_sync_2_0 axis_dbg_sync_2
       (.dest_clk_in(axis_dbg_stub_aclk_int),
        .dest_out(axis_dbg_sync_2_dest_out),
        .src_clk_in(clk_1),
        .src_in(axis_cap_ctrl_full));
  bd_f030_0_axis_dbg_sync_3_0 axis_dbg_sync_3
       (.dest_clk_in(axis_dbg_stub_aclk_int),
        .dest_out_bus(axis_dbg_sync_3_dest_out_bus),
        .src_clk_in(clk_1),
        .src_in_bus(axis_cap_ctrl_hwcnt));
  bd_f030_0_axis_dbg_sync_4_0 axis_dbg_sync_4
       (.dest_clk_in(axis_dbg_stub_aclk_int),
        .dest_out_bus(axis_dbg_sync_4_dest_out_bus),
        .src_clk_in(clk_1),
        .src_in_bus(axis_cap_ctrl_lwcnt));
  bd_f030_0_axis_dbg_sync_5_0 axis_dbg_sync_5
       (.dest_clk_in(axis_dbg_stub_aclk_int),
        .dest_out_bus(axis_dbg_sync_5_dest_out_bus),
        .src_clk_in(clk_1),
        .src_in_bus(axis_cap_ctrl_trig_state));
  bd_f030_0_axis_dbg_sync_6_0 axis_dbg_sync_6
       (.dest_arst(axis_dbg_sync_6_dest_arst),
        .dest_clk_in(clk_1),
        .src_rst_in(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_ila_intf_0 axis_ila_intf
       (.M_AXIS_ACLK(axis_dbg_stub_aclk_int),
        .M_AXIS_ARESETN(axis_dbg_stub_aresetn_int),
        .M_AXIS_TDATA(axis_ila_intf_M_AXIS_TDATA),
        .M_AXIS_TLAST(axis_ila_intf_M_AXIS_TLAST),
        .M_AXIS_TREADY(axis_ila_intf_M_AXIS_TREADY),
        .M_AXIS_TVALID(axis_ila_intf_M_AXIS_TVALID),
        .S_AXIS_ACLK(axis_dbg_stub_aclk_int),
        .S_AXIS_ARESETN(axis_dbg_stub_aresetn_int),
        .S_AXIS_TDATA(axis_dbg_stub_s_axis_int_TDATA),
        .S_AXIS_TLAST(axis_dbg_stub_s_axis_int_TLAST),
        .S_AXIS_TREADY(axis_dbg_stub_s_axis_int_TREADY),
        .S_AXIS_TVALID(axis_dbg_stub_s_axis_int_TVALID),
        .adv_trig_config_o(axis_ila_intf_adv_trig_config_o),
        .app_spec_o(axis_ila_intf_app_spec_o),
        .aresetn(axis_dbg_sync_6_dest_arst),
        .aresetn_out(axis_ila_intf_aresetn_out),
        .arm_o(axis_ila_intf_arm_o),
        .bit_sel_o(axis_ila_intf_bit_sel_o),
        .cap_done_i(axis_dbg_sync_2_dest_out),
        .cap_done_iclk(axis_cap_ctrl_full_iclk),
        .cap_state_i(axis_dbg_sync_5_dest_out_bus),
        .cap_state_iclk(axis_cap_ctrl_trig_state_iclk),
        .capture_mode_o(axis_ila_intf_capture_mode_o),
        .cfg_data_o(axis_ila_intf_cfg_data_o),
        .cfg_en_o(axis_ila_intf_cfg_en_o),
        .ct_state_sel_o(axis_ila_intf_ct_state_sel_o),
        .data_out_en_i(axis_mem_data_out_en_o),
        .data_word_out_i(axis_mem_data_word_out_o),
        .halt_o(axis_ila_intf_halt_o),
        .halt_status_i(1'b0),
        .hwcnt_i(axis_dbg_sync_3_dest_out_bus),
        .ila_clk(clk_1),
        .lwcnt_i(axis_dbg_sync_4_dest_out_bus),
        .max_bit_o(axis_ila_intf_max_bit_o),
        .read_addr_reset_o(axis_ila_intf_read_addr_reset_o),
        .read_data_en_o(axis_ila_intf_read_data_en_o),
        .reset_out_ack_i(axis_mem_reset_out_ack_o),
        .scnt_max_eq_1_o(axis_ila_intf_scnt_max_eq_1_o),
        .tas_status_i(1'b0),
        .trace_rd_addr_i(axis_mem_trace_rd_addr_o),
        .trace_rd_addr_o(axis_ila_intf_trace_rd_addr_o),
        .trace_rd_wrd_cnt_i(axis_mem_trace_rd_wrd_cnt_o),
        .trig_pos_eq_0_o(axis_ila_intf_trig_pos_eq_0_o),
        .trig_pos_eq_scnt_max_o(axis_ila_intf_trig_pos_eq_scnt_max_o),
        .wr_cc_config_o(axis_ila_intf_wr_cc_config_o),
        .wr_mu_config_o(axis_ila_intf_wr_mu_config_o),
        .wr_tc_config_o(axis_ila_intf_wr_tc_config_o));
  bd_f030_0_axis_ila_pp_0 axis_ila_pp
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe0_out(axis_ila_pp_probe0_out),
        .probe1(probe1_1),
        .probe10(probe10_1),
        .probe10_out(axis_ila_pp_probe10_out),
        .probe11(probe11_1),
        .probe11_out(axis_ila_pp_probe11_out),
        .probe12(probe12_1),
        .probe12_out(axis_ila_pp_probe12_out),
        .probe13(probe13_1),
        .probe13_out(axis_ila_pp_probe13_out),
        .probe1_out(axis_ila_pp_probe1_out),
        .probe2(probe2_1),
        .probe2_out(axis_ila_pp_probe2_out),
        .probe3(probe3_1),
        .probe3_out(axis_ila_pp_probe3_out),
        .probe4(probe4_1),
        .probe4_out(axis_ila_pp_probe4_out),
        .probe5(probe5_1),
        .probe5_out(axis_ila_pp_probe5_out),
        .probe6(probe6_1),
        .probe6_out(axis_ila_pp_probe6_out),
        .probe7(probe7_1),
        .probe7_out(axis_ila_pp_probe7_out),
        .probe8(probe8_1),
        .probe8_out(axis_ila_pp_probe8_out),
        .probe9(probe9_1),
        .probe9_out(axis_ila_pp_probe9_out));
  bd_f030_0_axis_itct_0 axis_itct
       (.app_spec_i(axis_ila_intf_app_spec_o),
        .cc_cfg_din0(axis_itct_cc_cfg_din0),
        .cc_cfg_din1(axis_itct_cc_cfg_din1),
        .cc_cfg_din2(axis_itct_cc_cfg_din2),
        .cc_cfg_din3(axis_itct_cc_cfg_din3),
        .cc_cfg_dout0(cc_axis_mu0_cfg_dout),
        .cc_cfg_dout1(cc_axis_mu1_cfg_dout),
        .cc_cfg_dout2(cc_axis_mu2_cfg_dout),
        .cc_cfg_dout3(cc_axis_mu3_cfg_dout),
        .cc_cfg_en0(axis_itct_cc_cfg_en0),
        .cc_cfg_en1(axis_itct_cc_cfg_en1),
        .cc_cfg_en2(axis_itct_cc_cfg_en2),
        .cc_cfg_en3(axis_itct_cc_cfg_en3),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_data_i(axis_ila_intf_cfg_data_o),
        .cfg_din0(axis_itct_cfg_din0),
        .cfg_din1(axis_itct_cfg_din1),
        .cfg_din10(axis_itct_cfg_din10),
        .cfg_din11(axis_itct_cfg_din11),
        .cfg_din12(axis_itct_cfg_din12),
        .cfg_din13(axis_itct_cfg_din13),
        .cfg_din2(axis_itct_cfg_din2),
        .cfg_din3(axis_itct_cfg_din3),
        .cfg_din4(axis_itct_cfg_din4),
        .cfg_din5(axis_itct_cfg_din5),
        .cfg_din6(axis_itct_cfg_din6),
        .cfg_din7(axis_itct_cfg_din7),
        .cfg_din8(axis_itct_cfg_din8),
        .cfg_din9(axis_itct_cfg_din9),
        .cfg_dout0(axis_mu0_0_cfg_dout),
        .cfg_dout1(axis_mu1_0_cfg_dout),
        .cfg_dout10(axis_mu10_0_cfg_dout),
        .cfg_dout11(axis_mu11_0_cfg_dout),
        .cfg_dout12(axis_mu12_0_cfg_dout),
        .cfg_dout13(axis_mu13_0_cfg_dout),
        .cfg_dout2(axis_mu2_0_cfg_dout),
        .cfg_dout3(axis_mu3_0_cfg_dout),
        .cfg_dout4(axis_mu4_0_cfg_dout),
        .cfg_dout5(axis_mu5_0_cfg_dout),
        .cfg_dout6(axis_mu6_0_cfg_dout),
        .cfg_dout7(axis_mu7_0_cfg_dout),
        .cfg_dout8(axis_mu8_0_cfg_dout),
        .cfg_dout9(axis_mu9_0_cfg_dout),
        .cfg_en0(axis_itct_cfg_en0),
        .cfg_en1(axis_itct_cfg_en1),
        .cfg_en10(axis_itct_cfg_en10),
        .cfg_en11(axis_itct_cfg_en11),
        .cfg_en12(axis_itct_cfg_en12),
        .cfg_en13(axis_itct_cfg_en13),
        .cfg_en2(axis_itct_cfg_en2),
        .cfg_en3(axis_itct_cfg_en3),
        .cfg_en4(axis_itct_cfg_en4),
        .cfg_en5(axis_itct_cfg_en5),
        .cfg_en6(axis_itct_cfg_en6),
        .cfg_en7(axis_itct_cfg_en7),
        .cfg_en8(axis_itct_cfg_en8),
        .cfg_en9(axis_itct_cfg_en9),
        .cfg_en_i(axis_ila_intf_cfg_en_o),
        .match_out0(axis_mu0_0_match_out),
        .match_out1(axis_mu1_0_match_out),
        .match_out10(axis_mu10_0_match_out),
        .match_out11(axis_mu11_0_match_out),
        .match_out12(axis_mu12_0_match_out),
        .match_out13(axis_mu13_0_match_out),
        .match_out2(axis_mu2_0_match_out),
        .match_out3(axis_mu3_0_match_out),
        .match_out4(axis_mu4_0_match_out),
        .match_out5(axis_mu5_0_match_out),
        .match_out6(axis_mu6_0_match_out),
        .match_out7(axis_mu7_0_match_out),
        .match_out8(axis_mu8_0_match_out),
        .match_out9(axis_mu9_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int),
        .tc0_cfg_din(axis_itct_tc0_cfg_din),
        .tc0_cfg_dout(tc_axis_mu0_cfg_dout),
        .tc0_cfg_en(axis_itct_tc0_cfg_en),
        .tc_cfg_dout(1'b0),
        .trigger_din(axis_itct_trigger_din),
        .wr_cc_config_i(axis_ila_intf_wr_cc_config_o),
        .wr_mu_config_i(axis_ila_intf_wr_mu_config_o),
        .wr_tc_config_i(axis_ila_intf_wr_tc_config_o));
  bd_f030_0_axis_mem_0 axis_mem
       (.ADDR_WRITE_I(axis_cap_ctrl_addr),
        .M_AXIS_ACLK(axis_dbg_stub_aclk_int),
        .TRIGGER_I(axis_cap_ctrl_trigger_o),
        .WE_WRITE_I(axis_cap_ctrl_write_en),
        .arm(axis_ila_intf_arm_o),
        .capture_mode_i(axis_ila_intf_capture_mode_o),
        .clk(clk_1),
        .data_out_en_o(axis_mem_data_out_en_o),
        .data_word_out_o(axis_mem_data_word_out_o),
        .en_adv_trigger_i(axis_ila_intf_adv_trig_config_o),
        .probe0(axis_ila_pp_probe0_out),
        .probe1(axis_ila_pp_probe1_out),
        .probe10(axis_ila_pp_probe10_out),
        .probe11(axis_ila_pp_probe11_out),
        .probe12(axis_ila_pp_probe12_out),
        .probe13(axis_ila_pp_probe13_out),
        .probe2(axis_ila_pp_probe2_out),
        .probe3(axis_ila_pp_probe3_out),
        .probe4(axis_ila_pp_probe4_out),
        .probe5(axis_ila_pp_probe5_out),
        .probe6(axis_ila_pp_probe6_out),
        .probe7(axis_ila_pp_probe7_out),
        .probe8(axis_ila_pp_probe8_out),
        .probe9(axis_ila_pp_probe9_out),
        .read_addr_reset_i(axis_ila_intf_read_addr_reset_o),
        .read_data_en_i(axis_ila_intf_read_data_en_o),
        .read_reset_addr_i(axis_ila_intf_trace_rd_addr_o),
        .reset_out_ack_o(axis_mem_reset_out_ack_o),
        .trace_rd_addr_o(axis_mem_trace_rd_addr_o),
        .trace_rd_wrd_cnt_o(axis_mem_trace_rd_wrd_cnt_o));
  bd_f030_0_axis_mu0_0_0 axis_mu0_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din0),
        .cfg_dout(axis_mu0_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en0),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe0_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu0_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu10_0_0 axis_mu10_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din10),
        .cfg_dout(axis_mu10_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en10),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe10_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu10_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu11_0_0 axis_mu11_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din11),
        .cfg_dout(axis_mu11_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en11),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe11_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu11_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu12_0_0 axis_mu12_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din12),
        .cfg_dout(axis_mu12_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en12),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe12_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu12_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu13_0_0 axis_mu13_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din13),
        .cfg_dout(axis_mu13_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en13),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe13_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu13_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu1_0_0 axis_mu1_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din1),
        .cfg_dout(axis_mu1_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en1),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe1_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu1_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu2_0_0 axis_mu2_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din2),
        .cfg_dout(axis_mu2_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en2),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe2_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu2_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu3_0_0 axis_mu3_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din3),
        .cfg_dout(axis_mu3_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en3),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe3_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu3_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu4_0_0 axis_mu4_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din4),
        .cfg_dout(axis_mu4_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en4),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe4_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu4_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu5_0_0 axis_mu5_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din5),
        .cfg_dout(axis_mu5_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en5),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe5_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu5_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu6_0_0 axis_mu6_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din6),
        .cfg_dout(axis_mu6_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en6),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe6_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu6_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu7_0_0 axis_mu7_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din7),
        .cfg_dout(axis_mu7_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en7),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe7_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu7_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu8_0_0 axis_mu8_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din8),
        .cfg_dout(axis_mu8_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en8),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe8_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu8_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_axis_mu9_0_0 axis_mu9_0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cfg_din9),
        .cfg_dout(axis_mu9_0_cfg_dout),
        .cfg_en(axis_itct_cfg_en9),
        .clk(clk_1),
        .data_in(axis_ila_pp_probe9_out),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(axis_mu9_0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_cc_axis_mu0_0 cc_axis_mu0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cc_cfg_din0),
        .cfg_dout(cc_axis_mu0_cfg_dout),
        .cfg_en(axis_itct_cc_cfg_en0),
        .clk(clk_1),
        .data_in(axis_cap_ctrl_lwcnt),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(cc_axis_mu0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_cc_axis_mu1_0 cc_axis_mu1
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cc_cfg_din1),
        .cfg_dout(cc_axis_mu1_cfg_dout),
        .cfg_en(axis_itct_cc_cfg_en1),
        .clk(clk_1),
        .data_in(axis_cap_ctrl_scnt),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(cc_axis_mu1_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_cc_axis_mu2_0 cc_axis_mu2
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cc_cfg_din2),
        .cfg_dout(cc_axis_mu2_cfg_dout),
        .cfg_en(axis_itct_cc_cfg_en2),
        .clk(clk_1),
        .data_in(axis_cap_ctrl_hwcnt),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(cc_axis_mu2_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_cc_axis_mu3_0 cc_axis_mu3
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_cc_cfg_din3),
        .cfg_dout(cc_axis_mu3_cfg_dout),
        .cfg_en(axis_itct_cc_cfg_en3),
        .clk(clk_1),
        .data_in(axis_cap_ctrl_lwcnt),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(cc_axis_mu3_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_tc_axis_mu0_0 tc_axis_mu0
       (.arm(axis_ila_intf_arm_o),
        .cfg_clk(axis_dbg_stub_aclk_int),
        .cfg_din(axis_itct_tc0_cfg_din),
        .cfg_dout(tc_axis_mu0_cfg_dout),
        .cfg_en(axis_itct_tc0_cfg_en),
        .clk(clk_1),
        .data_in(axis_itct_trigger_din),
        .ila_resetn(axis_ila_intf_aresetn_out),
        .match_out(tc_axis_mu0_match_out),
        .resetn(axis_dbg_stub_aresetn_int));
  bd_f030_0_xlconstant_0 xlconstant
       (.dout(xlconstant_dout));
endmodule
