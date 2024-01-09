-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Fri Nov 17 23:22:38 2023
-- Host        : matthew-xilinx running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpm_pcie_pio_emb_mem_gen_0_0_sim_netlist.vhdl
-- Design      : cpm_pcie_pio_emb_mem_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvp1202-vsva2785-2MHP-e-S-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "7:0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 65536;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\ : STD_LOGIC;
  signal \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP_HIERARCHY of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "yes";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 15;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 65536;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "inst/gen_xpm.gen_base.xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "RAMB36E5";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\ : label is 15;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2\ : label is "soft_lutpair0";
  attribute KEEP_HIERARCHY of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "yes";
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "p0_d8_p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 16;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 65536;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "inst/gen_xpm.gen_base.xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "RAMB36E5";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[1],WEBWEL[1] WEBWE[2]:WEBWEU[2],WEBWEL[2] WEBWE[3]:WEBWEU[3],WEBWEL[3]";
  attribute ram_addr_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 2047;
  attribute ram_offset of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 16;
  attribute ram_slice_end of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\ : label is 31;
  attribute SOFT_HLUTNM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3\ : label is "soft_lutpair1";
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0\: unisim.vcomponents.RAMB36E5_INT
    generic map(
      BWE_MODE_B => "PARITY_INTERLEAVED",
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      PR_SAVE_DATA => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDRL(11 downto 1) => addra(10 downto 0),
      ADDRARDADDRL(0) => '0',
      ADDRARDADDRU(11 downto 1) => addra(10 downto 0),
      ADDRARDADDRU(0) => '0',
      ADDRBWRADDRL(11 downto 0) => B"111111111111",
      ADDRBWRADDRU(11 downto 0) => B"111111111111",
      ARST_A_L => '0',
      ARST_A_U => '0',
      ARST_B_L => '0',
      ARST_B_U => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXAL => '0',
      CASDOMUXAU => '0',
      CASDOMUXBL => '0',
      CASDOMUXBU => '0',
      CASDOMUXEN_AL => '1',
      CASDOMUXEN_AU => '1',
      CASDOMUXEN_BL => '1',
      CASDOMUXEN_BU => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXAL => '0',
      CASOREGIMUXAU => '0',
      CASOREGIMUXBL => '0',
      CASOREGIMUXBU => '0',
      CASOREGIMUXEN_AL => '1',
      CASOREGIMUXEN_AU => '1',
      CASOREGIMUXEN_BL => '1',
      CASOREGIMUXEN_BU => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLKL => clka,
      CLKARDCLKU => clka,
      CLKBWRCLKL => '0',
      CLKBWRCLKU => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(15 downto 0),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTADOUT_UNCONNECTED\(31 downto 16),
      DOUTADOUT(15 downto 0) => douta(15 downto 0),
      DOUTBDOUT(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTBDOUT_UNCONNECTED\(31 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPIPECEL => '1',
      ENARDENL => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\,
      ENARDENU => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\,
      ENBWRENL => '0',
      ENBWRENU => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      REGCEAREGCEL => '1',
      REGCEAREGCEU => '1',
      REGCEBL => '1',
      REGCEBU => '1',
      RSTRAMARSTRAML => rsta,
      RSTRAMARSTRAMU => rsta,
      RSTRAMBL => '0',
      RSTRAMBU => '0',
      RSTREGARSTREGL => '0',
      RSTREGARSTREGU => '0',
      RSTREGBL => '0',
      RSTREGBU => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_SBITERR_UNCONNECTED\,
      SLEEPL => '0',
      SLEEPU => '0',
      WEAL(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\,
      WEAL(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\,
      WEAL(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\,
      WEAL(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\,
      WEAU(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\,
      WEAU(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\,
      WEAU(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\,
      WEAU(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\,
      WEBWEL(3 downto 0) => B"1111",
      WEBWEU(3 downto 0) => B"1111",
      WE_IND_PARITY => '1'
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(1),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(0),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_0_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1\: unisim.vcomponents.RAMB36E5_INT
    generic map(
      BWE_MODE_B => "PARITY_INTERLEAVED",
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      PR_SAVE_DATA => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDRL(11 downto 1) => addra(10 downto 0),
      ADDRARDADDRL(0) => '0',
      ADDRARDADDRU(11 downto 1) => addra(10 downto 0),
      ADDRARDADDRU(0) => '0',
      ADDRBWRADDRL(11 downto 0) => B"111111111111",
      ADDRBWRADDRU(11 downto 0) => B"111111111111",
      ARST_A_L => '0',
      ARST_A_U => '0',
      ARST_B_L => '0',
      ARST_B_U => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXAL => '0',
      CASDOMUXAU => '0',
      CASDOMUXBL => '0',
      CASDOMUXBU => '0',
      CASDOMUXEN_AL => '1',
      CASDOMUXEN_AU => '1',
      CASDOMUXEN_BL => '1',
      CASDOMUXEN_BU => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXAL => '0',
      CASOREGIMUXAU => '0',
      CASOREGIMUXBL => '0',
      CASOREGIMUXBU => '0',
      CASOREGIMUXEN_AL => '1',
      CASOREGIMUXEN_AU => '1',
      CASOREGIMUXEN_BL => '1',
      CASOREGIMUXEN_BU => '1',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLKL => clka,
      CLKARDCLKU => clka,
      CLKBWRCLKL => '0',
      CLKBWRCLKU => '0',
      DBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 16) => B"0000000000000000",
      DINADIN(15 downto 0) => dina(31 downto 16),
      DINBDIN(31 downto 0) => B"11111111111111111111111111111111",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 16) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTADOUT_UNCONNECTED\(31 downto 16),
      DOUTADOUT(15 downto 0) => douta(31 downto 16),
      DOUTBDOUT(31 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTBDOUT_UNCONNECTED\(31 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPIPECEL => '1',
      ENARDENL => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\,
      ENARDENU => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\,
      ENBWRENL => '0',
      ENBWRENU => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      REGCEAREGCEL => '1',
      REGCEAREGCEU => '1',
      REGCEBL => '1',
      REGCEBU => '1',
      RSTRAMARSTRAML => rsta,
      RSTRAMARSTRAMU => rsta,
      RSTRAMBL => '0',
      RSTRAMBU => '0',
      RSTREGARSTREGL => '0',
      RSTREGARSTREGU => '0',
      RSTREGBL => '0',
      RSTREGBU => '0',
      SBITERR => \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_SBITERR_UNCONNECTED\,
      SLEEPL => '0',
      SLEEPU => '0',
      WEAL(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\,
      WEAL(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\,
      WEAL(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\,
      WEAL(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\,
      WEAU(3) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\,
      WEAU(2) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\,
      WEAU(1) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\,
      WEAU(0) => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\,
      WEBWEL(3 downto 0) => B"1111",
      WEBWEU(3 downto 0) => B"1111",
      WE_IND_PARITY => '1'
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsta,
      I1 => ena,
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_1_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(3),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_2_n_0\
    );
\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ena,
      I1 => wea(2),
      O => \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_bram_1_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute C_ADDRA_WIDTH_ACTUAL : integer;
  attribute C_ADDRA_WIDTH_ACTUAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 11;
  attribute C_ADDRB_WIDTH_ACTUAL : integer;
  attribute C_ADDRB_WIDTH_ACTUAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 11;
  attribute C_ADDR_WIDTH_A : integer;
  attribute C_ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 13;
  attribute C_ADDR_WIDTH_B : integer;
  attribute C_ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 13;
  attribute C_ALGORITHM : string;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "auto";
  attribute C_AUTO_SLEEP_TIME : integer;
  attribute C_AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_BYTE_WRITE_WIDTH_A : integer;
  attribute C_BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 8;
  attribute C_BYTE_WRITE_WIDTH_B : integer;
  attribute C_BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 8;
  attribute C_CASCADE_HEIGHT : integer;
  attribute C_CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_CLOCKING_MODE : integer;
  attribute C_CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_Component_Name : string;
  attribute C_Component_Name of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "cpm_pcie_pio_emb_mem_gen_0_0";
  attribute C_ECC_BIT_RANGE : string;
  attribute C_ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "7:0";
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_ECC_TYPE : string;
  attribute C_ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "NONE";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute C_ENABLE_INIT_FILE_ECC : integer;
  attribute C_ENABLE_INIT_FILE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_IGNORE_INIT_SYNTH : integer;
  attribute C_IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_MEMORY_INIT_FILE : string;
  attribute C_MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "none";
  attribute C_MEMORY_INIT_PARAM : string;
  attribute C_MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "0";
  attribute C_MEMORY_OPTIMIZATION : integer;
  attribute C_MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute C_MEMORY_PRIMITIVE : integer;
  attribute C_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 2;
  attribute C_MEMORY_SIZE : integer;
  attribute C_MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 65536;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_MESSAGE_CONTROL : integer;
  attribute C_MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_READ_DATA_WIDTH_A : integer;
  attribute C_READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 32;
  attribute C_READ_DATA_WIDTH_B : integer;
  attribute C_READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 32;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute C_READ_RESET_VALUE_A : string;
  attribute C_READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "0";
  attribute C_READ_RESET_VALUE_B : string;
  attribute C_READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "0";
  attribute C_RST_MODE_A : string;
  attribute C_RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "SYNC";
  attribute C_RST_MODE_B : string;
  attribute C_RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "SYNC";
  attribute C_SIM_ASSERT_CHK : integer;
  attribute C_SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_USE_EMBEDDED_CONSTRAINT : integer;
  attribute C_USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_VERSION : integer;
  attribute C_VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_WAKEUP_TIME : integer;
  attribute C_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_WRITE_DATA_WIDTH_A : integer;
  attribute C_WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 32;
  attribute C_WRITE_DATA_WIDTH_B : integer;
  attribute C_WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 32;
  attribute C_WRITE_MODE_A : integer;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_WRITE_MODE_B : integer;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute C_WRITE_PROTECT : integer;
  attribute C_WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute C_XPM_SELECT : integer;
  attribute C_XPM_SELECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute MEMORY_INIT_FILE_ECC : string;
  attribute MEMORY_INIT_FILE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "256'b0110001101110000011011010101111101110000011000110110100101100101010111110111000001101001011011110101111101100101011011010110001001011111011011010110010101101101010111110110011101100101011011100101111100110000010111110011000000101110011011010110010101101101";
  attribute NO_MEMORY_INIT : integer;
  attribute NO_MEMORY_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is 0;
  attribute P_MEMORY_INIT_FILE : string;
  attribute P_MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "none";
  attribute P_MEMORY_OPTIMIZATION : string;
  attribute P_MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "true";
  attribute P_RAM_DECOMP : string;
  attribute P_RAM_DECOMP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 : entity is "auto";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7 is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_xpm.gen_base.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_xpm.gen_base.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_xpm.gen_base.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_xpm.gen_base.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_xpm.gen_base.xpm_memory_base_inst_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 8;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "7:0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 31;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 2047;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 65536;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE_string : string;
  attribute P_ECC_MODE_string of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 4;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 4;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 8;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_xpm.gen_base.xpm_memory_base_inst\ : label is 32;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_xpm.gen_base.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(10 downto 0) => addra(12 downto 2),
      addrb(10 downto 0) => B"00000000000",
      clka => clka,
      clkb => '0',
      dbiterra => \NLW_gen_xpm.gen_base.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_xpm.gen_base.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => \NLW_gen_xpm.gen_base.xpm_memory_base_inst_doutb_UNCONNECTED\(31 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => rsta,
      rstb => '0',
      sbiterra => \NLW_gen_xpm.gen_base.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_xpm.gen_base.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(3 downto 0) => wea(3 downto 0),
      web(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cpm_pcie_pio_emb_mem_gen_0_0,emb_mem_gen_v1_0_7,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "emb_mem_gen_v1_0_7,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_ADDRA_WIDTH_ACTUAL : integer;
  attribute C_ADDRA_WIDTH_ACTUAL of inst : label is 11;
  attribute C_ADDRB_WIDTH_ACTUAL : integer;
  attribute C_ADDRB_WIDTH_ACTUAL of inst : label is 11;
  attribute C_ADDR_WIDTH_A : integer;
  attribute C_ADDR_WIDTH_A of inst : label is 13;
  attribute C_ADDR_WIDTH_B : integer;
  attribute C_ADDR_WIDTH_B of inst : label is 13;
  attribute C_ALGORITHM : string;
  attribute C_ALGORITHM of inst : label is "auto";
  attribute C_AUTO_SLEEP_TIME : integer;
  attribute C_AUTO_SLEEP_TIME of inst : label is 0;
  attribute C_BYTE_WRITE_WIDTH_A : integer;
  attribute C_BYTE_WRITE_WIDTH_A of inst : label is 8;
  attribute C_BYTE_WRITE_WIDTH_B : integer;
  attribute C_BYTE_WRITE_WIDTH_B of inst : label is 8;
  attribute C_CASCADE_HEIGHT : integer;
  attribute C_CASCADE_HEIGHT of inst : label is 0;
  attribute C_CLOCKING_MODE : integer;
  attribute C_CLOCKING_MODE of inst : label is 0;
  attribute C_Component_Name : string;
  attribute C_Component_Name of inst : label is "cpm_pcie_pio_emb_mem_gen_0_0";
  attribute C_ECC_BIT_RANGE : string;
  attribute C_ECC_BIT_RANGE of inst : label is "7:0";
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of inst : label is 0;
  attribute C_ECC_TYPE : string;
  attribute C_ECC_TYPE of inst : label is "NONE";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of inst : label is 1;
  attribute C_ENABLE_INIT_FILE_ECC : integer;
  attribute C_ENABLE_INIT_FILE_ECC of inst : label is 0;
  attribute C_IGNORE_INIT_SYNTH : integer;
  attribute C_IGNORE_INIT_SYNTH of inst : label is 0;
  attribute C_MEMORY_INIT_FILE : string;
  attribute C_MEMORY_INIT_FILE of inst : label is "none";
  attribute C_MEMORY_INIT_PARAM : string;
  attribute C_MEMORY_INIT_PARAM of inst : label is "0";
  attribute C_MEMORY_OPTIMIZATION : integer;
  attribute C_MEMORY_OPTIMIZATION of inst : label is 1;
  attribute C_MEMORY_PRIMITIVE : integer;
  attribute C_MEMORY_PRIMITIVE of inst : label is 2;
  attribute C_MEMORY_SIZE : integer;
  attribute C_MEMORY_SIZE of inst : label is 65536;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of inst : label is 0;
  attribute C_MESSAGE_CONTROL : integer;
  attribute C_MESSAGE_CONTROL of inst : label is 0;
  attribute C_READ_DATA_WIDTH_A : integer;
  attribute C_READ_DATA_WIDTH_A of inst : label is 32;
  attribute C_READ_DATA_WIDTH_B : integer;
  attribute C_READ_DATA_WIDTH_B of inst : label is 32;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of inst : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of inst : label is 1;
  attribute C_READ_RESET_VALUE_A : string;
  attribute C_READ_RESET_VALUE_A of inst : label is "0";
  attribute C_READ_RESET_VALUE_B : string;
  attribute C_READ_RESET_VALUE_B of inst : label is "0";
  attribute C_RST_MODE_A : string;
  attribute C_RST_MODE_A of inst : label is "SYNC";
  attribute C_RST_MODE_B : string;
  attribute C_RST_MODE_B of inst : label is "SYNC";
  attribute C_SIM_ASSERT_CHK : integer;
  attribute C_SIM_ASSERT_CHK of inst : label is 0;
  attribute C_USE_EMBEDDED_CONSTRAINT : integer;
  attribute C_USE_EMBEDDED_CONSTRAINT of inst : label is 0;
  attribute C_VERSION : integer;
  attribute C_VERSION of inst : label is 0;
  attribute C_WAKEUP_TIME : integer;
  attribute C_WAKEUP_TIME of inst : label is 0;
  attribute C_WRITE_DATA_WIDTH_A : integer;
  attribute C_WRITE_DATA_WIDTH_A of inst : label is 32;
  attribute C_WRITE_DATA_WIDTH_B : integer;
  attribute C_WRITE_DATA_WIDTH_B of inst : label is 32;
  attribute C_WRITE_MODE_A : integer;
  attribute C_WRITE_MODE_A of inst : label is 0;
  attribute C_WRITE_MODE_B : integer;
  attribute C_WRITE_MODE_B of inst : label is 0;
  attribute C_WRITE_PROTECT : integer;
  attribute C_WRITE_PROTECT of inst : label is 1;
  attribute C_XPM_SELECT : integer;
  attribute C_XPM_SELECT of inst : label is 0;
  attribute MEMORY_INIT_FILE_ECC : string;
  attribute MEMORY_INIT_FILE_ECC of inst : label is "256'b0110001101110000011011010101111101110000011000110110100101100101010111110111000001101001011011110101111101100101011011010110001001011111011011010110010101101101010111110110011101100101011011100101111100110000010111110011000000101110011011010110010101101101";
  attribute NO_MEMORY_INIT : integer;
  attribute NO_MEMORY_INIT of inst : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of inst : label is 0;
  attribute P_MEMORY_INIT_FILE : string;
  attribute P_MEMORY_INIT_FILE of inst : label is "none";
  attribute P_MEMORY_OPTIMIZATION : string;
  attribute P_MEMORY_OPTIMIZATION of inst : label is "true";
  attribute P_RAM_DECOMP : string;
  attribute P_RAM_DECOMP of inst : label is "auto";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute X_INTERFACE_INFO of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_INFO of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of douta : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_emb_mem_gen_v1_0_7
     port map (
      addra(12 downto 2) => addra(12 downto 2),
      addra(1 downto 0) => B"00",
      addrb(12 downto 0) => B"0000000000000",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_inst_dbiterrb_UNCONNECTED,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_inst_doutb_UNCONNECTED(31 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => rsta,
      rstb => '0',
      sbiterra => NLW_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_inst_sbiterrb_UNCONNECTED,
      sleep => '0',
      wea(3 downto 0) => wea(3 downto 0),
      web(3 downto 0) => B"0000"
    );
end STRUCTURE;
