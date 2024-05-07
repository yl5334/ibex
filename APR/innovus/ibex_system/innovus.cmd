#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue May  7 00:29:22 2024                
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
set init_verilog ../../../verilog_files/ibex_system.v
set init_io_file ../../innovus/ibex_system/ibex_system.io
set init_lef_file {/courses/ee6321/share/ibm13rflpvt/lef/ibm13_8lm_2thick_3rf_tech.lef  /courses/ee6321/share/ibm13rflpvt/lef/ibm13rflpvt_macros.lef  ../ibex/ibex_top.lef  ../../../mem_db/dmem.vclef  ../../../mem_db/imem.vclef  ../../../mem_db/sram_top.lef}
setImportMode -treatUndefinedCellAsBbox 0 -keepEmptyModule 1
set init_import_mode {-treatUndefinedCellAsBbox 0 -keepEmptyModule 1}
set init_pwr_net VDD
set init_gnd_net VSS
set_message -no_limit
init_design
floorPlan -s 900 1100 0 0 0 0
placeInstance u_ibex_top 50 50 R0 -fixed
placeInstance u_IMEM/imem0 67.5 750 R0 -fixed
placeInstance u_DMEM/dmem0 700 750 -fixed
placeInstance u_sram 260 700 -fixed
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
redraw
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MQ -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction vertical -area {3 3 987 1098}
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MG -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction horizontal -area {3 3 987 1098}
loadIoFile ./ibex_system.io
redraw
saveDesign ibex_system.floorplan.enc
setDrawView ameba
setDrawView fplan
setDrawView ameba
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
selectInst u_ibex_top
deselectAll
selectInst u_sram
deselectAll
selectInst u_IMEM/imem0
deselectAll
selectInst u_DMEM/dmem0
deselectAll
selectInst u_ibex_top
deselectAll
setDrawView place
setLayerPreference violation -isVisible 0
setDrawView ameba
setDrawView fplan
setDrawView place
setDrawView ameba
setDrawView place
clearDrc
verify_drc
verifyConnectivity -type regular -error 1000 -warning 50
write_lef_abstract ibex_system.lef -5.7 -PgpinLayers {1 2 3 4 5} -specifyTopLayer 5 -stripePin
defOut -floorplan -netlist -routing ibex_system.final.def
streamOut ibex_system.gds -mapFile /courses/ee6321/share/ibm13rflpvt/mapfiles/enc2gds.map -libName ibm13rflpvt -structureName ibex_system -units 1000 -mode ALL
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL1TS FILL2TS FILL4TS FILL8TS FILL16TS FILL32TS FILL64TS fill1} ibex_system.phy.v
saveNetlist ibex_system.nophy.v
extractRC -outfile ibex_system.cap
rcOut -spef ibex_system.spef
verifyConnectivity -type all
summaryReport -outfile ibex_system.summary.rpt
