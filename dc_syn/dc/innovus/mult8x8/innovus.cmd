#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri May 29 12:58:28 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.10-p002_1 (64bit) 04/19/2019 15:18 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.10-p002_1 NR190418-1643/19_10-UB (database version 18.20, 458.7.1) {superthreading v1.51}
#@(#)CDS: AAE 19.10-b002 (64bit) 04/19/2019 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.10-p002_1 () Apr 19 2019 06:39:48 ( )
#@(#)CDS: SYNTECH 19.10-b001_1 () Apr  4 2019 03:00:51 ( )
#@(#)CDS: CPE v19.10-p002
#@(#)CDS: IQuantus/TQuantus 19.1.0-e101 (64bit) Thu Feb 28 10:29:46 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
set init_verilog ../../dc/mult8x8/mult8x8.nl.v
set init_io_file ./mult8x8.io
set init_lef_file {/courses/ee6321/share/ibm13rflpvt/lef/ibm13_8lm_2thick_3rf_tech.lef /courses/ee6321/share/ibm13rflpvt/lef/ibm13rflpvt_macros.lef}
set init_mmmc_file ./mmmc.view
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1
set init_import_mode {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1}
set init_pwr_net VDD
set init_gnd_net VSS
set_message -no_limit
init_design
floorPlan -s 240 54.0 8.4 8.4 8.4 8.4
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {VDD VSS} -type core_rings -layer {top M3 bottom M3 left M2 right M2} -width 2.4 -spacing 1.2 -center 1
redraw
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
loadIoFile ./mult8x8.io
redraw
saveDesign mult8x8.floorplan.enc
setDesignMode -process 130 -flowEffort standard
setRouteMode -earlyGlobalMaxRouteLayer 3
setPlaceMode -timingDriven true -congEffort high
setOptMode -fixFanoutLoad true -effort high -moveInst true -reclaimArea true
place_design
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
redraw
checkPlace
buildTimingGraph
optDesign -preCTS
redraw
saveDesign mult8x8.placed.enc
setAnalysisMode -cppr both
setAnalysisMode -analysisType bcwc
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
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -early -clock_tree clk 0.010
set_ccopt_property target_max_trans_sdc -delay_corner typical_dly -late -clock_tree clk 0.010
set_ccopt_property source_driver -clock_tree clk {INVX1TS/A INVX1TS/Y}
set_ccopt_property source_max_capacitance -clock_tree clk 0.005
set_ccopt_property clock_period -pin clk 2
create_ccopt_skew_group -name clk/typical_constraint -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/typical_constraint true
set_ccopt_property extracted_from_clock_name -skew_group clk/typical_constraint clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/typical_constraint typical_constraint
set_ccopt_property extracted_from_delay_corners -skew_group clk/typical_constraint {typical_dly typical_dly}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
redraw
saveDesign mult8x8.clock.enc
getPlaceMode -doneQuickCTS -quiet
setAttribute -net resetn -weight 5 -avoid_detour true -bottom_preferred_routing_layer 2 -top_preferred_routing_layer 3 -preferred_extra_space 2
selectNet resetn
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeSelectedNetOnly true
setNanoRouteMode -quiet -routeTopRoutingLayer 3
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
globalDetailRoute
redraw
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
optDesign -postRoute -setup -hold
globalNetConnect VDD -type pgpin -pin VDD -override
globalNetConnect VSS -type pgpin -pin VSS -override
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
applyGlobalNets
saveDesign mult8x8.routed.enc
verify_drc
addFiller -cell FILL16TS FILL1TS FILL2TS FILL32TS FILL4TS FILL64TS FILL8TS -prefix IBM13RFLPVT_FILLER
verify_drc
redraw
clearDrc
verify_drc
verifyConnectivity -type regular -error 1000 -warning 50
verifyProcessAntenna
report_power -leakage -cap -nworst -pg_pin -outfile mult8x8.power.rpt
write_lef_abstract mult8x8.lef -5.7 -PgpinLayers 3 -specifyTopLayer 3 -stripePin
defOut -floorplan -netlist -routing mult8x8.final.def
streamOut mult8x8.gds -mapFile /courses/ee6321/share/ibm13rflpvt/mapfiles/enc2gds.map -libName ibm13rflpvt -structureName mult8x8 -units 1000 -mode ALL
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL1TS FILL2TS FILL4TS FILL8TS FILL16TS FILL32TS FILL64TS} mult8x8.phy.v
saveNetlist mult8x8.nophy.v
extractRC -outfile mult8x8.cap
rcOut -spef mult8x8.spef
write_sdf -version 2.1 "$design_name.sdf"
write_sdf -version 2.1 -target_application verilog "$design_name.verilog.sdf"
setAnalysisMode -checkType hold -useDetailRC true
report_timing -check_type hold -nworst 5 > "$design_name.hold.rpt"
setAnalysisMode -checkType setup -useDetailRC true
report_timing -check_type setup -nworst 5 > "$design_name.setup.rpt"
reportCapViolation -outfile final_cap.tarpt
verifyGeometry
verifyConnectivity -type all
summaryReport -outfile mult8x8.summary.rpt
reportCritNet -outfile mult8x8.critnet.rpt
