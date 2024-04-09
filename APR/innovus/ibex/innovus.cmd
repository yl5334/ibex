#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr  9 17:52:39 2024                
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
floorPlan -s 504 504.0 8.4 8.4 8.4 8.4
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
redraw
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MQ -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction vertical -area {3 3 339 177}
addStripe -block_ring_top_layer_limit MG -block_ring_bottom_layer_limit M3 -padcore_ring_top_layer_limit MG -padcore_ring_bottom_layer_limit M3 -max_same_layer_jog_length 4 -merge_stripes_value 4 -layer MG -set_to_set_distance 6 -width 2 -spacing 1 -nets {VDD VSS} -direction horizontal -area {3 3 339 177}
sroute -nets VDD -padPinLayerRange {1 3}
sroute -nets VSS -padPinLayerRange {1 3}
loadIoFile ./ibex_top.io
redraw
saveDesign ibex_top.floorplan.enc
fit
fit
zoomBox -194.61100 18.76100 571.19600 370.58100
zoomBox -153.02800 26.35900 497.90800 325.40600
zoomBox -195.37100 18.00100 570.43600 369.82100
zoomBox -115.32700 34.48600 437.96900 288.67600
zoomBox -25.41100 64.65600 314.38500 220.76200
zoomBox 29.77900 83.18500 238.45700 179.05400
zoomBox 78.54200 96.50000 187.47500 146.54500
zoomBox 107.92700 105.38500 164.79300 131.51000
zoomBox 116.72100 108.32300 157.80700 127.19800
zoomBox 125.29100 111.45900 150.52400 123.05100
zoomBox 129.06600 112.84700 147.29700 121.22300
zoomBox 111.87100 106.67200 160.21600 128.88200
zoomBox 68.82400 95.26200 197.01200 154.15300
zoomBox -18.44400 75.17900 270.46300 207.90600
zoomBox -117.12400 52.90900 353.31500 269.03400
zoomBox -158.01100 30.14500 395.44800 284.41000
zoomBox -206.40600 3.01100 444.72400 302.14700
zoomBox -330.32400 -66.30400 570.89600 347.72600
zoomBox -409.50900 -108.86100 650.75000 378.23300
zoomBox -615.75300 -238.92900 851.73200 435.24900
zoomBox -739.24200 -306.98100 987.21100 486.17000
fit
fit
fit
zoomBox -303.82000 -24.24000 756.12100 462.70800
zoomBox -252.67100 -23.38000 648.27900 390.52600
zoomBox -208.21900 -22.24200 557.58800 329.57800
zoomBox -86.85300 -18.68600 312.90500 164.96700
zoomBox -2.76800 -13.78400 148.00300 55.48200
zoomBox 5.15200 -9.23100 114.08700 40.81500
zoomBox 14.91900 -4.93600 71.78500 21.18900
zoomBox 16.71400 -4.23300 65.05000 17.97300
zoomBox 26.89900 -1.97600 42.39900 5.14500
zoomBox 30.31800 -1.10900 35.28800 1.17400
fit
uiSetTool flightline
setDrawView fplan
zoomBox -326.31500 -24.69000 733.62600 462.25800
zoomBox -361.74500 -33.23800 885.24400 539.64200
uiSetTool move
selectObject Module u_ibex_core_ex_block_i_gen_multdiv_fast_multdiv_i
setObjFPlanBox Module u_ibex_core_ex_block_i_gen_multdiv_fast_multdiv_i 249.845 112.476 446.157 308.788
deselectAll
selectObject Module u_ibex_core_cs_registers_i
setObjFPlanBox Module u_ibex_core_cs_registers_i -244.943 208.456 -13.351 440.048
zoomBox -339.13900 2.52900 720.80400 489.47800
zoomBox -317.34100 33.88700 583.61100 447.79400
zoomBox -299.78800 57.94100 466.02100 409.76200
zoomBox -284.86800 78.38700 366.07000 377.43500
deselectAll
selectObject Module u_ibex_core_ex_block_i_gen_multdiv_fast_multdiv_i
setObjFPlanBox Module u_ibex_core_ex_block_i_gen_multdiv_fast_multdiv_i -283.12 58.001 -86.72 256.001
zoomBox -311.94500 65.26300 453.86400 417.08400
panPage 0 -1
zoomBox -301.44600 -26.81400 349.49200 272.23400
zoomBox -295.45800 -16.53900 257.84000 237.65200
zoomBox -290.36800 -7.80600 179.93600 208.25700
panPage -1 0
zoomBox -369.63300 10.71500 -29.83700 166.82100
