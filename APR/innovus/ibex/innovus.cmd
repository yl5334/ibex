#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon May  6 21:49:10 2024                
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
floorPlan -s 738.0 540.0 8.4 8.4 8.4 8.4
redraw
fit
setDrawView fplan
zoomBox -119.81400 -191.42500 856.98600 683.02000
zoomBox -330.45700 -442.83500 1021.51800 767.47100
zoomBox -464.41000 -602.71400 1126.14900 821.17600
zoomBox -584.96400 -776.28300 1286.28200 898.88200
pan -515.62200 -196.16000
gui_ungroup_hinst u_ibex_core
pan 455.10300 377.56000
redraw
deselectAll
selectObject Module u_ibex_core/ex_block_i
deselectAll
selectObject Module u_ibex_core/ex_block_i
gui_select -rect {-313.83900 540.61000 -59.65900 504.29900}
deselectAll
selectObject Module u_ibex_core/ex_block_i
deselectAll
selectObject Module u_ibex_core/ex_block_i
uiSetTool move
setObjFPlanBox Module u_ibex_core/ex_block_i 339.69 264.333 680.964 516.084
zoomBox -517.30500 -572.33400 1073.25500 851.55700
setObjFPlanBox Module u_ibex_core/ex_block_i 427.15400 328.91500 680.80000 516.00000
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 162.437 156.004 304.531 260.824
zoomBox -400.63700 -460.91300 951.34000 749.39500
zoomBox -301.46900 -366.20500 847.71200 662.55700
zoomBox -217.17600 -285.70300 759.62800 588.74500
setObjFPlanBox Module u_ibex_core/load_store_unit_i 162.40000 173.00300 257.95800 260.40000
setObjFPlanBox Module u_ibex_core/load_store_unit_i 661.543 175.264 757.143 261.664
setObjFPlanBox Module u_ibex_core/load_store_unit_i 620.026 179.055 715.626 265.455
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 382.972 26.787 636.572 213.987
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 607.364 425.276 702.964 511.676
zoomBox -237.91500 -380.92300 911.26600 647.83900
pan -114.47200 -154.90100
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 15.816 105.553 448.969 425.081
setObjFPlanBox Module gen_regfile_ff_register_file_i 16.00000 105.60000 332.95900 349.02200
setObjFPlanBox Module gen_regfile_ff_register_file_i 29.38 32.754 346.18 277.554
pan -344.90300 -27.04900
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 59.5 333.64 270.364 489.19
setObjFPlanBox Module u_ibex_core/id_stage_i 71.493 332.4 282.293 487.2
setObjFPlanBox Module u_ibex_core/id_stage_i 71.60000 365.37600 219.97300 487.20000
setObjFPlanBox Module u_ibex_core/id_stage_i 299.058 379.667 447.458 502.067
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i -494.704 187.318 -165.556 430.124
setObjFPlanBox Module u_ibex_core/cs_registers_i -388.06700 187.31800 -165.55600 414.43500
setObjFPlanBox Module u_ibex_core/cs_registers_i 41.575 298.817 249.843 511.397
pan -542.62800 274.74100
deselectAll
selectObject Module u_ibex_core/if_stage_i
pan 560.46700 925.89400
zoomBox -737.95500 -387.74500 614.02300 822.56400
zoomBox -806.78400 -474.47500 783.77900 949.41800
zoomBox -887.75900 -576.51100 983.49200 1098.65800
setObjFPlanBox Module u_ibex_core/if_stage_i 445.327 235.284 624.165 367.209
zoomBox -477.98500 -350.79900 873.99400 859.51100
zoomBox -317.95200 -262.91200 831.23100 765.85200
zoomBox -187.05300 -216.97500 789.75300 657.47500
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 166.715 296.822 420.315 484.022
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 461.134 11.887 669.534 224.287
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 281.792 346.946 535.392 534.146
setObjFPlanBox Module u_ibex_core/ex_block_i 75.624 340.482 329.224 527.682
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 578.468 266.734 726.868 389.134
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 251.248 344.655 504.848 531.855
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 35.028 377.538 183.428 499.938
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 345.974 352.045 599.574 539.245
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 642.582 432.318 738.182 518.718
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 370.009 350.4 623.609 537.6
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 205.793 380.463 354.193 502.863
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 13.03 370.411 191.83 503.611
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 478.891 71.392 687.291 283.792
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 101.228 43.709 418.028 288.509
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 376.318 337.763 629.918 524.963
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 216.973 379.2 365.373 501.6
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 24.573 372.0 203.373 505.2
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 102.464 63.355 419.264 308.155
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 471.218 94.874 679.618 307.274
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 642.4 394.026 738.0 480.426
setObjFPlanBox Module u_ibex_core/load_store_unit_i 641.136 413.818 736.736 500.218
deselectAll
selectObject Module u_ibex_core/if_stage_i
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
redraw
addRing -nets {VDD VSS} -type core_rings -layer {top M3 bottom M3 left M2 right M2} -width 2.4 -spacing 1.2 -center 1
redraw
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MQ -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction vertical -area {5 5 748 550}
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MG -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction horizontal -area {5 5 748 550}
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
sroute -nets VDD -padPinLayerRange {1 3}
sroute -nets VSS -padPinLayerRange {1 3}
saveDesign ibex_top.floorplan_power_ring.enc
deselectAll
selectWire 5.0000 449.0000 748.0000 451.0000 5 VDD
setDrawView ameba
setDrawView fplan
loadIoFile ./ibex_top.io
redraw
saveDesign ibex_top.floorplan.enc
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView fplan
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
verify_drc
optDesign -preCTS
redraw
saveDesign ibex_top.placed.enc
verify_drc
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
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -early -clock_tree clk_i 0.010
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -late -clock_tree clk_i 0.010
set_ccopt_property source_driver -clock_tree clk_i {INVX1TS/A INVX1TS/Y}
set_ccopt_property source_max_capacitance -clock_tree clk_i 0.005
set_ccopt_property clock_period -pin clk_i 10
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
verify_drc
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
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView fplan
setDrawView ameba
zoomBox -138.52900 -125.23400 691.75700 618.04900
zoomBox -287.45900 -290.06300 861.72600 738.70300
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
deselectAll
selectObject Module u_ibex_core/ex_block_i
setDrawView place
setDrawView ameba
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i -145.762 85.88 62.638 298.28
uiSetTool select
deselectAll
selectObject Module u_ibex_core/if_stage_i
deselectAll
setDrawView place
setLayerPreference violation -isVisible 0
zoomBox -107.58900 -83.37800 722.69800 659.90600
zoomBox 22.36600 66.22600 622.25000 603.25000
zoomBox 117.33500 175.40800 550.75300 563.41000
zoomBox 73.69900 125.14300 583.60300 581.61600
zoomBox 22.36300 66.00800 622.25000 603.03500
zoomBox -38.03300 -3.56300 667.71700 628.23400
zoomBox -109.08700 -85.41100 721.20800 657.88000
pan 61.22500 17.23200
setLayerPreference violation -isVisible 1
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView fplan
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
setDrawView ameba
setDrawView fplan
setLayerPreference violation -isVisible 0
