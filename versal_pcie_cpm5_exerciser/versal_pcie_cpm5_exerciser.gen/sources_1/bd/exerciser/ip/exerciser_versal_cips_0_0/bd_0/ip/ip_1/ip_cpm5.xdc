# DPLL ref Clock(156.25MHz)
create_clock -period 6.4 -name dpll_ref_clk [get_pins bufgps_pcie_dpll_ref_clk/I]

# GT Reference clock 1
create_clock -period 10.0 -name GT_REFCLK1 [get_pins IBUFDS_GTE5_PCIeA1_inst/I]


# DPLL1 Clock(312.5MHz)
create_clock -period 3.2 -name dpll1_dco_clk [get_pins bufgps_pcie_dpll1_dco_clk/I]

#Set asynchronous group
set_clock_groups -name dpll1_clk_grp -asynchronous -group [get_clocks dpll1_dco_clk] -group [get_clocks dpll_ref_clk] -group [get_clocks -of_objects [get_pins CPM_INST/CPM5RCLK1INT0]]

# Async reset
set_false_path -through [get_pins DPLL1_FD_CAL_inst/rst]
set_false_path -through [get_pins DPLL1_FD_CAL_inst/rst_o]

# PCIE 1 GT Locations
set_property LOC GTYP_QUAD_X0Y4 [get_cells gt_quad_inst2/inst/quad_inst]
set_property LOC GTYP_QUAD_X0Y5 [get_cells gt_quad_inst3/inst/quad_inst]

# GT Reference clock 1 Location
set_property LOC GTYP_REFCLK_X0Y8 [get_cells IBUFDS_GTE5_PCIeA1_inst]


set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XPD[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XUSRCLK]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XLATCLK]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XRATE[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XPOLARITY]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_?XPRBSSEL[*]]

set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/APB3*]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/AXISCLK]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/*_AXIS_*]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGIN*]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/PCIELTSSM[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/DEBUGTRACECLK]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/DEBUGTRACEREADY]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/REFCLK?_CLKTESTSIG]

set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXSLIDE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMSAS]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_DMONITORCLK]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_EYESCANTRIGGER]

set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMINIT]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCOMWAKE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXINHIBIT]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXPIPPMEN]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXDATA[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXDETECTRX]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXELECIDLE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXCTRL*[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXHEADER[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXONESZEROS]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXSEQUENCE[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXPRBSFORCEERR]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_TXPIPPMSTEPSIZE[*]]

set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXCHBONDI[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXEQTRAINING]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH?_RXGEARBOXSLIP]


create_waiver -type Methodology -id TIMING-3 -tags 1118802 -scoped -internal -description "Waive off Clock generation" -objects [get_clocks GT_REFCLK*]
create_waiver -type Methodology -id TIMING-4 -tags 1118802 -scoped -internal -description "Waive off Downstream Clock re-declaration" -objects [get_clocks dpll?_dco_clk]
