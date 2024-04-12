#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Apr 11 01:10:21 2024                
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
set init_io_file ./ibex.io
set init_lef_file {/courses/ee6321/share/ibm13rflpvt/lef/ibm13_8lm_2thick_3rf_tech.lef  /courses/ee6321/share/ibm13rflpvt/lef/ibm13rflpvt_macros.lef}
set init_mmmc_file ./mmmc.view
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1
set init_import_mode {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1}
set init_pwr_net VDD
set init_gnd_net VSS
set_message -no_limit
init_design
floorPlan -s 547.2 547.2 8.4 8.4 8.4 8.4
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
redraw
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
sroute -nets VDD -padPinLayerRange {1 3}
sroute -nets VSS -padPinLayerRange {1 3}
loadIoFile ./ibex_top.io
redraw
saveDesign ibex_top.floorplan.enc
setDesignMode -process 130 -flowEffort standard
setRouteMode -earlyGlobalMaxRouteLayer 3
setPinAssignMode -maxLayer 3
setNanoRouteMode -routeTopRoutingLayer 3
setDesignMode -topRoutingLayer M3
setPlaceMode -timingDriven true -congEffort high
setOptMode -fixFanoutLoad true -effort high -moveInst true -reclaimArea true
place_design
redraw
checkPlace
buildTimingGraph
selectWire 252.1000 66.5000 254.3000 66.7000 3 u_ibex_core/ex_block_i/gen_multdiv_fast_multdiv_i/n1105
optDesign -preCTS
redraw
saveDesign ibex_top.placed.enc
selectWire 428.5000 269.7000 523.9000 269.9000 3 gen_regfile_ff_register_file_i/FE_OFN2427_FE_DBTN5_n1438
zoomBox -84.06300 -87.73300 653.97500 642.15000
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
selectWire 266.5000 54.5000 266.7000 57.1000 2 u_ibex_core/load_store_unit_i/n211
zoomBox 8.84000 5.82100 394.10100 386.82500
zoomBox 64.01300 51.94200 265.12300 250.83000
zoomBox 99.73200 79.52600 188.96700 167.77500
zoomBox 118.63000 89.76500 158.22500 128.92200
zoomBox 93.70100 76.42500 198.68800 180.25200
zoomBox 43.76300 50.24600 280.37900 284.24700
zoomBox -38.43500 7.15100 414.84800 455.42500
zoomBox -146.48700 -50.54700 591.61000 679.39400
pan 66.60500 83.70600
pan -8.15600 19.82000
pan -12.23400 33.41300
getPlaceMode -doneQuickCTS -quiet
setAttribute -net s -weight 5 -avoid_detour true -bottom_preferred_routing_layer 2 -top_preferred_routing_layer 3 -preferred_extra_space 2
selectNet resetn
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeSelectedNetOnly true
setNanoRouteMode -quiet -routeTopRoutingLayer 3
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
globalDetailRoute
redraw
setAttribute -net * -weight 5 -avoid_detour true -bottom_preferred_routing_layer 1 -top_preferred_routing_layer 3 -preferred_extra_space 1
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
deselectAll
selectWire 500.1000 200.9000 504.3000 201.1000 3 gen_regfile_ff_register_file_i/FE_OCPN5852_n
deselectAll
zoomBox 66.32000 78.60200 519.60400 526.87700
zoomBox 145.08100 139.16900 472.57900 463.04800
zoomBox 67.24600 77.08600 520.53100 525.36200
zoomBox -39.20100 -9.80400 588.18200 610.64700
zoomBox -106.48700 -65.67100 631.61100 664.27100
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
zoomBox 68.53600 80.13400 601.81200 607.51700
zoomBox -12.22700 13.23500 615.15700 633.68700
zoomBox -108.46600 -60.57500 629.63400 669.36900
setLayerPreference violation -isVisible 1
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
saveDesign ibex_top.routed.enc
selectInst gen_regfile_ff_register_file_i/U904
zoomBox 227.13900 192.63700 612.43300 573.67400
deselectAll
selectInst gen_regfile_ff_register_file_i/g_rf_flops_29__rf_reg_q_reg_11_
zoomBox 193.08000 157.82700 646.36700 606.10500
zoomBox 144.02400 116.87400 677.30300 644.26000
zoomBox 110.05500 69.21300 737.44200 689.66800
pan -181.40000 -187.57900
zoomBox -44.65500 -21.02400 488.62400 506.36200
zoomBox -21.96900 27.00000 431.31900 475.27900
zoomBox -5.48700 122.02600 272.88800 397.32500
zoomBox -66.92100 63.15100 318.37300 444.18800
zoomBox -105.99000 25.71100 347.29800 473.99000
zoomBox -151.95200 -18.33600 381.32800 509.05100
deselectAll
selectWire 343.7000 112.1000 370.3000 112.3000 3 gen_regfile_ff_register_file_i/FE_OCPN6174_n1982
deselectAll
zoomBox -189.04100 -62.70500 438.34800 557.75200
setLayerPreference violation -isVisible 0
zoomBox -239.40400 -125.09700 498.70100 604.85200
zoomBox -303.45200 -201.13900 564.90700 657.62500
pan 127.93500 103.91200
zoomBox -98.03700 -113.42400 640.06900 616.52600
zoomBox -32.17800 -40.22600 595.21200 580.23200
zoomBox -98.03800 -113.42500 640.06900 616.52600
zoomBox -35.23800 -40.43100 592.15300 580.02800
pan -27.73000 12.13900
pan 25.41900 47.95700
pan -2.31100 -4.03600
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
verify_drc
addFiller -cell fill1 -prefix IBM13_FILLER
verify_drc
redraw
selectWire 527.3000 42.1000 527.5000 104.3000 2 gen_regfile_ff_register_file_i/CTS_19
zoomBox -25.43400 -4.07400 427.85800 444.20900
zoomBox -13.90900 22.79800 313.59500 346.68300
zoomBox 28.36600 58.12800 173.68300 201.83900
zoomBox 48.04500 84.25100 123.90200 159.27000
zoomBox 57.42600 96.88200 112.23400 151.08400
zoomBox 69.79100 114.05700 98.40200 142.35200
zoomBox 56.56400 96.89300 132.42600 171.91700
zoomBox 21.49200 51.43900 222.64000 250.36400
zoomBox -53.65900 -40.18200 399.68000 408.14800
zoomBox -145.46200 -147.19800 592.72600 582.83300
setLayerPreference violation -isVisible 0
deselectAll
setLayerPreference violation -isVisible 1
setLayerPreference violation -isSelectable 0
setLayerPreference violation -isSelectable 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
clearDrc
verify_drc
verifyConnectivity -type regular -error 1000 -warning 50
verifyProcessAntenna
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
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
setLayerPreference violation -isVisible 0
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
zoomBox -362.75500 -370.14400 839.26200 818.59100
zoomBox -466.66700 -473.27500 947.47100 925.23700
zoomBox -274.43200 -278.14800 747.28400 732.27800
zoomBox -199.07300 -201.09600 669.38500 657.76600
loadFPlan ibex_top.floorplan.enc
setDrawView fplan
fit
zoomBox -108.52800 -75.09300 629.51000 654.79000
zoomBox -198.95400 -130.74000 669.32600 727.94600
zoomBox -306.74800 -197.05300 714.75800 813.16600
zoomBox -434.22900 -275.40100 767.54300 913.09200
zoomBox -584.20700 -367.57500 829.64300 1030.65200
zoomBox -760.65100 -476.01500 902.70200 1168.95800
zoomBox -690.80900 -422.25500 723.04100 975.97200
zoomBox -629.49000 -373.82500 572.28200 814.66800
pan -205.82900 231.32000
zoomBox -917.33900 -461.83200 496.51100 936.39500
gui_ungroup_hinst u_ibex_core
deselectAll
zoomBox -1026.69800 -508.24000 636.65500 1136.73300
pan 143.97400 518.45800
zoomBox -770.14900 -433.80300 643.70100 964.42400
zoomBox -678.75700 -368.18900 523.01600 820.30500
zoomBox -601.40500 -312.41600 420.10200 697.80400
zoomBox -535.65600 -265.00900 332.62500 593.67800
zoomBox -479.77000 -224.71300 258.26900 505.17100
zoomBox -535.65700 -265.01000 332.62500 593.67800
zoomBox -601.40600 -312.41700 420.10200 697.80400
pan -139.21100 343.54500
zoomBox -687.36900 -187.90700 50.67100 541.97800
zoomBox -655.10600 -136.23500 -121.87100 391.10800
zoomBox -623.27600 -78.25900 -295.80300 245.59600
zoomBox -595.84200 -39.86200 -394.73200 159.02600
zoomBox -586.39800 -32.08400 -415.45400 136.97100
zoomBox -569.01400 -16.43400 -464.03300 87.38700
zoomBox -564.57700 -12.63500 -475.34300 75.61300
zoomBox -580.58200 -26.36800 -435.27900 117.32900
zoomBox -596.61600 -40.24500 -395.50400 158.64500
zoomBox -606.81200 -49.19900 -370.21000 184.78900
zoomBox -632.92100 -72.12700 -305.44300 251.73200
zoomBox -669.05700 -103.86300 -215.79900 344.38700
zoomBox -719.07200 -148.10600 -91.72500 472.30900
zoomBox -750.87800 -176.85400 -12.82200 553.04700
zoomBox -788.29600 -210.91400 80.00500 647.79300
pan 167.90400 578.98100
pan 187.09200 431.86500
uiSetTool move
selectObject Module gen_regfile_ff_register_file_i
pan 270.24500 244.77300
zoomBox -78.14400 -127.84200 659.91200 602.05900
zoomBox -5.97000 -76.46400 621.37800 543.95200
setObjFPlanBox Module gen_regfile_ff_register_file_i 248.647 5.029 555.769 312.151
zoomBox -76.10600 -100.72700 661.95100 629.17500
zoomBox -167.25500 -131.19000 701.04900 727.51900
setObjFPlanBox Module gen_regfile_ff_register_file_i 244.003 4.8 551.203 310.8
zoomBox -308.91500 -188.75700 712.61900 821.48900
zoomBox -477.23400 -258.47500 724.57100 930.05000
pan -42.05200 172.28000
pan -48.69200 214.33200
zoomBox -626.56400 -386.97500 787.32400 1011.29000
pan -78.11500 260.41900
gui_group_hinst {}
deselectAll
selectObject Module u_ibex_core/ex_block_i
uiSetTool move
gui_group_hinst u_ibex_core
deselectAll
selectObject Module gen_regfile_ff_register_file_i
deselectAll
selectObject Module u_ibex_core
setObjFPlanBox Module u_ibex_core 5.547 156.231 414.011 564.695
gui_ungroup_hinst u_ibex_core
setObjFPlanBox Instance u_ibex_core/U36 757.819 454.327 759.819 457.927
setObjFPlanBox Instance u_ibex_core/U27 595.019 346.327 597.019 349.927
setObjFPlanBox Instance u_ibex_core/U26 606.619 457.927 608.619 461.527
setObjFPlanBox Instance u_ibex_core/U23 854.219 421.927 856.219 425.527
setObjFPlanBox Instance u_ibex_core/U22 854.619 393.127 857.419 396.727
setObjFPlanBox Instance u_ibex_core/U21 861.819 425.527 864.619 429.127
setObjFPlanBox Instance u_ibex_core/U20 864.619 425.527 866.619 429.127
setObjFPlanBox Instance u_ibex_core/U19 870.619 447.127 873.419 450.727
setObjFPlanBox Instance u_ibex_core/U18 858.619 421.927 861.419 425.527
setObjFPlanBox Instance u_ibex_core/U17 853.819 403.927 855.819 407.527
setObjFPlanBox Instance u_ibex_core/U16 854.219 396.727 857.019 400.327
setObjFPlanBox Instance u_ibex_core/U15 867.019 447.127 869.819 450.727
setObjFPlanBox Instance u_ibex_core/U11 854.219 400.327 857.019 403.927
setObjFPlanBox Instance u_ibex_core/U6 858.219 411.127 860.219 414.727
setObjFPlanBox Instance u_ibex_core/U2 799.419 454.327 801.419 457.927
setObjFPlanBox Module u_ibex_core/cs_registers_i 321.839 85.927 554.619 318.707
setObjFPlanBox Module u_ibex_core/wb_stage_i 282.246 85.927 321.839 125.52
setObjFPlanBox Module u_ibex_core/load_store_unit_i 182.144 85.927 282.246 186.029
setObjFPlanBox Module u_ibex_core/ex_block_i -80.818 85.927 182.144 348.889
setObjFPlanBox Module u_ibex_core/id_stage_i 407.185 375.185 554.619 522.619
setObjFPlanBox Module u_ibex_core/if_stage_i 233.318 375.185 407.185 549.052
setObjFPlanBox Instance u_ibex_core/FE_OFC3_rst_ni 705.419 180.727 707.019 184.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4_rst_ni 597.819 249.127 599.019 252.727
setObjFPlanBox Instance u_ibex_core/FE_OFC9_rst_ni 799.819 490.327 801.419 493.927
setObjFPlanBox Instance u_ibex_core/FE_OFC19_rst_ni 597.419 234.727 599.019 238.327
setObjFPlanBox Instance u_ibex_core/FE_OFC20_rst_ni 652.219 526.327 653.819 529.927
setObjFPlanBox Instance u_ibex_core/FE_OFC21_rst_ni 707.019 180.727 708.619 184.327
setObjFPlanBox Instance u_ibex_core/FE_OFC22_rst_ni 599.019 249.127 600.219 252.727
setObjFPlanBox Instance u_ibex_core/FE_OFC33_rst_ni 795.819 490.327 797.419 493.927
setObjFPlanBox Instance u_ibex_core/FE_OFC48_rst_ni 605.819 231.127 607.419 234.727
setObjFPlanBox Instance u_ibex_core/FE_OFC49_rst_ni 652.619 529.927 654.219 533.527
setObjFPlanBox Instance u_ibex_core/FE_OFC50_rst_ni 659.819 533.527 661.419 537.127
setObjFPlanBox Instance u_ibex_core/FE_OFC51_rst_ni 771.819 169.927 773.419 173.527
setObjFPlanBox Instance u_ibex_core/FE_OFC52_rst_ni 598.619 281.527 600.219 285.127
setObjFPlanBox Instance u_ibex_core/FE_OFC65_rst_ni 759.819 490.327 761.419 493.927
setObjFPlanBox Instance u_ibex_core/FE_OFC88_rst_ni 614.619 238.327 616.219 241.927
setObjFPlanBox Instance u_ibex_core/FE_OFC89_rst_ni 661.419 533.527 663.019 537.127
setObjFPlanBox Instance u_ibex_core/FE_OFC90_rst_ni 779.019 173.527 780.619 177.127
setObjFPlanBox Instance u_ibex_core/FE_OFC92_rst_ni 601.419 288.727 603.019 292.327
setObjFPlanBox Instance u_ibex_core/FE_OFC105_rst_ni 759.819 486.727 761.419 490.327
setObjFPlanBox Instance u_ibex_core/FE_OFC128_rst_ni 627.819 234.727 629.419 238.327
setObjFPlanBox Instance u_ibex_core/FE_OFC130_rst_ni 678.219 533.527 679.819 537.127
setObjFPlanBox Instance u_ibex_core/FE_OFC132_rst_ni 784.219 173.527 785.819 177.127
setObjFPlanBox Instance u_ibex_core/FE_OFC134_rst_ni 601.019 313.927 602.219 317.527
setObjFPlanBox Instance u_ibex_core/FE_OFC154_rst_ni 795.819 486.727 797.419 490.327
setObjFPlanBox Instance u_ibex_core/FE_OFC180_rst_ni 632.619 234.727 634.219 238.327
setObjFPlanBox Instance u_ibex_core/FE_OFC181_rst_ni 680.219 537.127 681.819 540.727
setObjFPlanBox Instance u_ibex_core/FE_OFC183_rst_ni 811.419 173.527 813.019 177.127
setObjFPlanBox Instance u_ibex_core/FE_OFC184_rst_ni 805.419 177.127 807.019 180.727
setObjFPlanBox Instance u_ibex_core/FE_OFC186_rst_ni 600.219 317.527 601.419 321.127
setObjFPlanBox Instance u_ibex_core/FE_OFC214_rst_ni 805.819 479.527 807.419 483.127
setObjFPlanBox Instance u_ibex_core/FE_OFC242_rst_ni 634.219 234.727 635.819 238.327
setObjFPlanBox Instance u_ibex_core/FE_OFC244_rst_ni 701.019 547.927 702.619 551.527
setObjFPlanBox Instance u_ibex_core/FE_OFC246_rst_ni 831.819 166.327 833.419 169.927
setObjFPlanBox Instance u_ibex_core/FE_OFC247_rst_ni 799.419 159.127 801.019 162.727
setObjFPlanBox Instance u_ibex_core/FE_OFC250_rst_ni 598.619 342.727 600.219 346.327
setObjFPlanBox Instance u_ibex_core/FE_OFC282_rst_ni 786.619 479.527 788.219 483.127
setObjFPlanBox Instance u_ibex_core/FE_OFC283_rst_ni 810.619 479.527 812.219 483.127
setObjFPlanBox Instance u_ibex_core/FE_OFC312_rst_ni 648.619 231.127 650.219 234.727
setObjFPlanBox Instance u_ibex_core/FE_OFC313_rst_ni 710.619 544.327 712.219 547.927
setObjFPlanBox Instance u_ibex_core/FE_OFC316_rst_ni 833.419 151.927 835.019 155.527
setObjFPlanBox Instance u_ibex_core/FE_OFC318_rst_ni 597.019 342.727 598.619 346.327
setObjFPlanBox Instance u_ibex_core/FE_OFC319_rst_ni 593.819 367.927 595.419 371.527
setObjFPlanBox Instance u_ibex_core/FE_OFC345_rst_ni 819.819 475.927 821.419 479.527
setObjFPlanBox Instance u_ibex_core/FE_OFC380_rst_ni 649.419 227.527 651.019 231.127
setObjFPlanBox Instance u_ibex_core/FE_OFC381_rst_ni 729.819 540.727 731.419 544.327
setObjFPlanBox Instance u_ibex_core/FE_OFC452_rst_ni 663.819 220.327 665.419 223.927
setObjFPlanBox Instance u_ibex_core/FE_OFC454_rst_ni 717.019 522.727 718.619 526.327
setObjFPlanBox Instance u_ibex_core/FE_OFC520_rst_ni 686.219 213.127 687.819 216.727
setObjFPlanBox Instance u_ibex_core/FE_OFC522_rst_ni 713.019 515.527 714.619 519.127
setObjFPlanBox Instance u_ibex_core/FE_OFC573_rst_ni 691.419 216.727 693.019 220.327
setObjFPlanBox Instance u_ibex_core/FE_OFC574_rst_ni 703.819 508.327 705.419 511.927
setObjFPlanBox Instance u_ibex_core/FE_OFC606_rst_ni 697.419 227.527 699.019 231.127
setObjFPlanBox Instance u_ibex_core/FE_OFC607_rst_ni 704.219 486.727 705.819 490.327
setObjFPlanBox Instance u_ibex_core/FE_OFC622_rst_ni 710.619 486.727 712.219 490.327
setObjFPlanBox Instance u_ibex_core/FE_OFC624_rst_ni 709.019 475.927 710.619 479.527
setObjFPlanBox Instance u_ibex_core/FE_OFC636_FE_OFN2_rst_ni 596.619 209.527 598.219 213.127
setObjFPlanBox Instance u_ibex_core/FE_OFC638_FE_OFN2_rst_ni 596.619 220.327 598.219 223.927
setObjFPlanBox Instance u_ibex_core/FE_OFC640_FE_OFN2_rst_ni 595.819 234.727 597.419 238.327
setObjFPlanBox Instance u_ibex_core/FE_OFC645_FE_OFN2_rst_ni 973.819 486.727 975.419 490.327
setObjFPlanBox Instance u_ibex_core/FE_OFC646_FE_OFN2_rst_ni 757.819 511.927 759.419 515.527
setObjFPlanBox Instance u_ibex_core/FE_OFC647_FE_OFN2_rst_ni 626.619 508.327 628.219 511.927
setObjFPlanBox Instance u_ibex_core/FE_OFC768_boot_addr_i_26 573.419 328.327 575.019 331.927
setObjFPlanBox Instance u_ibex_core/FE_OFC959_crash_dump_o_159 647.419 634.327 649.419 637.927
setObjFPlanBox Instance u_ibex_core/FE_OFC1092_lsu_busy 597.819 144.727 599.419 148.327
setObjFPlanBox Instance u_ibex_core/FE_OFC1829_csr_access 866.219 443.527 867.819 447.127
setObjFPlanBox Instance u_ibex_core/FE_OFC1830_csr_access 855.019 425.527 857.019 429.127
setObjFPlanBox Instance u_ibex_core/FE_OFC1831_csr_access 853.819 411.127 856.219 414.727
setObjFPlanBox Instance u_ibex_core/FE_OFC2758_lsu_load_err 764.219 148.327 765.819 151.927
setObjFPlanBox Instance u_ibex_core/FE_OFC2759_lsu_store_err 761.419 155.527 763.019 159.127
setObjFPlanBox Instance u_ibex_core/FE_OFC2774_alu_operand_a_ex_15 849.019 443.527 850.619 447.127
setObjFPlanBox Instance u_ibex_core/FE_OFC3251_alu_operand_a_ex_2 783.819 454.327 785.419 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4262_alu_operand_a_ex_17 844.619 429.127 846.219 432.727
setObjFPlanBox Instance u_ibex_core/FE_OFC4292_rf_rdata_b_ecc_4 805.019 155.527 806.619 159.127
setObjFPlanBox Instance u_ibex_core/FE_OFC4336_n383 715.819 443.527 718.219 447.127
setObjFPlanBox Instance u_ibex_core/FE_OFC4343_n1386 752.219 439.927 753.419 443.527
setObjFPlanBox Instance u_ibex_core/FE_OFC4381_n873 701.819 472.327 703.019 475.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4487_n168 754.219 447.127 755.419 450.727
setObjFPlanBox Instance u_ibex_core/FE_OFC4496_n874 715.419 288.727 716.619 292.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4556_n114 723.419 450.727 724.619 454.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4572_alu_operand_b_ex_3 815.819 418.327 819.419 421.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4673_n113 772.219 457.927 773.419 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC4714_n376 718.619 439.927 719.819 443.527
setObjFPlanBox Instance u_ibex_core/FE_OFC4741_FE_OFN1907_lsu_resp_valid 767.019 148.327 768.219 151.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4764_FE_OFN1030_crash_dump_o_141 766.219 630.727 767.819 634.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4774_crash_dump_o_135 817.019 623.527 818.619 627.127
setObjFPlanBox Instance u_ibex_core/FE_OFC4791_FE_OFN1040_crash_dump_o_136 810.619 630.727 812.219 634.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4792_rf_rdata_a_ecc_15 856.619 227.527 859.019 231.127
setObjFPlanBox Instance u_ibex_core/FE_OFC4826_n379 723.019 439.927 724.219 443.527
setObjFPlanBox Instance u_ibex_core/FE_OFC4835_crash_dump_o_144 713.019 576.727 714.619 580.327
setObjFPlanBox Instance u_ibex_core/FE_OFC4843_FE_OFN1052_crash_dump_o_129 745.419 601.927 746.619 605.527
setObjFPlanBox Instance u_ibex_core/FE_OFC4857_FE_OFN1028_crash_dump_o_142 710.619 634.327 711.819 637.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4880_FE_OFN1016_crash_dump_o_148 761.819 598.327 763.419 601.927
setObjFPlanBox Instance u_ibex_core/FE_OFC4895_FE_OFN1006_crash_dump_o_153 710.219 591.127 711.819 594.727
setObjFPlanBox Instance u_ibex_core/FE_OFC4900_FE_OFN1044_crash_dump_o_134 792.219 623.527 793.819 627.127
setObjFPlanBox Instance u_ibex_core/FE_OFC4938_FE_OFN1008_crash_dump_o_152 696.619 591.127 698.219 594.727
setObjFPlanBox Instance u_ibex_core/FE_OFC4969_FE_OFN1046_crash_dump_o_133 805.419 619.927 807.019 623.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5010_n868 653.019 313.927 654.219 317.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5133_FE_OFN1050_crash_dump_o_131 751.819 634.327 753.019 637.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5170_rf_rdata_b_ecc_7 788.619 144.727 790.219 148.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5201_alu_operand_a_ex_14 820.219 454.327 821.819 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5231_alu_operand_a_ex_11 828.219 414.727 829.819 418.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5242_crash_dump_o_156 705.819 576.727 707.419 580.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5258_crash_dump_o_145 769.419 573.127 771.019 576.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5277_n866 637.819 385.927 639.019 389.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5297_crash_dump_o_137 799.019 609.127 800.619 612.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5308_alu_operand_a_ex_6 849.419 414.727 850.619 418.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5319_alu_operand_a_ex_23 732.619 457.927 733.819 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5322_FE_OFN1002_crash_dump_o_155 698.619 576.727 700.219 580.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5329_FE_OFN998_crash_dump_o_157 700.619 573.127 702.219 576.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5346_alu_adder_result_ex_28 631.019 382.327 632.219 385.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5351_n151 773.019 432.727 774.219 436.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5353_n151 831.019 436.327 832.619 439.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5354_FE_OFN1014_crash_dump_o_149 727.819 601.927 729.419 605.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5404_FE_OFN1032_crash_dump_o_140 777.019 623.527 778.619 627.127
setObjFPlanBox Instance u_ibex_core/FE_OFC5405_FE_OFN1010_crash_dump_o_151 720.619 598.327 722.219 601.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5418_FE_OFN1036_crash_dump_o_138 793.019 619.927 794.619 623.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5439_FE_OFN1034_crash_dump_o_139 787.419 612.727 789.019 616.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5448_alu_operand_a_ex_20 793.419 454.327 794.619 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5461_branch_target_ex_22 666.219 393.127 667.419 396.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5490_crash_dump_o_143 685.419 630.727 686.619 634.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5492_crash_dump_o_143 737.019 598.327 738.219 601.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5493_crash_dump_o_143 738.219 605.527 739.419 609.127
setObjFPlanBox Instance u_ibex_core/FE_OFC5526_alu_operand_a_ex_8 830.219 450.727 831.819 454.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5534_alu_operand_a_ex_26 733.419 436.327 734.619 439.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5536_alu_operand_a_ex_26 738.219 436.327 739.819 439.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5569_crash_dump_o_132 759.019 612.727 760.219 616.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5570_crash_dump_o_132 757.819 612.727 759.019 616.327
setObjFPlanBox Instance u_ibex_core/FE_OFC5575_alu_operand_a_ex_22 730.219 447.127 731.819 450.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5583_n867 670.219 331.927 671.419 335.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5587_FE_OFN1018_crash_dump_o_147 711.019 569.527 712.619 573.127
setObjFPlanBox Instance u_ibex_core/FE_OFC5613_crash_dump_o_150 681.419 637.927 682.619 641.527
setObjFPlanBox Instance u_ibex_core/FE_OFC5615_crash_dump_o_150 689.419 591.127 690.619 594.727
setObjFPlanBox Instance u_ibex_core/FE_OFC5621_alu_operand_a_ex_18 751.019 461.527 753.019 465.127
setObjFPlanBox Instance u_ibex_core/FE_OFC5648_alu_operand_a_ex_3 817.419 425.527 818.619 429.127
setObjFPlanBox Instance u_ibex_core/FE_OFC5781_FE_OFN1028_crash_dump_o_142 768.619 616.327 769.819 619.927
setObjFPlanBox Instance u_ibex_core/FE_OFC5840_rf_rdata_b_ecc_29 675.419 195.127 677.419 198.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6115_boot_addr_i_14 579.419 328.327 581.019 331.927
setObjFPlanBox Instance u_ibex_core/FE_OFC6117_boot_addr_i_10 564.619 281.527 566.219 285.127
setObjFPlanBox Instance u_ibex_core/FE_OFC6118_boot_addr_i_13 582.619 339.127 584.219 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6119_boot_addr_i_12 569.019 303.127 570.619 306.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6120_boot_addr_i_11 587.819 339.127 589.419 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6121_boot_addr_i_9 566.219 299.527 567.819 303.127
setObjFPlanBox Instance u_ibex_core/FE_OFC6122_boot_addr_i_8 577.419 321.127 579.019 324.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6127_boot_addr_i_28 565.019 335.527 566.619 339.127
setObjFPlanBox Instance u_ibex_core/FE_OFC6133_boot_addr_i_17 577.419 339.127 579.019 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6139_boot_addr_i_15 573.019 321.127 574.619 324.727
setObjFPlanBox Instance u_ibex_core/FE_OFC6146_boot_addr_i_20 563.819 414.727 565.419 418.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC6479_rf_rdata_a_ecc_6 979.419 241.927 983.019 245.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC6502_rf_rdata_b_ecc_16 734.219 162.727 735.819 166.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC6583_rf_rdata_a_ecc_5 837.819 151.927 841.419 155.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC6722_rf_rdata_b_ecc_24 669.019 313.927 670.619 317.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC6727_rf_rdata_a_ecc_11 862.619 450.727 866.219 454.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC6775_rf_rdata_b_ecc_7 807.419 159.127 809.019 162.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC6777_rf_rdata_b_ecc_28 676.619 313.927 678.219 317.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC6871_rf_rdata_b_ecc_26 758.219 177.127 761.419 180.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC6976_FE_OFN4546_rf_rdata_a_ecc_26 716.619 274.327 717.819 277.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC7091_alu_operand_a_ex_16 753.019 443.527 754.219 447.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC7092_alu_operand_a_ex_16 752.619 432.727 753.819 436.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7093_alu_operand_a_ex_16 749.419 432.727 750.619 436.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7126_n360 828.619 447.127 830.219 450.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC7220_rf_rdata_b_ecc_1 819.019 191.527 820.619 195.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC7255_rf_rdata_a_ecc_23 865.819 270.727 869.419 274.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7260_rf_rdata_b_ecc_23 735.419 274.327 736.619 277.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC7271_rf_rdata_b_ecc_19 722.619 267.127 724.219 270.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC7316_rf_rdata_a_ecc_19 960.619 349.927 964.219 353.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC7317_rf_rdata_a_ecc_19 768.619 288.727 770.219 292.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7346_rf_rdata_b_ecc_20 699.819 159.127 701.419 162.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC7459_FE_OFN4496_rf_rdata_a_ecc_21 777.019 162.727 778.619 166.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7666_alu_operand_a_ex_8 812.219 457.927 813.419 461.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC7668_alu_operand_a_ex_8 813.019 450.727 814.219 454.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7874_rf_rdata_a_ecc_8 1017.419 418.327 1021.019 421.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC7883_rf_rdata_b_ecc_21 759.819 162.727 761.819 166.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC7897_rf_rdata_a_ecc_10 848.219 393.127 851.819 396.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC8036_multdiv_operand_b_ex_23 736.619 274.327 738.219 277.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC8045_rf_rdata_b_ecc_12 787.019 177.127 788.619 180.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC8070_rf_rdata_b_ecc_15 681.819 198.727 685.019 202.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8096_alu_operand_a_ex_4 816.619 414.727 818.219 418.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8097_alu_operand_a_ex_4 834.619 364.327 836.219 367.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC8108_alu_operand_a_ex_24 719.419 443.527 720.619 447.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8232_alu_operand_a_ex_0 769.019 450.727 770.619 454.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8245_n369 836.219 443.527 837.419 447.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8311_alu_operand_b_ex_8 809.819 339.127 811.419 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC8383_boot_addr_i_18 564.619 306.727 566.219 310.327
setObjFPlanBox Instance u_ibex_core/FE_OFC8401_boot_addr_i_24 569.419 324.727 571.019 328.327
setObjFPlanBox Instance u_ibex_core/FE_OFC8415_fetch_enable_i_0 576.619 94.327 578.219 97.927
setObjFPlanBox Instance u_ibex_core/FE_OFC8427_boot_addr_i_21 564.619 501.127 566.219 504.727
setObjFPlanBox Instance u_ibex_core/FE_OFC8436_boot_addr_i_25 565.019 328.327 566.619 331.927
setObjFPlanBox Instance u_ibex_core/FE_OFC8441_boot_addr_i_23 564.619 321.127 566.219 324.727
setObjFPlanBox Instance u_ibex_core/FE_OFC8449_boot_addr_i_19 564.619 310.327 566.219 313.927
setObjFPlanBox Instance u_ibex_core/FE_OFC8470_boot_addr_i_29 569.419 339.127 571.019 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC8474_boot_addr_i_22 568.619 317.527 570.219 321.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8462_multdiv_operand_b_ex_13 814.219 173.527 815.819 177.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8682_lsu_wdata_9 801.819 148.327 803.419 151.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC8694_multdiv_signed_mode_ex_1 639.019 385.927 640.619 389.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC8589_rf_rdata_a_ecc_14 867.819 231.127 870.619 234.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC8590_rf_rdata_a_ecc_14 783.019 241.927 785.819 245.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC8735_rf_rdata_a_ecc_21 779.019 162.727 781.819 166.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8771_rf_rdata_a_ecc_26 985.019 245.527 987.819 249.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8846_rf_rdata_a_ecc_17 853.419 418.327 857.019 421.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC8860_rf_rdata_a_ecc_20 853.819 335.527 856.619 339.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC8922_rf_rdata_b_ecc_2 864.619 231.127 867.019 234.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC8924_rf_rdata_b_ecc_2 820.619 216.727 823.019 220.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8925_instr_rdata_id_13 657.019 450.727 658.219 454.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8926_instr_rdata_id_13 682.219 450.727 683.419 454.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC8946_rf_rdata_b_ecc_17 719.019 195.127 720.619 198.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC9044_rf_rdata_b_ecc_9 803.019 169.927 804.619 173.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC9221_rf_rdata_b_ecc_31 650.619 364.327 651.819 367.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC9328_rf_rdata_b_ecc_3 814.619 144.727 815.819 148.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC9455_FE_OFN1912_csr_access 763.019 429.127 766.219 432.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC9481_rf_rdata_a_ecc_9 1015.019 465.127 1019.019 468.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC9754_FE_OFN4456_rf_rdata_a_ecc_5 803.419 155.527 805.019 159.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC9791_alu_operand_a_ex_3 775.419 454.327 777.419 457.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC9792_alu_operand_a_ex_3 819.419 425.527 821.019 429.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10034_rf_rdata_b_ecc_3 827.819 137.527 830.619 141.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10035_rf_rdata_b_ecc_3 790.219 148.327 793.819 151.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC10183_rf_rdata_b_ecc_27 785.819 148.327 787.419 151.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC10171_rf_raddr_a_2 865.019 414.727 866.619 418.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10290_alu_operand_b_ex_1 811.019 414.727 814.619 418.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10328_alu_operand_b_ex_1 736.619 429.127 740.219 432.727
setObjFPlanBox Instance u_ibex_core/FE_OCPC10228_n 775.819 432.727 777.419 436.327
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00064 839.019 418.327 843.819 421.927
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00066 830.219 310.327 834.219 313.927
setObjFPlanBox Instance u_ibex_core/CTS_ccl_inv_00061 807.819 223.927 809.019 227.527
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00030 811.019 220.327 815.819 223.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10316_alu_operand_b_ex_0 752.219 389.527 755.419 393.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10319_alu_operand_b_ex_0 751.819 421.927 754.619 425.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10329_rf_rdata_b_ecc_4 998.219 155.527 1004.219 159.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10330_rf_rdata_b_ecc_4 806.619 155.527 808.219 159.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10331_rf_rdata_b_ecc_11 801.019 155.527 802.619 159.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10340_rf_rdata_b_ecc_10 802.219 177.127 803.819 180.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10348_alu_adder_result_ex_23 663.019 382.327 664.619 385.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10368_alu_operand_a_ex_21 720.619 450.727 721.819 454.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10369_alu_operand_a_ex_21 720.219 396.727 721.419 400.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10404_n152 767.419 439.927 768.619 443.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10405_n152 766.619 429.127 768.219 432.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10451_alu_operand_a_ex_22 726.619 465.127 727.819 468.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10452_alu_operand_a_ex_22 726.619 450.727 727.819 454.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10454_alu_operand_a_ex_23 728.619 457.927 729.819 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10472_alu_operand_a_ex_27 688.619 457.927 689.819 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10473_alu_operand_a_ex_27 688.219 411.127 689.419 414.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10500_alu_operand_a_ex_9 827.819 461.527 829.019 465.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10501_alu_operand_a_ex_9 839.019 364.327 840.219 367.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10506_alu_operand_a_ex_26 707.419 443.527 708.619 447.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10521_alu_operand_b_ex_2 753.419 418.327 755.419 421.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10522_alu_operand_b_ex_2 851.419 421.927 852.619 425.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10524_rf_rdata_b_ecc_5 803.819 148.327 807.019 151.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10525_rf_rdata_b_ecc_0 779.819 151.927 787.419 155.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10538_rf_raddr_a_4 783.419 400.327 789.419 403.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10549_alu_operand_a_ex_19 743.019 461.527 744.619 465.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10557_alu_operand_a_ex_20 762.219 454.327 763.419 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10564_alu_operand_a_ex_15 756.219 443.527 757.419 447.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10566_FE_OCPN5946_n 769.019 295.927 770.219 299.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10575_FE_RN_798_0 795.019 238.327 798.619 241.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10583_alu_operand_a_ex_6 818.619 457.927 819.819 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10584_alu_operand_a_ex_6 820.619 414.727 822.219 418.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10588_alu_operand_a_ex_24 717.019 447.127 718.219 450.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10592_alu_operand_a_ex_29 709.819 454.327 711.019 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10609_rf_rdata_a_ecc_15 721.419 227.527 723.019 231.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10632_alu_operand_a_ex_15 738.619 447.127 739.819 450.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10633_alu_operand_a_ex_25 709.819 447.127 711.019 450.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10656_alu_operand_a_ex_1 816.619 454.327 818.619 457.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10688_alu_operand_a_ex_4 789.019 457.927 791.419 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10690_alu_adder_result_ext_3 813.019 281.527 814.219 285.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10693_alu_operand_a_ex_5 805.019 454.327 806.619 457.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC10406_rf_rdata_b_ecc_8 766.219 173.527 767.819 177.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10418_FE_OFN6139_FE_RN_798_0 676.219 238.327 678.219 241.927
setObjFPlanBox Instance u_ibex_core/FE_OCPC10444_n 775.819 414.727 777.419 418.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC10448_rf_rdata_b_ecc_6 752.619 245.527 756.219 249.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10455_FE_OFN10303_FE_OCPN5721_rf_rdata_a_ecc_17 763.819 263.527 765.419 267.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10472_FE_OFN6122_rf_rdata_b_ecc_7 726.219 162.727 729.819 166.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC10747_rf_rdata_a_ecc_23 765.419 274.327 767.419 277.927
setObjFPlanBox Instance u_ibex_core/FE_RC_2478_0 866.219 418.327 868.619 421.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10819_alu_operand_b_ex_3 826.619 360.727 829.819 364.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC10858_rf_raddr_a_0 861.419 414.727 863.419 418.327
setObjFPlanBox Instance u_ibex_core/FE_OCPC10862_rf_rdata_b_ecc_1 1020.619 421.927 1024.219 425.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10877_FE_RN_548_0 679.819 457.927 681.419 461.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10878_boot_addr_i_21 563.019 313.927 564.619 317.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10879_boot_addr_i_31 563.019 342.727 564.619 346.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10880_boot_addr_i_20 563.019 310.327 564.619 313.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10882_boot_addr_i_11 563.019 281.527 564.619 285.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10883_boot_addr_i_13 563.019 288.727 564.619 292.327
setObjFPlanBox Instance u_ibex_core/FE_OFC10884_boot_addr_i_30 563.019 339.127 564.619 342.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10885_boot_addr_i_8 563.019 274.327 564.619 277.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10887_boot_addr_i_17 564.619 299.527 566.219 303.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10888_boot_addr_i_14 563.019 292.327 564.619 295.927
setObjFPlanBox Instance u_ibex_core/FE_OFC10889_boot_addr_i_16 563.019 299.527 564.619 303.127
setObjFPlanBox Instance u_ibex_core/FE_OFC10901_boot_addr_i_15 563.019 295.927 564.619 299.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10910_boot_addr_i_9 563.019 277.927 564.619 281.527
setObjFPlanBox Instance u_ibex_core/FE_OFC10911_boot_addr_i_12 563.019 285.127 564.619 288.727
setObjFPlanBox Instance u_ibex_core/FE_OFC10932_boot_addr_i_27 563.019 331.927 564.619 335.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC10955_rdata_b_ecc_21 924.619 173.527 928.219 177.127
setObjFPlanBox Instance u_ibex_core/FE_OCPC10987_target_ex_22 669.819 324.727 671.419 328.327
setObjFPlanBox Instance u_ibex_core/FE_OFC11013_crash_dump_o_154 702.219 587.527 703.819 591.127
setObjFPlanBox Instance u_ibex_core/FE_OFC11014_FE_OFN1009_crash_dump_o_152 697.819 565.927 699.419 569.527
setObjFPlanBox Instance u_ibex_core/FE_OCPC11016_alu_operand_b_ex_10 827.419 400.327 829.819 403.927
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i -701.196 -5.615 -393.996 300.385
setObjFPlanBox Module gen_regfile_ff_register_file_i 249.208 12.612 556.408 318.612
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_floorplan -isVisible 0
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_power -isVisible 1
setLayerPreference node_power -isVisible 0
setLayerPreference node_net -isVisible 0
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_route -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_row -isVisible 1
setLayerPreference node_row -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_floorplan -isVisible 0
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_floorplan -isVisible 0
setLayerPreference node_floorplan -isVisible 1
uiSetTool flightline
uiSetTool flightline
setLayerPreference blackBox -isVisible 0
setLayerPreference blackBox -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/ex_block_i
deselectAll
zoomBox -544.15200 -286.07700 657.65300 902.44800
zoomBox -407.70400 -218.01900 613.83000 792.22700
zoomBox -291.72300 -160.17000 576.58100 698.53900
uiSetTool move
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 151.617 455.39 251.617 556.19
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 247.6 10.401 554.8 316.401
setObjFPlanBox Module gen_regfile_ff_register_file_i 86.093 117.54 393.293 423.54
setObjFPlanBox Module gen_regfile_ff_register_file_i -364.943 111.603 -57.743 417.603
deselectAll
selectObject Module u_ibex_core/wb_stage_i
setObjFPlanBox Module u_ibex_core/wb_stage_i 106.501 516.155 146.101 555.755
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 9.594 7.646 272.394 270.446
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 285.221 113.186 518.021 347.186
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 276.329 7.056 376.329 107.856
setObjFPlanBox Module u_ibex_core/wb_stage_i 106.40000 537.03100 146.00000 555.60000
setObjFPlanBox Module u_ibex_core/wb_stage_i 106.40000 522.63900 146.00000 555.60000
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 137.255 386.794 311.255 559.594
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 336.84 407.582 484.44 555.182
setObjFPlanBox Module u_ibex_core/id_stage_i 336.80000 408.00000 535.00500 555.60000
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 138.799 391.198 312.799 563.998
setObjFPlanBox Module u_ibex_core/if_stage_i 149.994 383.604 323.994 556.404
setObjFPlanBox Module u_ibex_core/wb_stage_i 106.40000 543.42800 146.00000 555.60000
deselectAll
selectObject Module u_ibex_core/wb_stage_i
setObjFPlanBox Module u_ibex_core/wb_stage_i 21.648 544.8 61.248 555.6
setObjFPlanBox Module u_ibex_core/wb_stage_i 20.001 544.8 59.601 555.6
zoomBox -195.19100 34.19000 432.16000 654.60900
zoomBox -158.62400 111.13600 374.62400 638.49200
zoomBox -128.13200 177.27600 325.12900 625.52900
zoomBox -80.29000 281.62000 247.19200 605.48300
setObjFPlanBox Module u_ibex_core/wb_stage_i 20.00000 519.84300 59.60000 555.60000
zoomBox -106.57800 254.90600 278.69500 635.92200
zoomBox -137.50500 223.47800 315.75700 671.73200
zoomBox -173.89000 186.35600 359.36000 713.71400
zoomBox -216.69600 142.68400 410.65700 763.10500
zoomBox -267.05600 91.30400 471.00700 821.21200
zoomBox -326.30300 30.85800 542.00700 889.57300
zoomBox -404.18800 -42.23000 617.35300 968.02300
pan 101.59000 354.43300
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 355.613 406.118 554.013 553.718
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 181.982 380.918 355.982 553.718
setObjFPlanBox Module u_ibex_core/if_stage_i 180.119 382.962 354.119 555.762
setObjFPlanBox Module u_ibex_core/if_stage_i 83.06700 382.80000 354.00000 555.60000
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 273.913 146.664 506.713 380.664
setObjFPlanBox Module u_ibex_core/cs_registers_i 274.00000 241.84500 506.80000 379.20000
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 9.60000 8.40000 272.40000 113.91700
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 97.677 113.752 197.677 214.552
setObjFPlanBox Module u_ibex_core/load_store_unit_i 97.60000 112.80000 293.77100 213.60000
setObjFPlanBox Module u_ibex_core/load_store_unit_i 7.81500 112.80000 293.60000 213.60000
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 237.07 -33.257 544.27 272.743
setObjFPlanBox Module gen_regfile_ff_register_file_i 363.37900 1.20000 544.40000 177.88100
setObjFPlanBox Module gen_regfile_ff_register_file_i 333.1 57.639 514.3 234.039
zoomBox -203.83000 -30.84800 664.48000 827.86700
zoomBox -118.67800 -16.21700 619.38600 713.69200
zoomBox -45.07600 -3.78000 582.27900 616.64300
zoomBox -137.64000 -21.92600 600.42500 707.98400
setObjFPlanBox Module gen_regfile_ff_register_file_i 331.841 58.8 513.041 235.2
setObjFPlanBox Module gen_regfile_ff_register_file_i 332.00000 9.33600 556.93000 235.20000
deselectAll
selectInst u_ibex_core/load_store_unit_i/clk_gate_data_sign_ext_q_reg/main_gate
setObjFPlanBox Module u_ibex_core/ex_block_i 9.60000 8.40000 331.29700 112.80000
setObjFPlanBox Module u_ibex_core/load_store_unit_i 8.00000 112.80000 332.65600 213.60000
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 245.456 245.119 478.256 381.919
deselectAll
selectObject Module u_ibex_core/id_stage_i
deselectAll
selectObject Module u_ibex_core/if_stage_i
deselectAll
selectObject Module u_ibex_core/wb_stage_i
setObjFPlanBox Module u_ibex_core/wb_stage_i 9.126 307.56 48.726 343.56
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 8.442 382.8 279.242 555.6
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 355.6 408.477 554.0 556.077
deselectAll
selectObject Module u_ibex_core/if_stage_i
setObjFPlanBox Module u_ibex_core/if_stage_i 8.40000 382.80000 355.76300 555.60000
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/if_stage_i
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 49.772 232.658 248.172 380.258
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 336.669 419.982 569.469 556.782
setObjFPlanBox Module u_ibex_core/cs_registers_i 324.404 417.441 557.204 554.241
setObjFPlanBox Module u_ibex_core/cs_registers_i 321.682 418.8 554.482 555.6
setObjFPlanBox Module u_ibex_core/cs_registers_i 321.60000 234.97000 554.40000 555.60000
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 122.999 235.677 321.399 383.277
setObjFPlanBox Module u_ibex_core/id_stage_i 122.80000 286.62100 321.20000 382.80000
deselectAll
selectObject Module u_ibex_core/if_stage_i
zoomBox -108.68800 55.34700 518.66700 675.77000
zoomBox -63.16100 176.85700 390.10300 625.11300
zoomBox -40.24800 223.93600 345.02700 604.95400
zoomBox -55.14800 172.22300 398.11700 620.48000
zoomBox -73.12000 110.50100 460.13300 637.86200
zoomBox -95.12900 37.71400 532.22700 658.13800
setObjFPlanBox Module u_ibex_core/if_stage_i 8.40000 475.59200 355.60000 555.60000
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 397.05100 235.20000 554.40000 555.60000
deselectAll
selectObject Module u_ibex_core/id_stage_i
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 10.311 112.8 335.111 213.6
deselectAll
selectObject Module u_ibex_core/ex_block_i
zoomBox -127.95500 24.46100 610.11100 754.37200
zoomBox -171.61100 14.14700 696.70300 872.86600
setObjFPlanBox Module u_ibex_core/ex_block_i 9.60000 8.40000 331.20000 193.24600
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 7.201 213.544 332.001 314.344
setObjFPlanBox Module u_ibex_core/load_store_unit_i 10.398 191.212 335.198 292.012
deselectAll
selectObject Module u_ibex_core/wb_stage_i
zoomBox -143.30700 60.20000 594.76000 790.11200
zoomBox -118.43300 100.16200 508.92400 720.58700
zoomBox -36.16500 227.33800 242.19600 502.62300
zoomBox -17.95600 255.64700 183.15900 454.54000
zoomBox -30.37500 241.85600 206.23100 475.84800
zoomBox -44.67900 225.47700 233.68200 500.76200
zoomBox -67.38600 223.93900 260.09800 547.80400
zoomBox -94.10000 221.91600 291.17600 602.93500
zoomBox -125.52800 219.53700 327.73800 667.79500
pan 34.22500 220.68800
setObjFPlanBox Module u_ibex_core/load_store_unit_i 10.40000 192.00000 335.20000 220.37200
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 7.062 207.025 331.862 235.825
zoomBox -151.40500 65.55100 381.84900 592.91300
zoomBox -221.76600 30.71700 405.59200 651.14300
pan 242.62400 270.96800
pan 11.55300 -83.72500
deselectAll
selectObject Module gen_regfile_ff_register_file_i
setObjFPlanBox Module gen_regfile_ff_register_file_i 238.06400 8.40000 556.80000 306.84700
zoomBox -40.17300 -110.17000 697.89600 619.74400
zoomBox -128.68500 -166.53900 739.63300 692.18400
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module gen_regfile_ff_register_file_i
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 403.596 310.359 560.796 630.759
setObjFPlanBox Module u_ibex_core/cs_registers_i 403.60000 242.40000 560.80000 437.92500
setObjFPlanBox Module u_ibex_core/cs_registers_i 398.802 363.932 556.002 558.332
setObjFPlanBox Module u_ibex_core/cs_registers_i 357.44500 364.80000 556.00000 559.20000
zoomBox -41.61300 -79.70800 696.45700 650.20700
deselectAll
selectObject Module gen_regfile_ff_register_file_i
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/if_stage_i
deselectAll
selectObject Module u_ibex_core/id_stage_i
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 357.60000 311.75500 556.00000 559.20000
deselectAll
selectObject Module u_ibex_core/if_stage_i
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i -105.617 214.555 219.183 243.355
setObjFPlanBox Module u_ibex_core/load_store_unit_i 0.00000 213.60000 324.80000 408.26100
setObjFPlanBox Module u_ibex_core/load_store_unit_i 0.00000 213.60000 107.90400 408.00000
setObjFPlanBox Module u_ibex_core/load_store_unit_i 0.00000 213.60000 108.00000 299.52200
setObjFPlanBox Module u_ibex_core/load_store_unit_i 9.515 220.396 117.515 306.796
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 130.955 350.844 329.355 448.044
deselectAll
selectObject Module u_ibex_core/wb_stage_i
setObjFPlanBox Module u_ibex_core/wb_stage_i 20.073 399.629 59.673 435.629
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 8.241 313.229 116.241 399.629
setObjFPlanBox Module u_ibex_core/load_store_unit_i 20.633 314.4 128.633 400.8
deselectAll
selectObject Module u_ibex_core/ex_block_i
setObjFPlanBox Module u_ibex_core/ex_block_i 9.60000 8.40000 331.20000 303.59900
setObjFPlanBox Module u_ibex_core/ex_block_i 116.06000 8.40000 331.20000 303.60000
setObjFPlanBox Module u_ibex_core/ex_block_i 9.978 12.478 225.178 307.678
setObjFPlanBox Module u_ibex_core/ex_block_i 10.00000 12.00000 238.39200 307.20000
setObjFPlanBox Module u_ibex_core/id_stage_i 130.80000 343.01700 329.20000 447.60000
setObjFPlanBox Module u_ibex_core/if_stage_i 8.40000 453.11600 355.60000 555.60000
setObjFPlanBox Module u_ibex_core/if_stage_i 8.40000 454.80000 283.24700 555.60000
deselectAll
selectObject Module u_ibex_core/wb_stage_i
setObjFPlanBox Module u_ibex_core/wb_stage_i 75.729 415.752 115.329 451.752
setObjFPlanBox Module u_ibex_core/load_store_unit_i 20.80000 306.31800 131.01100 400.80000
setObjFPlanBox Module u_ibex_core/load_store_unit_i 27.70900 307.20000 131.20000 396.02800
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 138.955 313.297 337.355 417.697
setObjFPlanBox Module u_ibex_core/cs_registers_i 357.60000 310.80000 556.00000 549.62300
setObjFPlanBox Module u_ibex_core/cs_registers_i 337.61700 310.80000 556.00000 548.40000
pan -8.15500 -66.63900
setObjFPlanBox Module u_ibex_core/id_stage_i 133.363 342.944 331.763 447.344
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setObjFPlanBox Module u_ibex_core/cs_registers_i 334.882 317.596 553.282 555.196
setObjFPlanBox Module gen_regfile_ff_register_file_i 238.00000 8.40000 556.80000 314.47300
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 30.319 324.87 133.919 414.87
deselectAll
selectObject Module u_ibex_core/id_stage_i
setObjFPlanBox Module u_ibex_core/id_stage_i 134.559 326.889 332.959 431.289
zoomBox 27.50500 -43.62000 654.86500 576.80800
zoomBox 93.53400 11.66400 626.79000 539.02800
zoomBox 21.09300 -47.08600 648.45300 573.34200
zoomBox -64.74400 -116.40800 673.32700 613.50800
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/if_stage_i
zoomBox 1.76400 49.08700 535.02000 576.45100
zoomBox 18.55700 116.55400 471.82500 564.81400
deselectAll
selectObject Module u_ibex_core/id_stage_i
zoomBox -41.15600 1.92100 586.20600 622.35100
zoomBox -82.13800 -71.47900 655.93600 658.43900
setObjFPlanBox Module u_ibex_core/id_stage_i 134.4 323.841 332.8 428.241
uiSetTool move
deselectAll
selectObject Module gen_regfile_ff_register_file_i
zoomBox -33.41900 84.64800 499.83900 612.01400
zoomBox -13.23900 148.72700 440.03200 596.98900
zoomBox 21.50800 247.19400 348.99600 571.06300
zoomBox 41.41000 278.22400 319.77500 553.51300
zoomBox 58.48100 304.98400 295.09100 538.98000
zoomBox 72.99100 327.73000 274.11000 526.62700
zoomBox 86.58700 379.58300 191.57400 483.41000
pan -31.70900 293.96300
zoomBox 45.08300 348.33900 190.39400 492.04400
zoomBox 62.25700 385.54400 151.49700 473.79800
zoomBox 74.49600 408.96300 129.30200 463.16300
zoomBox 82.01200 423.37300 115.67000 456.65900
zoomBox 86.62800 432.22100 107.29900 452.66400
zoomBox 89.35900 437.54900 102.05500 450.10500
zoomBox 83.61200 427.93300 112.22700 456.23200
zoomBox 74.15300 412.10400 128.97300 466.31800
zoomBox 55.84700 381.78100 160.86600 485.64000
zoomBox 20.24900 323.69200 221.43300 522.65300
zoomBox -48.96300 212.41200 336.44400 593.56000
zoomBox -182.19800 -4.66400 556.12000 725.49600
zoomBox -109.99800 65.90400 517.57300 686.54100
zoomBox -51.74900 126.23400 481.68700 653.77600
zoomBox -109.99900 65.90300 517.57300 686.54100
zoomBox 36.64700 194.08600 422.05700 575.23700
zoomBox -3.68500 160.01700 449.73800 608.43000
zoomBox -50.98700 119.64000 482.45200 647.18500
zoomBox -106.11700 71.09800 521.45900 691.73900
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
zoomBox -51.50800 134.37500 481.93200 661.92100
setLayerPreference areaIo -isVisible 0
setLayerPreference areaIo -isVisible 1
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference stdCell -isVisible 0
zoomBox -13.42500 216.57900 371.98700 597.73200
zoomBox 23.00200 299.01900 259.69300 533.09500
zoomBox 12.38600 275.71100 290.84700 551.09500
zoomBox -0.37400 248.20000 327.22700 572.18100
zoomBox -15.38600 215.83400 370.02700 596.98800
pan 88.72300 205.66800
zoomBox 33.25500 137.29800 486.68200 585.71500
zoomBox -13.90000 74.96500 519.54300 602.51400
zoomBox -69.37800 1.63200 558.20300 622.27800
zoomBox -16.50200 74.96400 516.94200 602.51400
zoomBox 25.93700 137.59200 479.36500 586.01000
zoomBox -16.50300 74.96300 516.94200 602.51400
zoomBox -66.43300 1.28300 561.15000 621.93100
zoomBox -16.50400 74.96200 516.94200 602.51400
setObjFPlanBox Module u_ibex_core/id_stage_i 134.40000 325.20000 332.80000 446.31100
setObjFPlanBox Module u_ibex_core/cs_registers_i 342.07400 318.00000 553.20000 555.60000
setObjFPlanBox Module u_ibex_core/id_stage_i 134.40000 325.20000 296.88400 447.60000
setObjFPlanBox Module u_ibex_core/cs_registers_i 309.65500 318.00000 553.20000 555.60000
setObjFPlanBox Module u_ibex_core/cs_registers_i 309.60000 350.03600 553.20000 555.60000
setObjFPlanBox Module gen_regfile_ff_register_file_i 238.00000 8.40000 556.80000 324.49300
zoomBox -74.23600 25.72600 553.34900 646.37600
zoomBox -142.15500 -32.20000 596.18100 697.97800
zoomBox -67.30200 20.01400 560.28400 640.66500
zoomBox -113.19300 -10.37600 625.14300 719.80200
deselectAll
selectObject Module u_ibex_core/wb_stage_i
zoomBox -57.35000 64.33400 476.09900 591.88900
zoomBox 9.74800 178.06000 337.35300 502.04500
zoomBox -10.05600 147.50300 375.36200 528.66200
zoomBox -33.35400 111.55300 420.07900 559.97600
zoomBox -60.76400 69.26000 472.68700 596.81700
pan 17.68400 25.88800
setObjFPlanBox Module u_ibex_core/ex_block_i 10.00000 12.00000 238.40000 291.28600
zoomBox -77.06100 -92.43400 550.52900 528.22100
zoomBox -117.03700 -160.15000 621.30400 570.03300
zoomBox -164.06900 -239.81500 704.56800 619.22400
deselectAll
selectObject Module u_ibex_core/cs_registers_i
setDrawView fplan
setDrawView fplan
uiSetTool move
uiSetTool move
uiSetTool flightline
deselectAll
selectObject Module u_ibex_core/wb_stage_i
zoomBox -93.48700 -53.37000 534.10400 567.28600
zoomBox -23.86500 137.91000 361.55500 519.07100
zoomBox 18.31400 256.23100 255.01100 490.31300
zoomBox 36.94100 308.36600 207.95600 477.49100
zoomBox 56.02000 356.00400 161.04600 459.86900
zoomBox 70.47900 389.18200 125.30400 443.40100
zoomBox 68.07400 383.24900 132.57400 447.03600
zoomBox 65.24400 376.26800 141.12600 451.31200
zoomBox 61.89000 368.05600 151.16300 456.34300
zoomBox 57.94300 358.39500 162.97100 462.26200
zoomBox 46.37200 349.86200 221.13400 500.73100
zoomBox 32.19600 339.82300 237.79900 517.31600
zoomBox 8.00700 330.89300 429.73300 539.70900
zoomBox -55.93100 307.66600 527.77400 596.68500
zoomBox -97.47200 292.58800 589.24000 632.61000
zoomBox -162.18200 268.51400 645.71400 668.54000
pan 15.68700 259.94600
zoomBox -233.16600 56.98400 717.30000 527.60300
zoomBox -335.13100 9.00800 783.06400 562.67700
deselectAll
zoomBox -507.70200 -53.77200 807.82200 597.60400
selectObject Module gen_regfile_ff_register_file_i
deselectAll
selectObject Module u_ibex_core/id_stage_i
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
deselectAll
selectObject Module u_ibex_core/cs_registers_i
deselectAll
selectObject Module u_ibex_core/wb_stage_i
deselectAll
selectObject Module u_ibex_core/wb_stage_i
deselectAll
zoomBox -281.37500 134.64500 526.52300 534.67200
zoomBox -140.98400 251.28800 355.16700 496.95500
selectObject Module u_ibex_core/wb_stage_i
uiSetTool move
setObjFPlanBox Module u_ibex_core/wb_stage_i 16.86500 415.20000 115.20000 451.20000
zoomBox -180.80600 225.13200 402.90100 514.15200
zoomBox -227.65500 194.36100 459.05900 534.38400
zoomBox -282.77300 158.15900 525.12700 558.18700
zoomBox -347.61700 115.56800 602.85400 586.19000
zoomBox -423.90500 65.46200 694.29800 619.13500
deselectAll
selectObject Module u_ibex_core/id_stage_i
deselectAll
selectObject Module gen_regfile_ff_register_file_i
zoomBox -571.86600 36.57700 743.66700 687.95700
zoomBox -745.93700 2.59400 801.74900 768.92400
pan 4.62400 691.89400
zoomBox -564.46800 -11.56500 751.06500 639.81500
setObjFPlanBox Module gen_regfile_ff_register_file_i 235.053 8.4 553.853 325.2
uiSetTool move
setObjFPlanBox Module gen_regfile_ff_register_file_i 235.2 9.383 554.0 326.183
uiSetTool move
deselectAll
selectObject Module u_ibex_core/cs_registers_i
zoomBox -778.76300 -81.78400 768.92300 684.54600
panCenter 649.87000 386.33600
zoomBox -634.95300 -160.64500 1507.17400 900.02000
pan -212.77200 355.92400
zoomBox -621.19500 -186.88100 1199.61500 714.68500
zoomBox -429.86800 -103.66000 1117.82200 662.67200
pan -173.37800 404.80600
deselectAll
selectObject Module u_ibex_core/load_store_unit_i
setObjFPlanBox Module u_ibex_core/load_store_unit_i 16.53 315.954 120.13 405.954
zoomBox -829.65800 -88.09000 991.15400 813.47700
zoomBox -603.24600 -25.06200 944.44400 741.27000
pan -107.49500 619.79500
zoomBox -956.93800 -39.13600 863.87400 862.43100
pan 44.87400 769.58000
zoomBox -682.18500 -124.73800 865.50500 641.59400
zoomBox -486.78800 -71.51100 828.74900 579.87100
zoomBox -682.18500 -124.73800 865.50500 641.59400
zoomBox -912.06400 -187.35800 908.74800 714.20900
setObjFPlanBox Module u_ibex_core/load_store_unit_i -905.564 417.747 -801.964 507.747
setObjFPlanBox Module u_ibex_core/load_store_unit_i 17.76 310.321 121.36 400.321
setObjFPlanBox Module u_ibex_core/load_store_unit_i 16.24 310.8 119.84 400.8
setLayerPreference instanceFunction -isVisible 0
setLayerPreference instanceFunction -isVisible 1
setLayerPreference instanceStatus -isVisible 0
setLayerPreference instanceStatus -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_route -isVisible 1
deselectAll
selectObject Module u_ibex_core/if_stage_i
redraw
uiSetTool move
setObjFPlanBox Module u_ibex_core/if_stage_i -35.114 271.223 239.686 372.023
setObjFPlanBox Module u_ibex_core/if_stage_i 12.239 453.417 287.039 554.217
setObjFPlanBox Module u_ibex_core/if_stage_i 24.638 392.248 299.438 493.048
setObjFPlanBox Module u_ibex_core/if_stage_i 18.001 450.713 292.801 551.513
dehighlight -select
setObjFPlanBox Module u_ibex_core/if_stage_i 16.64 452.56 291.44 553.36
gui_group_hinst
gui_ungroup_hinst
setObjFPlanBox Instance u_ibex_core/U36 552.24 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/U27 552.24 346.8 554.24 350.4
setObjFPlanBox Instance u_ibex_core/U26 552.24 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/U23 552.24 422.4 554.24 426.0
setObjFPlanBox Instance u_ibex_core/U22 551.44 393.6 554.24 397.2
setObjFPlanBox Instance u_ibex_core/U21 551.44 426.0 554.24 429.6
setObjFPlanBox Instance u_ibex_core/U20 552.24 426.0 554.24 429.6
setObjFPlanBox Instance u_ibex_core/U19 551.44 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/U18 551.44 422.4 554.24 426.0
setObjFPlanBox Instance u_ibex_core/U17 552.24 404.4 554.24 408.0
setObjFPlanBox Instance u_ibex_core/U16 551.44 397.2 554.24 400.8
setObjFPlanBox Instance u_ibex_core/U15 551.44 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/U11 551.44 400.8 554.24 404.4
setObjFPlanBox Instance u_ibex_core/U6 552.24 411.6 554.24 415.2
setObjFPlanBox Instance u_ibex_core/U2 552.24 454.8 554.24 458.4
setObjFPlanBox Module u_ibex_core/cs_registers_i 308.24 350.4 551.84 555.6
setObjFPlanBox Module u_ibex_core/wb_stage_i 15.44 415.2 113.84 451.2
setObjFPlanBox Module u_ibex_core/load_store_unit_i 15.04 310.8 118.64 400.8
setObjFPlanBox Module u_ibex_core/ex_block_i 8.64 12.0 237.04 292.8
setObjFPlanBox Module u_ibex_core/id_stage_i 133.04 325.2 295.44 447.6
setObjFPlanBox Module u_ibex_core/if_stage_i 15.44 451.2 290.24 552.0
setObjFPlanBox Instance u_ibex_core/FE_OFC3_rst_ni 552.64 181.2 554.24 184.8
setObjFPlanBox Instance u_ibex_core/FE_OFC4_rst_ni 553.04 249.6 554.24 253.2
setObjFPlanBox Instance u_ibex_core/FE_OFC9_rst_ni 552.64 490.8 554.24 494.4
setObjFPlanBox Instance u_ibex_core/FE_OFC19_rst_ni 552.64 235.2 554.24 238.8
setObjFPlanBox Instance u_ibex_core/FE_OFC20_rst_ni 552.64 526.8 554.24 530.4
setObjFPlanBox Instance u_ibex_core/FE_OFC21_rst_ni 552.64 181.2 554.24 184.8
setObjFPlanBox Instance u_ibex_core/FE_OFC22_rst_ni 553.04 249.6 554.24 253.2
setObjFPlanBox Instance u_ibex_core/FE_OFC33_rst_ni 552.64 490.8 554.24 494.4
setObjFPlanBox Instance u_ibex_core/FE_OFC48_rst_ni 552.64 231.6 554.24 235.2
setObjFPlanBox Instance u_ibex_core/FE_OFC49_rst_ni 552.64 530.4 554.24 534.0
setObjFPlanBox Instance u_ibex_core/FE_OFC50_rst_ni 552.64 534.0 554.24 537.6
setObjFPlanBox Instance u_ibex_core/FE_OFC51_rst_ni 552.64 170.4 554.24 174.0
setObjFPlanBox Instance u_ibex_core/FE_OFC52_rst_ni 552.64 282.0 554.24 285.6
setObjFPlanBox Instance u_ibex_core/FE_OFC65_rst_ni 552.64 490.8 554.24 494.4
setObjFPlanBox Instance u_ibex_core/FE_OFC88_rst_ni 552.64 238.8 554.24 242.4
setObjFPlanBox Instance u_ibex_core/FE_OFC89_rst_ni 552.64 534.0 554.24 537.6
setObjFPlanBox Instance u_ibex_core/FE_OFC90_rst_ni 552.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OFC92_rst_ni 552.64 289.2 554.24 292.8
setObjFPlanBox Instance u_ibex_core/FE_OFC105_rst_ni 552.64 487.2 554.24 490.8
setObjFPlanBox Instance u_ibex_core/FE_OFC128_rst_ni 552.64 235.2 554.24 238.8
setObjFPlanBox Instance u_ibex_core/FE_OFC130_rst_ni 552.64 534.0 554.24 537.6
setObjFPlanBox Instance u_ibex_core/FE_OFC132_rst_ni 552.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OFC134_rst_ni 553.04 314.4 554.24 318.0
setObjFPlanBox Instance u_ibex_core/FE_OFC154_rst_ni 552.64 487.2 554.24 490.8
setObjFPlanBox Instance u_ibex_core/FE_OFC180_rst_ni 552.64 235.2 554.24 238.8
setObjFPlanBox Instance u_ibex_core/FE_OFC181_rst_ni 552.64 537.6 554.24 541.2
setObjFPlanBox Instance u_ibex_core/FE_OFC183_rst_ni 552.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OFC184_rst_ni 552.64 177.6 554.24 181.2
setObjFPlanBox Instance u_ibex_core/FE_OFC186_rst_ni 553.04 318.0 554.24 321.6
setObjFPlanBox Instance u_ibex_core/FE_OFC214_rst_ni 552.64 480.0 554.24 483.6
setObjFPlanBox Instance u_ibex_core/FE_OFC242_rst_ni 552.64 235.2 554.24 238.8
setObjFPlanBox Instance u_ibex_core/FE_OFC244_rst_ni 552.64 548.4 554.24 552.0
setObjFPlanBox Instance u_ibex_core/FE_OFC246_rst_ni 552.64 166.8 554.24 170.4
setObjFPlanBox Instance u_ibex_core/FE_OFC247_rst_ni 552.64 159.6 554.24 163.2
setObjFPlanBox Instance u_ibex_core/FE_OFC250_rst_ni 552.64 343.2 554.24 346.8
setObjFPlanBox Instance u_ibex_core/FE_OFC282_rst_ni 552.64 480.0 554.24 483.6
setObjFPlanBox Instance u_ibex_core/FE_OFC283_rst_ni 552.64 480.0 554.24 483.6
setObjFPlanBox Instance u_ibex_core/FE_OFC312_rst_ni 552.64 231.6 554.24 235.2
setObjFPlanBox Instance u_ibex_core/FE_OFC313_rst_ni 552.64 544.8 554.24 548.4
setObjFPlanBox Instance u_ibex_core/FE_OFC316_rst_ni 552.64 152.4 554.24 156.0
setObjFPlanBox Instance u_ibex_core/FE_OFC318_rst_ni 552.64 343.2 554.24 346.8
setObjFPlanBox Instance u_ibex_core/FE_OFC319_rst_ni 552.64 368.4 554.24 372.0
setObjFPlanBox Instance u_ibex_core/FE_OFC345_rst_ni 552.64 476.4 554.24 480.0
setObjFPlanBox Instance u_ibex_core/FE_OFC380_rst_ni 552.64 228.0 554.24 231.6
setObjFPlanBox Instance u_ibex_core/FE_OFC381_rst_ni 552.64 541.2 554.24 544.8
setObjFPlanBox Instance u_ibex_core/FE_OFC452_rst_ni 552.64 220.8 554.24 224.4
setObjFPlanBox Instance u_ibex_core/FE_OFC454_rst_ni 552.64 523.2 554.24 526.8
setObjFPlanBox Instance u_ibex_core/FE_OFC520_rst_ni 552.64 213.6 554.24 217.2
setObjFPlanBox Instance u_ibex_core/FE_OFC522_rst_ni 552.64 516.0 554.24 519.6
setObjFPlanBox Instance u_ibex_core/FE_OFC573_rst_ni 552.64 217.2 554.24 220.8
setObjFPlanBox Instance u_ibex_core/FE_OFC574_rst_ni 552.64 508.8 554.24 512.4
setObjFPlanBox Instance u_ibex_core/FE_OFC606_rst_ni 552.64 228.0 554.24 231.6
setObjFPlanBox Instance u_ibex_core/FE_OFC607_rst_ni 552.64 487.2 554.24 490.8
setObjFPlanBox Instance u_ibex_core/FE_OFC622_rst_ni 552.64 487.2 554.24 490.8
setObjFPlanBox Instance u_ibex_core/FE_OFC624_rst_ni 552.64 476.4 554.24 480.0
setObjFPlanBox Instance u_ibex_core/FE_OFC636_FE_OFN2_rst_ni 552.64 210.0 554.24 213.6
setObjFPlanBox Instance u_ibex_core/FE_OFC638_FE_OFN2_rst_ni 552.64 220.8 554.24 224.4
setObjFPlanBox Instance u_ibex_core/FE_OFC640_FE_OFN2_rst_ni 552.64 235.2 554.24 238.8
setObjFPlanBox Instance u_ibex_core/FE_OFC645_FE_OFN2_rst_ni 552.64 487.2 554.24 490.8
setObjFPlanBox Instance u_ibex_core/FE_OFC646_FE_OFN2_rst_ni 552.64 512.4 554.24 516.0
setObjFPlanBox Instance u_ibex_core/FE_OFC647_FE_OFN2_rst_ni 552.64 508.8 554.24 512.4
setObjFPlanBox Instance u_ibex_core/FE_OFC768_boot_addr_i_26 552.64 328.8 554.24 332.4
setObjFPlanBox Instance u_ibex_core/FE_OFC959_crash_dump_o_159 552.24 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC1092_lsu_busy 552.64 145.2 554.24 148.8
setObjFPlanBox Instance u_ibex_core/FE_OFC1829_csr_access 552.64 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OFC1830_csr_access 552.24 426.0 554.24 429.6
setObjFPlanBox Instance u_ibex_core/FE_OFC1831_csr_access 551.84 411.6 554.24 415.2
setObjFPlanBox Instance u_ibex_core/FE_OFC2758_lsu_load_err 552.64 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OFC2759_lsu_store_err 552.64 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OFC2774_alu_operand_a_ex_15 552.64 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OFC3251_alu_operand_a_ex_2 552.64 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC4262_alu_operand_a_ex_17 552.64 429.6 554.24 433.2
setObjFPlanBox Instance u_ibex_core/FE_OFC4292_rf_rdata_b_ecc_4 552.64 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4336_n383 551.84 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4343_n1386 553.04 440.4 554.24 444.0
setObjFPlanBox Instance u_ibex_core/FE_OFC4381_n873 553.04 472.8 554.24 476.4
setObjFPlanBox Instance u_ibex_core/FE_OFC4487_n168 553.04 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OFC4496_n874 553.04 289.2 554.24 292.8
setObjFPlanBox Instance u_ibex_core/FE_OFC4556_n114 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OFC4572_alu_operand_b_ex_3 550.64 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/FE_OFC4673_n113 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC4714_n376 553.04 440.4 554.24 444.0
setObjFPlanBox Instance u_ibex_core/FE_OFC4741_FE_OFN1907_lsu_resp_valid 553.04 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OFC4764_FE_OFN1030_crash_dump_o_141 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4774_crash_dump_o_135 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4791_FE_OFN1040_crash_dump_o_136 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4792_rf_rdata_a_ecc_15 551.84 228.0 554.24 231.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4826_n379 553.04 440.4 554.24 444.0
setObjFPlanBox Instance u_ibex_core/FE_OFC4835_crash_dump_o_144 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4843_FE_OFN1052_crash_dump_o_129 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4857_FE_OFN1028_crash_dump_o_142 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4880_FE_OFN1016_crash_dump_o_148 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4895_FE_OFN1006_crash_dump_o_153 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4900_FE_OFN1044_crash_dump_o_134 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4938_FE_OFN1008_crash_dump_o_152 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC4969_FE_OFN1046_crash_dump_o_133 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5010_n868 553.04 314.4 554.24 318.0
setObjFPlanBox Instance u_ibex_core/FE_OFC5133_FE_OFN1050_crash_dump_o_131 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5170_rf_rdata_b_ecc_7 552.64 145.2 554.24 148.8
setObjFPlanBox Instance u_ibex_core/FE_OFC5201_alu_operand_a_ex_14 552.64 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5231_alu_operand_a_ex_11 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OFC5242_crash_dump_o_156 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5258_crash_dump_o_145 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5277_n866 553.04 386.4 554.24 390.0
setObjFPlanBox Instance u_ibex_core/FE_OFC5297_crash_dump_o_137 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5308_alu_operand_a_ex_6 553.04 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OFC5319_alu_operand_a_ex_23 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC5322_FE_OFN1002_crash_dump_o_155 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5329_FE_OFN998_crash_dump_o_157 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5346_alu_adder_result_ex_28 553.04 382.8 554.24 386.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5351_n151 553.04 433.2 554.24 436.8
setObjFPlanBox Instance u_ibex_core/FE_OFC5353_n151 552.64 436.8 554.24 440.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5354_FE_OFN1014_crash_dump_o_149 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5404_FE_OFN1032_crash_dump_o_140 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5405_FE_OFN1010_crash_dump_o_151 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5418_FE_OFN1036_crash_dump_o_138 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5439_FE_OFN1034_crash_dump_o_139 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5448_alu_operand_a_ex_20 553.04 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5461_branch_target_ex_22 553.04 393.6 554.24 397.2
setObjFPlanBox Instance u_ibex_core/FE_OFC5490_crash_dump_o_143 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5492_crash_dump_o_143 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5493_crash_dump_o_143 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5526_alu_operand_a_ex_8 552.64 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OFC5534_alu_operand_a_ex_26 553.04 436.8 554.24 440.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5536_alu_operand_a_ex_26 552.64 436.8 554.24 440.4
setObjFPlanBox Instance u_ibex_core/FE_OFC5569_crash_dump_o_132 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5570_crash_dump_o_132 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5575_alu_operand_a_ex_22 552.64 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OFC5583_n867 553.04 332.4 554.24 336.0
setObjFPlanBox Instance u_ibex_core/FE_OFC5587_FE_OFN1018_crash_dump_o_147 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5613_crash_dump_o_150 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5615_crash_dump_o_150 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5621_alu_operand_a_ex_18 552.24 462.0 554.24 465.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5648_alu_operand_a_ex_3 553.04 426.0 554.24 429.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5781_FE_OFN1028_crash_dump_o_142 553.04 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC5840_rf_rdata_b_ecc_29 552.24 195.6 554.24 199.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6115_boot_addr_i_14 552.64 328.8 554.24 332.4
setObjFPlanBox Instance u_ibex_core/FE_OFC6117_boot_addr_i_10 552.64 282.0 554.24 285.6
setObjFPlanBox Instance u_ibex_core/FE_OFC6118_boot_addr_i_13 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6119_boot_addr_i_12 552.64 303.6 554.24 307.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6120_boot_addr_i_11 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6121_boot_addr_i_9 552.64 300.0 554.24 303.6
setObjFPlanBox Instance u_ibex_core/FE_OFC6122_boot_addr_i_8 552.64 321.6 554.24 325.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6127_boot_addr_i_28 552.64 336.0 554.24 339.6
setObjFPlanBox Instance u_ibex_core/FE_OFC6133_boot_addr_i_17 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6139_boot_addr_i_15 552.64 321.6 554.24 325.2
setObjFPlanBox Instance u_ibex_core/FE_OFC6146_boot_addr_i_20 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC6479_rf_rdata_a_ecc_6 550.64 242.4 554.24 246.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC6502_rf_rdata_b_ecc_16 552.64 163.2 554.24 166.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC6583_rf_rdata_a_ecc_5 550.64 152.4 554.24 156.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC6722_rf_rdata_b_ecc_24 552.64 314.4 554.24 318.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC6727_rf_rdata_a_ecc_11 550.64 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC6775_rf_rdata_b_ecc_7 552.64 159.6 554.24 163.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC6777_rf_rdata_b_ecc_28 552.64 314.4 554.24 318.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC6871_rf_rdata_b_ecc_26 551.04 177.6 554.24 181.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC6976_FE_OFN4546_rf_rdata_a_ecc_26 553.04 274.8 554.24 278.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC7091_alu_operand_a_ex_16 553.04 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC7092_alu_operand_a_ex_16 553.04 433.2 554.24 436.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7093_alu_operand_a_ex_16 553.04 433.2 554.24 436.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7126_n360 552.64 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC7220_rf_rdata_b_ecc_1 552.64 192.0 554.24 195.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC7255_rf_rdata_a_ecc_23 550.64 271.2 554.24 274.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7260_rf_rdata_b_ecc_23 553.04 274.8 554.24 278.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC7271_rf_rdata_b_ecc_19 552.64 267.6 554.24 271.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC7316_rf_rdata_a_ecc_19 550.64 350.4 554.24 354.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC7317_rf_rdata_a_ecc_19 552.64 289.2 554.24 292.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7346_rf_rdata_b_ecc_20 552.64 159.6 554.24 163.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC7459_FE_OFN4496_rf_rdata_a_ecc_21 552.64 163.2 554.24 166.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7666_alu_operand_a_ex_8 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC7668_alu_operand_a_ex_8 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7874_rf_rdata_a_ecc_8 550.64 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC7883_rf_rdata_b_ecc_21 552.24 163.2 554.24 166.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC7897_rf_rdata_a_ecc_10 550.64 393.6 554.24 397.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC8036_multdiv_operand_b_ex_23 552.64 274.8 554.24 278.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC8045_rf_rdata_b_ecc_12 552.64 177.6 554.24 181.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC8070_rf_rdata_b_ecc_15 551.04 199.2 554.24 202.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8096_alu_operand_a_ex_4 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8097_alu_operand_a_ex_4 552.64 364.8 554.24 368.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC8108_alu_operand_a_ex_24 553.04 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8232_alu_operand_a_ex_0 552.64 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8245_n369 553.04 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8311_alu_operand_b_ex_8 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC8383_boot_addr_i_18 552.64 307.2 554.24 310.8
setObjFPlanBox Instance u_ibex_core/FE_OFC8401_boot_addr_i_24 552.64 325.2 554.24 328.8
setObjFPlanBox Instance u_ibex_core/FE_OFC8415_fetch_enable_i_0 552.64 94.8 554.24 98.4
setObjFPlanBox Instance u_ibex_core/FE_OFC8427_boot_addr_i_21 552.64 501.6 554.24 505.2
setObjFPlanBox Instance u_ibex_core/FE_OFC8436_boot_addr_i_25 552.64 328.8 554.24 332.4
setObjFPlanBox Instance u_ibex_core/FE_OFC8441_boot_addr_i_23 552.64 321.6 554.24 325.2
setObjFPlanBox Instance u_ibex_core/FE_OFC8449_boot_addr_i_19 552.64 310.8 554.24 314.4
setObjFPlanBox Instance u_ibex_core/FE_OFC8470_boot_addr_i_29 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC8474_boot_addr_i_22 552.64 318.0 554.24 321.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8462_multdiv_operand_b_ex_13 552.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8682_lsu_wdata_9 552.64 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC8694_multdiv_signed_mode_ex_1 552.64 386.4 554.24 390.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC8589_rf_rdata_a_ecc_14 551.44 231.6 554.24 235.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC8590_rf_rdata_a_ecc_14 551.44 242.4 554.24 246.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC8735_rf_rdata_a_ecc_21 551.44 163.2 554.24 166.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8771_rf_rdata_a_ecc_26 551.44 246.0 554.24 249.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8846_rf_rdata_a_ecc_17 550.64 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC8860_rf_rdata_a_ecc_20 551.44 336.0 554.24 339.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC8922_rf_rdata_b_ecc_2 551.84 231.6 554.24 235.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC8924_rf_rdata_b_ecc_2 551.84 217.2 554.24 220.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8925_instr_rdata_id_13 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8926_instr_rdata_id_13 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC8946_rf_rdata_b_ecc_17 552.64 195.6 554.24 199.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC9044_rf_rdata_b_ecc_9 552.64 170.4 554.24 174.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC9221_rf_rdata_b_ecc_31 553.04 364.8 554.24 368.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC9328_rf_rdata_b_ecc_3 553.04 145.2 554.24 148.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC9455_FE_OFN1912_csr_access 551.04 429.6 554.24 433.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC9481_rf_rdata_a_ecc_9 550.24 465.6 554.24 469.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC9754_FE_OFN4456_rf_rdata_a_ecc_5 552.64 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC9791_alu_operand_a_ex_3 552.24 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC9792_alu_operand_a_ex_3 552.64 426.0 554.24 429.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10034_rf_rdata_b_ecc_3 551.44 138.0 554.24 141.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10035_rf_rdata_b_ecc_3 550.64 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC10183_rf_rdata_b_ecc_27 552.64 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC10171_rf_raddr_a_2 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10290_alu_operand_b_ex_1 550.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10328_alu_operand_b_ex_1 550.64 429.6 554.24 433.2
setObjFPlanBox Instance u_ibex_core/FE_OCPC10228_n 552.64 433.2 554.24 436.8
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00064 549.44 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00066 550.24 310.8 554.24 314.4
setObjFPlanBox Instance u_ibex_core/CTS_ccl_inv_00061 553.04 224.4 554.24 228.0
setObjFPlanBox Instance u_ibex_core/CTS_ccl_a_inv_00030 549.44 220.8 554.24 224.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10316_alu_operand_b_ex_0 551.04 390.0 554.24 393.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10319_alu_operand_b_ex_0 551.44 422.4 554.24 426.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10329_rf_rdata_b_ecc_4 548.24 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10330_rf_rdata_b_ecc_4 552.64 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10331_rf_rdata_b_ecc_11 552.64 156.0 554.24 159.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10340_rf_rdata_b_ecc_10 552.64 177.6 554.24 181.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10348_alu_adder_result_ex_23 552.64 382.8 554.24 386.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10368_alu_operand_a_ex_21 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10369_alu_operand_a_ex_21 553.04 397.2 554.24 400.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10404_n152 553.04 440.4 554.24 444.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10405_n152 552.64 429.6 554.24 433.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10451_alu_operand_a_ex_22 553.04 465.6 554.24 469.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10452_alu_operand_a_ex_22 553.04 451.2 554.24 454.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10454_alu_operand_a_ex_23 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10472_alu_operand_a_ex_27 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10473_alu_operand_a_ex_27 553.04 411.6 554.24 415.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10500_alu_operand_a_ex_9 553.04 462.0 554.24 465.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10501_alu_operand_a_ex_9 553.04 364.8 554.24 368.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10506_alu_operand_a_ex_26 553.04 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10521_alu_operand_b_ex_2 552.24 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10522_alu_operand_b_ex_2 553.04 422.4 554.24 426.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10524_rf_rdata_b_ecc_5 551.04 148.8 554.24 152.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10525_rf_rdata_b_ecc_0 546.64 152.4 554.24 156.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10538_rf_raddr_a_4 548.24 400.8 554.24 404.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10549_alu_operand_a_ex_19 552.64 462.0 554.24 465.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10557_alu_operand_a_ex_20 553.04 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10564_alu_operand_a_ex_15 553.04 444.0 554.24 447.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10566_FE_OCPN5946_n 553.04 296.4 554.24 300.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10575_FE_RN_798_0 550.64 238.8 554.24 242.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10583_alu_operand_a_ex_6 553.04 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10584_alu_operand_a_ex_6 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10588_alu_operand_a_ex_24 553.04 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10592_alu_operand_a_ex_29 553.04 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10609_rf_rdata_a_ecc_15 552.64 228.0 554.24 231.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10632_alu_operand_a_ex_15 553.04 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10633_alu_operand_a_ex_25 553.04 447.6 554.24 451.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10656_alu_operand_a_ex_1 552.24 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10688_alu_operand_a_ex_4 551.84 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10690_alu_adder_result_ext_3 553.04 282.0 554.24 285.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10693_alu_operand_a_ex_5 552.64 454.8 554.24 458.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC10406_rf_rdata_b_ecc_8 552.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10418_FE_OFN6139_FE_RN_798_0 552.24 238.8 554.24 242.4
setObjFPlanBox Instance u_ibex_core/FE_OCPC10444_n 552.64 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC10448_rf_rdata_b_ecc_6 550.64 246.0 554.24 249.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10455_FE_OFN10303_FE_OCPN5721_rf_rdata_a_ecc_17 552.64 264.0 554.24 267.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10472_FE_OFN6122_rf_rdata_b_ecc_7 550.64 163.2 554.24 166.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC10747_rf_rdata_a_ecc_23 552.24 274.8 554.24 278.4
setObjFPlanBox Instance u_ibex_core/FE_RC_2478_0 551.84 418.8 554.24 422.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10819_alu_operand_b_ex_3 551.04 361.2 554.24 364.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC10858_rf_raddr_a_0 552.24 415.2 554.24 418.8
setObjFPlanBox Instance u_ibex_core/FE_OCPC10862_rf_rdata_b_ecc_1 550.64 422.4 554.24 426.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10877_FE_RN_548_0 552.64 458.4 554.24 462.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10878_boot_addr_i_21 552.64 314.4 554.24 318.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10879_boot_addr_i_31 552.64 343.2 554.24 346.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10880_boot_addr_i_20 552.64 310.8 554.24 314.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10882_boot_addr_i_11 552.64 282.0 554.24 285.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10883_boot_addr_i_13 552.64 289.2 554.24 292.8
setObjFPlanBox Instance u_ibex_core/FE_OFC10884_boot_addr_i_30 552.64 339.6 554.24 343.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10885_boot_addr_i_8 552.64 274.8 554.24 278.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10887_boot_addr_i_17 552.64 300.0 554.24 303.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10888_boot_addr_i_14 552.64 292.8 554.24 296.4
setObjFPlanBox Instance u_ibex_core/FE_OFC10889_boot_addr_i_16 552.64 300.0 554.24 303.6
setObjFPlanBox Instance u_ibex_core/FE_OFC10901_boot_addr_i_15 552.64 296.4 554.24 300.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10910_boot_addr_i_9 552.64 278.4 554.24 282.0
setObjFPlanBox Instance u_ibex_core/FE_OFC10911_boot_addr_i_12 552.64 285.6 554.24 289.2
setObjFPlanBox Instance u_ibex_core/FE_OFC10932_boot_addr_i_27 552.64 332.4 554.24 336.0
setObjFPlanBox Instance u_ibex_core/FE_OCPC10955_rdata_b_ecc_21 550.64 174.0 554.24 177.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC10987_target_ex_22 552.64 325.2 554.24 328.8
setObjFPlanBox Instance u_ibex_core/FE_OFC11013_crash_dump_o_154 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OFC11014_FE_OFN1009_crash_dump_o_152 552.64 552.0 554.24 555.6
setObjFPlanBox Instance u_ibex_core/FE_OCPC11016_alu_operand_b_ex_10 551.84 400.8 554.24 404.4
zoomBox -1198.58900 -303.26400 943.54400 757.40400
uiSetTool flightline
deselectAll
zoomBox -1051.48800 -180.63900 769.32600 720.92900
zoomBox -926.24800 -76.40800 621.44400 689.92500
pan 322.48400 840.59300
zoomBox -538.40000 3.80800 777.13800 655.19100
zoomBox -481.95700 79.99900 636.25100 633.67500
pan 81.84000 513.52000
zoomBox -447.42400 -52.73400 868.11600 598.65000
