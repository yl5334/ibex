#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat May  4 15:19:02 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.16-s078_1 (64bit) 12/07/2022 12:07 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.16-s078_1 NR221206-1807/21_16-UB (database version 18.20.600) {superthreading v2.17}
#@(#)CDS: AAE 21.16-s035 (64bit) 12/07/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.16-s024_1 () Dec  5 2022 05:41:45 ( )
#@(#)CDS: SYNTECH 21.16-s009_1 () Nov  9 2022 03:47:50 ( )
#@(#)CDS: CPE v21.16-s066
#@(#)CDS: IQuantus/TQuantus 21.1.1-s939 (64bit) Wed Nov 9 09:34:24 PST 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_verilog ../../../dc_syn/dc/ibex/ibex_top.nl.v
set init_io_file ../../innovus/ibex/ibex_top.io
set init_lef_file {/courses/ee6321/share/ibm13rflpvt/lef/ibm13_8lm_2thick_3rf_tech.lef  /courses/ee6321/share/ibm13rflpvt/lef/ibm13rflpvt_macros.lef}
set init_mmmc_file ./mmmc.view
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1
set init_import_mode {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1}
set init_pwr_net VDD
set init_gnd_net VSS
set_message -no_limit
init_design
floorPlan -s 738 738.0 8.4 8.4 8.4 8.4
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
redraw
addRing -nets {VDD VSS} -type core_rings -layer {top M3 bottom M3 left M2 right M2} -width 2.4 -spacing 1.2 -center 1
redraw
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MQ -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction vertical -area {5 5 748 748}
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MG -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction horizontal -area {5 5 748 748}
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
sroute -nets VDD -padPinLayerRange {1 3}
sroute -nets VSS -padPinLayerRange {1 3}
saveDesign ibex_top.floorplan_power_ring.enc
loadIoFile ./ibex_top.io
redraw
saveDesign ibex_top.floorplan.enc
setDesignMode -process 130 -flowEffort standard
setRouteMode -earlyGlobalMaxRouteLayer 3
setPinAssignMode -maxLayer 3
setNanoRouteMode -routeTopRoutingLayer 3
setDesignMode -topRoutingLayer M3
set delaycal_use_default_delay_limit 1000
setPlaceMode -timingDriven true -congEffort high
setOptMode -fixFanoutLoad true -effort high -moveInst true -reclaimArea true
place_design
redraw
checkPlace
buildTimingGraph
place_design -incremental
optDesign -preCTS
redraw
saveDesign ibex_top.placed.enc
setAnalysisMode -cppr both
setAnalysisMode -analysisType bcwc
setNanoRouteMode -quiet -routeTopRoutingLayer 3
create_route_type -name top -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
create_route_type -name trunk -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
create_route_type -name leaf -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
set_ccopt_property route_type -net_type top top
set_ccopt_property route_type -net_type trunk trunk
set_ccopt_property route_type -net_type leaf leaf
set_ccopt_property inverter_cells {CLKINVX1TS CLKINVX2TS CLKINVX3TS CLKINVX4TS CLKINVX6TS CLKINVX8TS CLKINVX12TS CLKINVX16TS CLKINVX20TS}
set_ccopt_property buffer_cells {CLKBUFX2TS CLKBUFX3TS CLKBUFX4TS CLKBUFX6TS CLKBUFX8TS CLKBUFX12TS CLKBUFX16TS CLKBUFX20TS}
set_ccopt_property use_inverters true
set_ccopt_property target_max_trans 500ps
set_ccopt_property target_skew 300ps
create_ccopt_clock_tree_spec -file ccopt_clock_tree.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk_i true
create_ccopt_clock_tree -name clk_i -source clk_i -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -early -clock_tree clk_i 0.020
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -late -clock_tree clk_i 0.020
set_ccopt_property source_driver -clock_tree clk_i {INVX1TS/A INVX1TS/Y}
set_ccopt_property source_max_capacitance -clock_tree clk_i 0.005
set_ccopt_property clock_period -pin clk_i 100
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk_i/typical_constraint -sources clk_i -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_i/typical_constraint true
set_ccopt_property extracted_from_clock_name -skew_group clk_i/typical_constraint clk_i
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk_i/typical_constraint typical_constraint
set_ccopt_property extracted_from_delay_corners -skew_group clk_i/typical_constraint typical_dly
set_ccopt_property ideal_net -net clk_i true
set_ccopt_property annotated_transition -delay_corner typical_dly -early -rise -pin clk_i 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -fall -pin clk_i 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -rise -pin clk_i 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -fall -pin clk_i 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -rise -pin core_clock_gate_i/U2/B 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -fall -pin core_clock_gate_i/U2/B 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -rise -pin core_clock_gate_i/U2/B 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -fall -pin core_clock_gate_i/U2/B 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -rise -pin core_busy_q_reg_0_/CK 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -fall -pin core_busy_q_reg_0_/CK 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -rise -pin core_busy_q_reg_0_/CK 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -fall -pin core_busy_q_reg_0_/CK 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -rise -pin core_clock_gate_i/en_latch_reg/GN 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -early -fall -pin core_clock_gate_i/en_latch_reg/GN 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -rise -pin core_clock_gate_i/en_latch_reg/GN 0.000
set_ccopt_property annotated_transition -delay_corner typical_dly -late -fall -pin core_clock_gate_i/en_latch_reg/GN 0.000
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
redraw
saveDesign ibex_top.clock.enc
getPlaceMode -doneQuickCTS -quiet
setAttribute -net rst_ni -weight 5 -avoid_detour true -preferred_extra_space 2 -bottom_preferred_routing_layer 2 -top_preferred_routing_layer 3
selectNet rst_ni
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeSelectedNetOnly true
setNanoRouteMode -quiet -routeTopRoutingLayer 3
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
globalDetailRoute
redraw
verify_drc
deselectAll
setAttribute -net * -weight 5 -avoid_detour true -preferred_extra_space 1 -bottom_preferred_routing_layer 1 -top_preferred_routing_layer 3
selectNet *
deselectNet VDD
deselectNet VSS
setNanoRouteMode -quiet -routeSelectedNetOnly false
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeTdrEffort 10
setNanoRouteMode -quiet -drouteFixAntenna true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiLengthLimit 200
setNanoRouteMode -quiet -routeSiEffort high
setNanoRouteMode -quiet -routeWithViaInPin true
setNanoRouteMode -quiet -routeWithViaOnlyForStandardCellPin false
setNanoRouteMode -quiet -droutePostRouteSwapVia none
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort high
setNanoRouteMode -routeTopRoutingLayer 3
setNanoRouteMode -routeBottomRoutingLayer 1
globalDetailRoute
redraw
verify_drc
setExtractRCMode -engine postRoute -effortLevel low -coupled true
extractRC
setAnalysisMode -analysisType onChipVariation
setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -drcMargin 0.0
setOptMode -holdTargetSlack 0.2 -setupTargetSlack 0.0
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false
setOptMode -moveInst true
setOptMode -reclaimArea true
setOptMode -fixDRC true
setOptMode -fixCap true
optDesign
globalNetConnect VDD -type pgpin -pin VDD -override
globalNetConnect VSS -type pgpin -pin VSS -override
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
applyGlobalNets
globalDetailRoute
saveDesign ibex_top.routed.enc
verify_drc
verify_drc
addFiller -cell FILL16TS FILL1TS FILL2TS FILL32TS FILL4TS FILL64TS FILL8TS -prefix IBM13RFLPVT_FILLER
verify_drc
redraw
clearDrc
verify_drc
verifyConnectivity -type regular -error 1000 -warning 50
verifyProcessAntenna
report_power -leakage -cap -nworst -pg_pin -outfile ibex_top.power.rpt
write_lef_abstract ibex_top.lef -5.7 -PgpinLayers {1 2 3 4 5} -specifyTopLayer 5 -stripePin
defOut -floorplan -netlist -routing ibex_top.final.def
streamOut ibex_top.gds -mapFile /courses/ee6321/share/ibm13rflpvt/mapfiles/enc2gds.map -libName ibm13rflpvt -structureName ibex_top -units 1000 -mode ALL
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL1TS FILL2TS FILL4TS FILL8TS FILL16TS FILL32TS FILL64TS} ibex_top.phy.v
saveNetlist ibex_top.nophy.v
extractRC -outfile ibex_top.cap
rcOut -spef ibex_top.spef
write_sdf -version 2.1 "$design_name.sdf"
write_sdf -version 2.1 -target_application verilog "$design_name.verilog.sdf"
setAnalysisMode -checkType hold -useDetailRC true
report_timing -check_type hold -nworst 10 > "$design_name.hold.rpt"
setAnalysisMode -checkType setup -useDetailRC true
report_timing -check_type setup -nworst 10 > "$design_name.setup.rpt"
reportCapViolation -outfile final_cap.tarpt
verifyConnectivity -type all
summaryReport -outfile ibex_top.summary.rpt
reportCritNet -outfile ibex_top.critnet.rpt
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView ameba
deselectAll
selectObject Module u_ibex_core
deselectAll
gui_ungroup_hinst
selectObject Module u_ibex_core
deselectAll
gui_ungroup_hinst u_ibex_core
deselectAll
gui_ungroup_hinst gen_regfile_ff_register_file_i
gui_group_hinst gen_regfile_ff_register_file_i
deselectAll
setDrawView fplan
setDrawView place
zoomBox 38.52400 87.78300 708.61800 687.66000
zoomBox 177.00900 217.23500 588.53100 585.63500
zoomBox 283.37700 315.71400 498.19400 508.02100
zoomBox 347.99600 375.54000 443.31300 460.86900
zoomBox 376.66900 402.08600 418.96200 439.94700
zoomBox 347.99400 375.53700 443.31400 460.86900
zoomBox 283.36800 315.70400 498.19700 508.02200
zoomBox 137.72000 180.85700 621.89300 614.29500
zoomBox -26.78800 28.55000 761.60600 734.33100
zoomBox -102.02200 -41.10500 825.50100 789.22600
zoomBox -190.53200 -123.05100 900.67100 853.80900
zoomBox -102.02200 -41.10500 825.50100 789.22600
