// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:axis_mem:1.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_f030_0_axis_mem_0 (
  clk,
  M_AXIS_ACLK,
  read_data_en_i,
  TRIGGER_I,
  capture_mode_i,
  en_adv_trigger_i,
  arm,
  WE_WRITE_I,
  read_addr_reset_i,
  ADDR_WRITE_I,
  read_reset_addr_i,
  probe0,
  probe1,
  probe2,
  probe3,
  probe4,
  probe5,
  probe6,
  probe7,
  probe8,
  probe9,
  probe10,
  probe11,
  probe12,
  probe13,
  data_out_en_o,
  reset_out_ack_o,
  data_word_out_o,
  trace_rd_addr_o,
  trace_rd_wrd_cnt_o
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f030_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ACLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f030_0_axis_dbg_stub_0_aclk_int, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *)
input wire M_AXIS_ACLK;
input wire read_data_en_i;
input wire TRIGGER_I;
input wire [1 : 0] capture_mode_i;
input wire en_adv_trigger_i;
input wire arm;
input wire WE_WRITE_I;
input wire read_addr_reset_i;
input wire [9 : 0] ADDR_WRITE_I;
input wire [9 : 0] read_reset_addr_i;
input wire [3 : 0] probe0;
input wire [0 : 0] probe1;
input wire [0 : 0] probe2;
input wire [2 : 0] probe3;
input wire [31 : 0] probe4;
input wire [0 : 0] probe5;
input wire [0 : 0] probe6;
input wire [0 : 0] probe7;
input wire [2 : 0] probe8;
input wire [31 : 0] probe9;
input wire [31 : 0] probe10;
input wire [31 : 0] probe11;
input wire [0 : 0] probe12;
input wire [31 : 0] probe13;
output wire data_out_en_o;
output wire reset_out_ack_o;
output wire [31 : 0] data_word_out_o;
output wire [9 : 0] trace_rd_addr_o;
output wire [12 : 0] trace_rd_wrd_cnt_o;

  axis_mem_v1_0_0_axis_mem #(
    .C_PROBE0_WIDTH(4),
    .C_PROBE1_WIDTH(1),
    .C_PROBE2_WIDTH(1),
    .C_PROBE3_WIDTH(3),
    .C_PROBE4_WIDTH(32),
    .C_PROBE5_WIDTH(1),
    .C_PROBE6_WIDTH(1),
    .C_PROBE7_WIDTH(1),
    .C_PROBE8_WIDTH(3),
    .C_PROBE9_WIDTH(32),
    .C_PROBE10_WIDTH(32),
    .C_PROBE11_WIDTH(32),
    .C_PROBE12_WIDTH(1),
    .C_PROBE13_WIDTH(32),
    .C_PROBE14_WIDTH(1),
    .C_PROBE15_WIDTH(1),
    .C_PROBE16_WIDTH(1),
    .C_PROBE17_WIDTH(1),
    .C_PROBE18_WIDTH(1),
    .C_PROBE19_WIDTH(1),
    .C_PROBE20_WIDTH(1),
    .C_PROBE21_WIDTH(1),
    .C_PROBE22_WIDTH(1),
    .C_PROBE23_WIDTH(1),
    .C_PROBE24_WIDTH(1),
    .C_PROBE25_WIDTH(1),
    .C_PROBE26_WIDTH(1),
    .C_PROBE27_WIDTH(1),
    .C_PROBE28_WIDTH(1),
    .C_PROBE29_WIDTH(1),
    .C_PROBE30_WIDTH(1),
    .C_PROBE31_WIDTH(1),
    .C_PROBE32_WIDTH(1),
    .C_PROBE33_WIDTH(1),
    .C_PROBE34_WIDTH(1),
    .C_PROBE35_WIDTH(1),
    .C_PROBE36_WIDTH(1),
    .C_PROBE37_WIDTH(1),
    .C_PROBE38_WIDTH(1),
    .C_PROBE39_WIDTH(1),
    .C_PROBE40_WIDTH(1),
    .C_PROBE41_WIDTH(1),
    .C_PROBE42_WIDTH(1),
    .C_PROBE43_WIDTH(1),
    .C_PROBE44_WIDTH(1),
    .C_PROBE45_WIDTH(1),
    .C_PROBE46_WIDTH(1),
    .C_PROBE47_WIDTH(1),
    .C_PROBE48_WIDTH(1),
    .C_PROBE49_WIDTH(1),
    .C_PROBE50_WIDTH(1),
    .C_PROBE51_WIDTH(1),
    .C_PROBE52_WIDTH(1),
    .C_PROBE53_WIDTH(1),
    .C_PROBE54_WIDTH(1),
    .C_PROBE55_WIDTH(1),
    .C_PROBE56_WIDTH(1),
    .C_PROBE57_WIDTH(1),
    .C_PROBE58_WIDTH(1),
    .C_PROBE59_WIDTH(1),
    .C_PROBE60_WIDTH(1),
    .C_PROBE61_WIDTH(1),
    .C_PROBE62_WIDTH(1),
    .C_PROBE63_WIDTH(1),
    .C_PROBE64_WIDTH(1),
    .C_PROBE65_WIDTH(1),
    .C_PROBE66_WIDTH(1),
    .C_PROBE67_WIDTH(1),
    .C_PROBE68_WIDTH(1),
    .C_PROBE69_WIDTH(1),
    .C_PROBE70_WIDTH(1),
    .C_PROBE71_WIDTH(1),
    .C_PROBE72_WIDTH(1),
    .C_PROBE73_WIDTH(1),
    .C_PROBE74_WIDTH(1),
    .C_PROBE75_WIDTH(1),
    .C_PROBE76_WIDTH(1),
    .C_PROBE77_WIDTH(1),
    .C_PROBE78_WIDTH(1),
    .C_PROBE79_WIDTH(1),
    .C_PROBE80_WIDTH(1),
    .C_PROBE81_WIDTH(1),
    .C_PROBE82_WIDTH(1),
    .C_PROBE83_WIDTH(1),
    .C_PROBE84_WIDTH(1),
    .C_PROBE85_WIDTH(1),
    .C_PROBE86_WIDTH(1),
    .C_PROBE87_WIDTH(1),
    .C_PROBE88_WIDTH(1),
    .C_PROBE89_WIDTH(1),
    .C_PROBE90_WIDTH(1),
    .C_PROBE91_WIDTH(1),
    .C_PROBE92_WIDTH(1),
    .C_PROBE93_WIDTH(1),
    .C_PROBE94_WIDTH(1),
    .C_PROBE95_WIDTH(1),
    .C_PROBE96_WIDTH(1),
    .C_PROBE97_WIDTH(1),
    .C_PROBE98_WIDTH(1),
    .C_PROBE99_WIDTH(1),
    .C_PROBE100_WIDTH(1),
    .C_PROBE101_WIDTH(1),
    .C_PROBE102_WIDTH(1),
    .C_PROBE103_WIDTH(1),
    .C_PROBE104_WIDTH(1),
    .C_PROBE105_WIDTH(1),
    .C_PROBE106_WIDTH(1),
    .C_PROBE107_WIDTH(1),
    .C_PROBE108_WIDTH(1),
    .C_PROBE109_WIDTH(1),
    .C_PROBE110_WIDTH(1),
    .C_PROBE111_WIDTH(1),
    .C_PROBE112_WIDTH(1),
    .C_PROBE113_WIDTH(1),
    .C_PROBE114_WIDTH(1),
    .C_PROBE115_WIDTH(1),
    .C_PROBE116_WIDTH(1),
    .C_PROBE117_WIDTH(1),
    .C_PROBE118_WIDTH(1),
    .C_PROBE119_WIDTH(1),
    .C_PROBE120_WIDTH(1),
    .C_PROBE121_WIDTH(1),
    .C_PROBE122_WIDTH(1),
    .C_PROBE123_WIDTH(1),
    .C_PROBE124_WIDTH(1),
    .C_PROBE125_WIDTH(1),
    .C_PROBE126_WIDTH(1),
    .C_PROBE127_WIDTH(1),
    .C_PROBE128_WIDTH(1),
    .C_PROBE129_WIDTH(1),
    .C_PROBE130_WIDTH(1),
    .C_PROBE131_WIDTH(1),
    .C_PROBE132_WIDTH(1),
    .C_PROBE133_WIDTH(1),
    .C_PROBE134_WIDTH(1),
    .C_PROBE135_WIDTH(1),
    .C_PROBE136_WIDTH(1),
    .C_PROBE137_WIDTH(1),
    .C_PROBE138_WIDTH(1),
    .C_PROBE139_WIDTH(1),
    .C_PROBE140_WIDTH(1),
    .C_PROBE141_WIDTH(1),
    .C_PROBE142_WIDTH(1),
    .C_PROBE143_WIDTH(1),
    .C_PROBE144_WIDTH(1),
    .C_PROBE145_WIDTH(1),
    .C_PROBE146_WIDTH(1),
    .C_PROBE147_WIDTH(1),
    .C_PROBE148_WIDTH(1),
    .C_PROBE149_WIDTH(1),
    .C_PROBE150_WIDTH(1),
    .C_PROBE151_WIDTH(1),
    .C_PROBE152_WIDTH(1),
    .C_PROBE153_WIDTH(1),
    .C_PROBE154_WIDTH(1),
    .C_PROBE155_WIDTH(1),
    .C_PROBE156_WIDTH(1),
    .C_PROBE157_WIDTH(1),
    .C_PROBE158_WIDTH(1),
    .C_PROBE159_WIDTH(1),
    .C_PROBE160_WIDTH(1),
    .C_PROBE161_WIDTH(1),
    .C_PROBE162_WIDTH(1),
    .C_PROBE163_WIDTH(1),
    .C_PROBE164_WIDTH(1),
    .C_PROBE165_WIDTH(1),
    .C_PROBE166_WIDTH(1),
    .C_PROBE167_WIDTH(1),
    .C_PROBE168_WIDTH(1),
    .C_PROBE169_WIDTH(1),
    .C_PROBE170_WIDTH(1),
    .C_PROBE171_WIDTH(1),
    .C_PROBE172_WIDTH(1),
    .C_PROBE173_WIDTH(1),
    .C_PROBE174_WIDTH(1),
    .C_PROBE175_WIDTH(1),
    .C_PROBE176_WIDTH(1),
    .C_PROBE177_WIDTH(1),
    .C_PROBE178_WIDTH(1),
    .C_PROBE179_WIDTH(1),
    .C_PROBE180_WIDTH(1),
    .C_PROBE181_WIDTH(1),
    .C_PROBE182_WIDTH(1),
    .C_PROBE183_WIDTH(1),
    .C_PROBE184_WIDTH(1),
    .C_PROBE185_WIDTH(1),
    .C_PROBE186_WIDTH(1),
    .C_PROBE187_WIDTH(1),
    .C_PROBE188_WIDTH(1),
    .C_PROBE189_WIDTH(1),
    .C_PROBE190_WIDTH(1),
    .C_PROBE191_WIDTH(1),
    .C_PROBE192_WIDTH(1),
    .C_PROBE193_WIDTH(1),
    .C_PROBE194_WIDTH(1),
    .C_PROBE195_WIDTH(1),
    .C_PROBE196_WIDTH(1),
    .C_PROBE197_WIDTH(1),
    .C_PROBE198_WIDTH(1),
    .C_PROBE199_WIDTH(1),
    .C_PROBE200_WIDTH(1),
    .C_PROBE201_WIDTH(1),
    .C_PROBE202_WIDTH(1),
    .C_PROBE203_WIDTH(1),
    .C_PROBE204_WIDTH(1),
    .C_PROBE205_WIDTH(1),
    .C_PROBE206_WIDTH(1),
    .C_PROBE207_WIDTH(1),
    .C_PROBE208_WIDTH(1),
    .C_PROBE209_WIDTH(1),
    .C_PROBE210_WIDTH(1),
    .C_PROBE211_WIDTH(1),
    .C_PROBE212_WIDTH(1),
    .C_PROBE213_WIDTH(1),
    .C_PROBE214_WIDTH(1),
    .C_PROBE215_WIDTH(1),
    .C_PROBE216_WIDTH(1),
    .C_PROBE217_WIDTH(1),
    .C_PROBE218_WIDTH(1),
    .C_PROBE219_WIDTH(1),
    .C_PROBE220_WIDTH(1),
    .C_PROBE221_WIDTH(1),
    .C_PROBE222_WIDTH(1),
    .C_PROBE223_WIDTH(1),
    .C_PROBE224_WIDTH(1),
    .C_PROBE225_WIDTH(1),
    .C_PROBE226_WIDTH(1),
    .C_PROBE227_WIDTH(1),
    .C_PROBE228_WIDTH(1),
    .C_PROBE229_WIDTH(1),
    .C_PROBE230_WIDTH(1),
    .C_PROBE231_WIDTH(1),
    .C_PROBE232_WIDTH(1),
    .C_PROBE233_WIDTH(1),
    .C_PROBE234_WIDTH(1),
    .C_PROBE235_WIDTH(1),
    .C_PROBE236_WIDTH(1),
    .C_PROBE237_WIDTH(1),
    .C_PROBE238_WIDTH(1),
    .C_PROBE239_WIDTH(1),
    .C_PROBE240_WIDTH(1),
    .C_PROBE241_WIDTH(1),
    .C_PROBE242_WIDTH(1),
    .C_PROBE243_WIDTH(1),
    .C_PROBE244_WIDTH(1),
    .C_PROBE245_WIDTH(1),
    .C_PROBE246_WIDTH(1),
    .C_PROBE247_WIDTH(1),
    .C_PROBE248_WIDTH(1),
    .C_PROBE249_WIDTH(1),
    .C_PROBE250_WIDTH(1),
    .C_PROBE251_WIDTH(1),
    .C_PROBE252_WIDTH(1),
    .C_PROBE253_WIDTH(1),
    .C_PROBE254_WIDTH(1),
    .C_PROBE255_WIDTH(1),
    .C_PROBE256_WIDTH(1),
    .C_PROBE257_WIDTH(1),
    .C_PROBE258_WIDTH(1),
    .C_PROBE259_WIDTH(1),
    .C_PROBE260_WIDTH(1),
    .C_PROBE261_WIDTH(1),
    .C_PROBE262_WIDTH(1),
    .C_PROBE263_WIDTH(1),
    .C_PROBE264_WIDTH(1),
    .C_PROBE265_WIDTH(1),
    .C_PROBE266_WIDTH(1),
    .C_PROBE267_WIDTH(1),
    .C_PROBE268_WIDTH(1),
    .C_PROBE269_WIDTH(1),
    .C_PROBE270_WIDTH(1),
    .C_PROBE271_WIDTH(1),
    .C_PROBE272_WIDTH(1),
    .C_PROBE273_WIDTH(1),
    .C_PROBE274_WIDTH(1),
    .C_PROBE275_WIDTH(1),
    .C_PROBE276_WIDTH(1),
    .C_PROBE277_WIDTH(1),
    .C_PROBE278_WIDTH(1),
    .C_PROBE279_WIDTH(1),
    .C_PROBE280_WIDTH(1),
    .C_PROBE281_WIDTH(1),
    .C_PROBE282_WIDTH(1),
    .C_PROBE283_WIDTH(1),
    .C_PROBE284_WIDTH(1),
    .C_PROBE285_WIDTH(1),
    .C_PROBE286_WIDTH(1),
    .C_PROBE287_WIDTH(1),
    .C_PROBE288_WIDTH(1),
    .C_PROBE289_WIDTH(1),
    .C_PROBE290_WIDTH(1),
    .C_PROBE291_WIDTH(1),
    .C_PROBE292_WIDTH(1),
    .C_PROBE293_WIDTH(1),
    .C_PROBE294_WIDTH(1),
    .C_PROBE295_WIDTH(1),
    .C_PROBE296_WIDTH(1),
    .C_PROBE297_WIDTH(1),
    .C_PROBE298_WIDTH(1),
    .C_PROBE299_WIDTH(1),
    .C_PROBE300_WIDTH(1),
    .C_PROBE301_WIDTH(1),
    .C_PROBE302_WIDTH(1),
    .C_PROBE303_WIDTH(1),
    .C_PROBE304_WIDTH(1),
    .C_PROBE305_WIDTH(1),
    .C_PROBE306_WIDTH(1),
    .C_PROBE307_WIDTH(1),
    .C_PROBE308_WIDTH(1),
    .C_PROBE309_WIDTH(1),
    .C_PROBE310_WIDTH(1),
    .C_PROBE311_WIDTH(1),
    .C_PROBE312_WIDTH(1),
    .C_PROBE313_WIDTH(1),
    .C_PROBE314_WIDTH(1),
    .C_PROBE315_WIDTH(1),
    .C_PROBE316_WIDTH(1),
    .C_PROBE317_WIDTH(1),
    .C_PROBE318_WIDTH(1),
    .C_PROBE319_WIDTH(1),
    .C_PROBE320_WIDTH(1),
    .C_PROBE321_WIDTH(1),
    .C_PROBE322_WIDTH(1),
    .C_PROBE323_WIDTH(1),
    .C_PROBE324_WIDTH(1),
    .C_PROBE325_WIDTH(1),
    .C_PROBE326_WIDTH(1),
    .C_PROBE327_WIDTH(1),
    .C_PROBE328_WIDTH(1),
    .C_PROBE329_WIDTH(1),
    .C_PROBE330_WIDTH(1),
    .C_PROBE331_WIDTH(1),
    .C_PROBE332_WIDTH(1),
    .C_PROBE333_WIDTH(1),
    .C_PROBE334_WIDTH(1),
    .C_PROBE335_WIDTH(1),
    .C_PROBE336_WIDTH(1),
    .C_PROBE337_WIDTH(1),
    .C_PROBE338_WIDTH(1),
    .C_PROBE339_WIDTH(1),
    .C_PROBE340_WIDTH(1),
    .C_PROBE341_WIDTH(1),
    .C_PROBE342_WIDTH(1),
    .C_PROBE343_WIDTH(1),
    .C_PROBE344_WIDTH(1),
    .C_PROBE345_WIDTH(1),
    .C_PROBE346_WIDTH(1),
    .C_PROBE347_WIDTH(1),
    .C_PROBE348_WIDTH(1),
    .C_PROBE349_WIDTH(1),
    .C_PROBE350_WIDTH(1),
    .C_PROBE351_WIDTH(1),
    .C_PROBE352_WIDTH(1),
    .C_PROBE353_WIDTH(1),
    .C_PROBE354_WIDTH(1),
    .C_PROBE355_WIDTH(1),
    .C_PROBE356_WIDTH(1),
    .C_PROBE357_WIDTH(1),
    .C_PROBE358_WIDTH(1),
    .C_PROBE359_WIDTH(1),
    .C_PROBE360_WIDTH(1),
    .C_PROBE361_WIDTH(1),
    .C_PROBE362_WIDTH(1),
    .C_PROBE363_WIDTH(1),
    .C_PROBE364_WIDTH(1),
    .C_PROBE365_WIDTH(1),
    .C_PROBE366_WIDTH(1),
    .C_PROBE367_WIDTH(1),
    .C_PROBE368_WIDTH(1),
    .C_PROBE369_WIDTH(1),
    .C_PROBE370_WIDTH(1),
    .C_PROBE371_WIDTH(1),
    .C_PROBE372_WIDTH(1),
    .C_PROBE373_WIDTH(1),
    .C_PROBE374_WIDTH(1),
    .C_PROBE375_WIDTH(1),
    .C_PROBE376_WIDTH(1),
    .C_PROBE377_WIDTH(1),
    .C_PROBE378_WIDTH(1),
    .C_PROBE379_WIDTH(1),
    .C_PROBE380_WIDTH(1),
    .C_PROBE381_WIDTH(1),
    .C_PROBE382_WIDTH(1),
    .C_PROBE383_WIDTH(1),
    .C_PROBE384_WIDTH(1),
    .C_PROBE385_WIDTH(1),
    .C_PROBE386_WIDTH(1),
    .C_PROBE387_WIDTH(1),
    .C_PROBE388_WIDTH(1),
    .C_PROBE389_WIDTH(1),
    .C_PROBE390_WIDTH(1),
    .C_PROBE391_WIDTH(1),
    .C_PROBE392_WIDTH(1),
    .C_PROBE393_WIDTH(1),
    .C_PROBE394_WIDTH(1),
    .C_PROBE395_WIDTH(1),
    .C_PROBE396_WIDTH(1),
    .C_PROBE397_WIDTH(1),
    .C_PROBE398_WIDTH(1),
    .C_PROBE399_WIDTH(1),
    .C_PROBE400_WIDTH(1),
    .C_PROBE401_WIDTH(1),
    .C_PROBE402_WIDTH(1),
    .C_PROBE403_WIDTH(1),
    .C_PROBE404_WIDTH(1),
    .C_PROBE405_WIDTH(1),
    .C_PROBE406_WIDTH(1),
    .C_PROBE407_WIDTH(1),
    .C_PROBE408_WIDTH(1),
    .C_PROBE409_WIDTH(1),
    .C_PROBE410_WIDTH(1),
    .C_PROBE411_WIDTH(1),
    .C_PROBE412_WIDTH(1),
    .C_PROBE413_WIDTH(1),
    .C_PROBE414_WIDTH(1),
    .C_PROBE415_WIDTH(1),
    .C_PROBE416_WIDTH(1),
    .C_PROBE417_WIDTH(1),
    .C_PROBE418_WIDTH(1),
    .C_PROBE419_WIDTH(1),
    .C_PROBE420_WIDTH(1),
    .C_PROBE421_WIDTH(1),
    .C_PROBE422_WIDTH(1),
    .C_PROBE423_WIDTH(1),
    .C_PROBE424_WIDTH(1),
    .C_PROBE425_WIDTH(1),
    .C_PROBE426_WIDTH(1),
    .C_PROBE427_WIDTH(1),
    .C_PROBE428_WIDTH(1),
    .C_PROBE429_WIDTH(1),
    .C_PROBE430_WIDTH(1),
    .C_PROBE431_WIDTH(1),
    .C_PROBE432_WIDTH(1),
    .C_PROBE433_WIDTH(1),
    .C_PROBE434_WIDTH(1),
    .C_PROBE435_WIDTH(1),
    .C_PROBE436_WIDTH(1),
    .C_PROBE437_WIDTH(1),
    .C_PROBE438_WIDTH(1),
    .C_PROBE439_WIDTH(1),
    .C_PROBE440_WIDTH(1),
    .C_PROBE441_WIDTH(1),
    .C_PROBE442_WIDTH(1),
    .C_PROBE443_WIDTH(1),
    .C_PROBE444_WIDTH(1),
    .C_PROBE445_WIDTH(1),
    .C_PROBE446_WIDTH(1),
    .C_PROBE447_WIDTH(1),
    .C_PROBE448_WIDTH(1),
    .C_PROBE449_WIDTH(1),
    .C_PROBE450_WIDTH(1),
    .C_PROBE451_WIDTH(1),
    .C_PROBE452_WIDTH(1),
    .C_PROBE453_WIDTH(1),
    .C_PROBE454_WIDTH(1),
    .C_PROBE455_WIDTH(1),
    .C_PROBE456_WIDTH(1),
    .C_PROBE457_WIDTH(1),
    .C_PROBE458_WIDTH(1),
    .C_PROBE459_WIDTH(1),
    .C_PROBE460_WIDTH(1),
    .C_PROBE461_WIDTH(1),
    .C_PROBE462_WIDTH(1),
    .C_PROBE463_WIDTH(1),
    .C_PROBE464_WIDTH(1),
    .C_PROBE465_WIDTH(1),
    .C_PROBE466_WIDTH(1),
    .C_PROBE467_WIDTH(1),
    .C_PROBE468_WIDTH(1),
    .C_PROBE469_WIDTH(1),
    .C_PROBE470_WIDTH(1),
    .C_PROBE471_WIDTH(1),
    .C_PROBE472_WIDTH(1),
    .C_PROBE473_WIDTH(1),
    .C_PROBE474_WIDTH(1),
    .C_PROBE475_WIDTH(1),
    .C_PROBE476_WIDTH(1),
    .C_PROBE477_WIDTH(1),
    .C_PROBE478_WIDTH(1),
    .C_PROBE479_WIDTH(1),
    .C_PROBE480_WIDTH(1),
    .C_PROBE481_WIDTH(1),
    .C_PROBE482_WIDTH(1),
    .C_PROBE483_WIDTH(1),
    .C_PROBE484_WIDTH(1),
    .C_PROBE485_WIDTH(1),
    .C_PROBE486_WIDTH(1),
    .C_PROBE487_WIDTH(1),
    .C_PROBE488_WIDTH(1),
    .C_PROBE489_WIDTH(1),
    .C_PROBE490_WIDTH(1),
    .C_PROBE491_WIDTH(1),
    .C_PROBE492_WIDTH(1),
    .C_PROBE493_WIDTH(1),
    .C_PROBE494_WIDTH(1),
    .C_PROBE495_WIDTH(1),
    .C_PROBE496_WIDTH(1),
    .C_PROBE497_WIDTH(1),
    .C_PROBE498_WIDTH(1),
    .C_PROBE499_WIDTH(1),
    .C_PROBE500_WIDTH(1),
    .C_PROBE501_WIDTH(1),
    .C_PROBE502_WIDTH(1),
    .C_PROBE503_WIDTH(1),
    .C_PROBE504_WIDTH(1),
    .C_PROBE505_WIDTH(1),
    .C_PROBE506_WIDTH(1),
    .C_PROBE507_WIDTH(1),
    .C_PROBE508_WIDTH(1),
    .C_PROBE509_WIDTH(1),
    .C_PROBE510_WIDTH(1),
    .C_PROBE511_WIDTH(1),
    .C_NUM_PROBES(14),
    .C_EN_STRG_QUAL(1),
    .C_EN_ADV_TRIG(1),
    .C_RAM_WIDTH(176),
    .C_RAM_DEPTH(1024),
    .C_MEMORY_TYPE(0),
    .C_DEPTH_ADDR_WIDTH(10),
    .C_RD_WRD_CNT_WIDTH(13),
    .C_AXIS_DATA_WIDTH(32),
    .C_DATA_TRIGGER(1024'B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
  ) inst (
    .clk(clk),
    .M_AXIS_ACLK(M_AXIS_ACLK),
    .tr_clk(1'B0),
    .read_data_en_i(read_data_en_i),
    .TRIGGER_I(TRIGGER_I),
    .capture_mode_i(capture_mode_i),
    .en_adv_trigger_i(en_adv_trigger_i),
    .arm(arm),
    .WE_WRITE_I(WE_WRITE_I),
    .read_addr_reset_i(read_addr_reset_i),
    .en_deep_storage(1'B0),
    .ADDR_WRITE_I(ADDR_WRITE_I),
    .read_reset_addr_i(read_reset_addr_i),
    .probe0(probe0),
    .probe1(probe1),
    .probe2(probe2),
    .probe3(probe3),
    .probe4(probe4),
    .probe5(probe5),
    .probe6(probe6),
    .probe7(probe7),
    .probe8(probe8),
    .probe9(probe9),
    .probe10(probe10),
    .probe11(probe11),
    .probe12(probe12),
    .probe13(probe13),
    .probe14(1'B0),
    .probe15(1'B0),
    .probe16(1'B0),
    .probe17(1'B0),
    .probe18(1'B0),
    .probe19(1'B0),
    .probe20(1'B0),
    .probe21(1'B0),
    .probe22(1'B0),
    .probe23(1'B0),
    .probe24(1'B0),
    .probe25(1'B0),
    .probe26(1'B0),
    .probe27(1'B0),
    .probe28(1'B0),
    .probe29(1'B0),
    .probe30(1'B0),
    .probe31(1'B0),
    .probe32(1'B0),
    .probe33(1'B0),
    .probe34(1'B0),
    .probe35(1'B0),
    .probe36(1'B0),
    .probe37(1'B0),
    .probe38(1'B0),
    .probe39(1'B0),
    .probe40(1'B0),
    .probe41(1'B0),
    .probe42(1'B0),
    .probe43(1'B0),
    .probe44(1'B0),
    .probe45(1'B0),
    .probe46(1'B0),
    .probe47(1'B0),
    .probe48(1'B0),
    .probe49(1'B0),
    .probe50(1'B0),
    .probe51(1'B0),
    .probe52(1'B0),
    .probe53(1'B0),
    .probe54(1'B0),
    .probe55(1'B0),
    .probe56(1'B0),
    .probe57(1'B0),
    .probe58(1'B0),
    .probe59(1'B0),
    .probe60(1'B0),
    .probe61(1'B0),
    .probe62(1'B0),
    .probe63(1'B0),
    .probe64(1'B0),
    .probe65(1'B0),
    .probe66(1'B0),
    .probe67(1'B0),
    .probe68(1'B0),
    .probe69(1'B0),
    .probe70(1'B0),
    .probe71(1'B0),
    .probe72(1'B0),
    .probe73(1'B0),
    .probe74(1'B0),
    .probe75(1'B0),
    .probe76(1'B0),
    .probe77(1'B0),
    .probe78(1'B0),
    .probe79(1'B0),
    .probe80(1'B0),
    .probe81(1'B0),
    .probe82(1'B0),
    .probe83(1'B0),
    .probe84(1'B0),
    .probe85(1'B0),
    .probe86(1'B0),
    .probe87(1'B0),
    .probe88(1'B0),
    .probe89(1'B0),
    .probe90(1'B0),
    .probe91(1'B0),
    .probe92(1'B0),
    .probe93(1'B0),
    .probe94(1'B0),
    .probe95(1'B0),
    .probe96(1'B0),
    .probe97(1'B0),
    .probe98(1'B0),
    .probe99(1'B0),
    .probe100(1'B0),
    .probe101(1'B0),
    .probe102(1'B0),
    .probe103(1'B0),
    .probe104(1'B0),
    .probe105(1'B0),
    .probe106(1'B0),
    .probe107(1'B0),
    .probe108(1'B0),
    .probe109(1'B0),
    .probe110(1'B0),
    .probe111(1'B0),
    .probe112(1'B0),
    .probe113(1'B0),
    .probe114(1'B0),
    .probe115(1'B0),
    .probe116(1'B0),
    .probe117(1'B0),
    .probe118(1'B0),
    .probe119(1'B0),
    .probe120(1'B0),
    .probe121(1'B0),
    .probe122(1'B0),
    .probe123(1'B0),
    .probe124(1'B0),
    .probe125(1'B0),
    .probe126(1'B0),
    .probe127(1'B0),
    .probe128(1'B0),
    .probe129(1'B0),
    .probe130(1'B0),
    .probe131(1'B0),
    .probe132(1'B0),
    .probe133(1'B0),
    .probe134(1'B0),
    .probe135(1'B0),
    .probe136(1'B0),
    .probe137(1'B0),
    .probe138(1'B0),
    .probe139(1'B0),
    .probe140(1'B0),
    .probe141(1'B0),
    .probe142(1'B0),
    .probe143(1'B0),
    .probe144(1'B0),
    .probe145(1'B0),
    .probe146(1'B0),
    .probe147(1'B0),
    .probe148(1'B0),
    .probe149(1'B0),
    .probe150(1'B0),
    .probe151(1'B0),
    .probe152(1'B0),
    .probe153(1'B0),
    .probe154(1'B0),
    .probe155(1'B0),
    .probe156(1'B0),
    .probe157(1'B0),
    .probe158(1'B0),
    .probe159(1'B0),
    .probe160(1'B0),
    .probe161(1'B0),
    .probe162(1'B0),
    .probe163(1'B0),
    .probe164(1'B0),
    .probe165(1'B0),
    .probe166(1'B0),
    .probe167(1'B0),
    .probe168(1'B0),
    .probe169(1'B0),
    .probe170(1'B0),
    .probe171(1'B0),
    .probe172(1'B0),
    .probe173(1'B0),
    .probe174(1'B0),
    .probe175(1'B0),
    .probe176(1'B0),
    .probe177(1'B0),
    .probe178(1'B0),
    .probe179(1'B0),
    .probe180(1'B0),
    .probe181(1'B0),
    .probe182(1'B0),
    .probe183(1'B0),
    .probe184(1'B0),
    .probe185(1'B0),
    .probe186(1'B0),
    .probe187(1'B0),
    .probe188(1'B0),
    .probe189(1'B0),
    .probe190(1'B0),
    .probe191(1'B0),
    .probe192(1'B0),
    .probe193(1'B0),
    .probe194(1'B0),
    .probe195(1'B0),
    .probe196(1'B0),
    .probe197(1'B0),
    .probe198(1'B0),
    .probe199(1'B0),
    .probe200(1'B0),
    .probe201(1'B0),
    .probe202(1'B0),
    .probe203(1'B0),
    .probe204(1'B0),
    .probe205(1'B0),
    .probe206(1'B0),
    .probe207(1'B0),
    .probe208(1'B0),
    .probe209(1'B0),
    .probe210(1'B0),
    .probe211(1'B0),
    .probe212(1'B0),
    .probe213(1'B0),
    .probe214(1'B0),
    .probe215(1'B0),
    .probe216(1'B0),
    .probe217(1'B0),
    .probe218(1'B0),
    .probe219(1'B0),
    .probe220(1'B0),
    .probe221(1'B0),
    .probe222(1'B0),
    .probe223(1'B0),
    .probe224(1'B0),
    .probe225(1'B0),
    .probe226(1'B0),
    .probe227(1'B0),
    .probe228(1'B0),
    .probe229(1'B0),
    .probe230(1'B0),
    .probe231(1'B0),
    .probe232(1'B0),
    .probe233(1'B0),
    .probe234(1'B0),
    .probe235(1'B0),
    .probe236(1'B0),
    .probe237(1'B0),
    .probe238(1'B0),
    .probe239(1'B0),
    .probe240(1'B0),
    .probe241(1'B0),
    .probe242(1'B0),
    .probe243(1'B0),
    .probe244(1'B0),
    .probe245(1'B0),
    .probe246(1'B0),
    .probe247(1'B0),
    .probe248(1'B0),
    .probe249(1'B0),
    .probe250(1'B0),
    .probe251(1'B0),
    .probe252(1'B0),
    .probe253(1'B0),
    .probe254(1'B0),
    .probe255(1'B0),
    .probe256(1'B0),
    .probe257(1'B0),
    .probe258(1'B0),
    .probe259(1'B0),
    .probe260(1'B0),
    .probe261(1'B0),
    .probe262(1'B0),
    .probe263(1'B0),
    .probe264(1'B0),
    .probe265(1'B0),
    .probe266(1'B0),
    .probe267(1'B0),
    .probe268(1'B0),
    .probe269(1'B0),
    .probe270(1'B0),
    .probe271(1'B0),
    .probe272(1'B0),
    .probe273(1'B0),
    .probe274(1'B0),
    .probe275(1'B0),
    .probe276(1'B0),
    .probe277(1'B0),
    .probe278(1'B0),
    .probe279(1'B0),
    .probe280(1'B0),
    .probe281(1'B0),
    .probe282(1'B0),
    .probe283(1'B0),
    .probe284(1'B0),
    .probe285(1'B0),
    .probe286(1'B0),
    .probe287(1'B0),
    .probe288(1'B0),
    .probe289(1'B0),
    .probe290(1'B0),
    .probe291(1'B0),
    .probe292(1'B0),
    .probe293(1'B0),
    .probe294(1'B0),
    .probe295(1'B0),
    .probe296(1'B0),
    .probe297(1'B0),
    .probe298(1'B0),
    .probe299(1'B0),
    .probe300(1'B0),
    .probe301(1'B0),
    .probe302(1'B0),
    .probe303(1'B0),
    .probe304(1'B0),
    .probe305(1'B0),
    .probe306(1'B0),
    .probe307(1'B0),
    .probe308(1'B0),
    .probe309(1'B0),
    .probe310(1'B0),
    .probe311(1'B0),
    .probe312(1'B0),
    .probe313(1'B0),
    .probe314(1'B0),
    .probe315(1'B0),
    .probe316(1'B0),
    .probe317(1'B0),
    .probe318(1'B0),
    .probe319(1'B0),
    .probe320(1'B0),
    .probe321(1'B0),
    .probe322(1'B0),
    .probe323(1'B0),
    .probe324(1'B0),
    .probe325(1'B0),
    .probe326(1'B0),
    .probe327(1'B0),
    .probe328(1'B0),
    .probe329(1'B0),
    .probe330(1'B0),
    .probe331(1'B0),
    .probe332(1'B0),
    .probe333(1'B0),
    .probe334(1'B0),
    .probe335(1'B0),
    .probe336(1'B0),
    .probe337(1'B0),
    .probe338(1'B0),
    .probe339(1'B0),
    .probe340(1'B0),
    .probe341(1'B0),
    .probe342(1'B0),
    .probe343(1'B0),
    .probe344(1'B0),
    .probe345(1'B0),
    .probe346(1'B0),
    .probe347(1'B0),
    .probe348(1'B0),
    .probe349(1'B0),
    .probe350(1'B0),
    .probe351(1'B0),
    .probe352(1'B0),
    .probe353(1'B0),
    .probe354(1'B0),
    .probe355(1'B0),
    .probe356(1'B0),
    .probe357(1'B0),
    .probe358(1'B0),
    .probe359(1'B0),
    .probe360(1'B0),
    .probe361(1'B0),
    .probe362(1'B0),
    .probe363(1'B0),
    .probe364(1'B0),
    .probe365(1'B0),
    .probe366(1'B0),
    .probe367(1'B0),
    .probe368(1'B0),
    .probe369(1'B0),
    .probe370(1'B0),
    .probe371(1'B0),
    .probe372(1'B0),
    .probe373(1'B0),
    .probe374(1'B0),
    .probe375(1'B0),
    .probe376(1'B0),
    .probe377(1'B0),
    .probe378(1'B0),
    .probe379(1'B0),
    .probe380(1'B0),
    .probe381(1'B0),
    .probe382(1'B0),
    .probe383(1'B0),
    .probe384(1'B0),
    .probe385(1'B0),
    .probe386(1'B0),
    .probe387(1'B0),
    .probe388(1'B0),
    .probe389(1'B0),
    .probe390(1'B0),
    .probe391(1'B0),
    .probe392(1'B0),
    .probe393(1'B0),
    .probe394(1'B0),
    .probe395(1'B0),
    .probe396(1'B0),
    .probe397(1'B0),
    .probe398(1'B0),
    .probe399(1'B0),
    .probe400(1'B0),
    .probe401(1'B0),
    .probe402(1'B0),
    .probe403(1'B0),
    .probe404(1'B0),
    .probe405(1'B0),
    .probe406(1'B0),
    .probe407(1'B0),
    .probe408(1'B0),
    .probe409(1'B0),
    .probe410(1'B0),
    .probe411(1'B0),
    .probe412(1'B0),
    .probe413(1'B0),
    .probe414(1'B0),
    .probe415(1'B0),
    .probe416(1'B0),
    .probe417(1'B0),
    .probe418(1'B0),
    .probe419(1'B0),
    .probe420(1'B0),
    .probe421(1'B0),
    .probe422(1'B0),
    .probe423(1'B0),
    .probe424(1'B0),
    .probe425(1'B0),
    .probe426(1'B0),
    .probe427(1'B0),
    .probe428(1'B0),
    .probe429(1'B0),
    .probe430(1'B0),
    .probe431(1'B0),
    .probe432(1'B0),
    .probe433(1'B0),
    .probe434(1'B0),
    .probe435(1'B0),
    .probe436(1'B0),
    .probe437(1'B0),
    .probe438(1'B0),
    .probe439(1'B0),
    .probe440(1'B0),
    .probe441(1'B0),
    .probe442(1'B0),
    .probe443(1'B0),
    .probe444(1'B0),
    .probe445(1'B0),
    .probe446(1'B0),
    .probe447(1'B0),
    .probe448(1'B0),
    .probe449(1'B0),
    .probe450(1'B0),
    .probe451(1'B0),
    .probe452(1'B0),
    .probe453(1'B0),
    .probe454(1'B0),
    .probe455(1'B0),
    .probe456(1'B0),
    .probe457(1'B0),
    .probe458(1'B0),
    .probe459(1'B0),
    .probe460(1'B0),
    .probe461(1'B0),
    .probe462(1'B0),
    .probe463(1'B0),
    .probe464(1'B0),
    .probe465(1'B0),
    .probe466(1'B0),
    .probe467(1'B0),
    .probe468(1'B0),
    .probe469(1'B0),
    .probe470(1'B0),
    .probe471(1'B0),
    .probe472(1'B0),
    .probe473(1'B0),
    .probe474(1'B0),
    .probe475(1'B0),
    .probe476(1'B0),
    .probe477(1'B0),
    .probe478(1'B0),
    .probe479(1'B0),
    .probe480(1'B0),
    .probe481(1'B0),
    .probe482(1'B0),
    .probe483(1'B0),
    .probe484(1'B0),
    .probe485(1'B0),
    .probe486(1'B0),
    .probe487(1'B0),
    .probe488(1'B0),
    .probe489(1'B0),
    .probe490(1'B0),
    .probe491(1'B0),
    .probe492(1'B0),
    .probe493(1'B0),
    .probe494(1'B0),
    .probe495(1'B0),
    .probe496(1'B0),
    .probe497(1'B0),
    .probe498(1'B0),
    .probe499(1'B0),
    .probe500(1'B0),
    .probe501(1'B0),
    .probe502(1'B0),
    .probe503(1'B0),
    .probe504(1'B0),
    .probe505(1'B0),
    .probe506(1'B0),
    .probe507(1'B0),
    .probe508(1'B0),
    .probe509(1'B0),
    .probe510(1'B0),
    .probe511(1'B0),
    .data_out_en_o(data_out_en_o),
    .reset_out_ack_o(reset_out_ack_o),
    .data_word_out_o(data_word_out_o),
    .trace_rd_addr_o(trace_rd_addr_o),
    .trace_rd_wrd_cnt_o(trace_rd_wrd_cnt_o),
    .m_axis_tvalid(),
    .m_axis_tdata(),
    .m_axis_tlast(),
    .m_axis_tready(1'B1),
    .max_depth_ext_strg_i(10'B1),
    .trigger_tb_o(),
    .last_flag_o(),
    .gap_count_o(),
    .trigger_sample_o()
  );
endmodule
