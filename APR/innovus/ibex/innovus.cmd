#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr  9 17:15:43 2024                
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
floorPlan -s 435 434.88 17.5 17.5 17.5 17.5
redraw
fit
globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets
addRing -nets {VDD VSS} -type core_rings -layer {top M3 bottom M3 left M2 right M2} -width 5 -spacing 2.5 -center 1
redraw
sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0
loadIoFile ./ibex_top.io
redraw
saveDesign ibex_top.floorplan.enc
zoomBox -42.14900 -16.03700 375.10700 357.49600
zoomBox -34.03600 -11.19600 267.43200 258.68200
zoomBox -15.61200 -6.62400 118.15200 113.12300
zoomBox -5.91400 -4.57800 44.53700 40.58600
zoomBox -2.64700 -3.27100 19.73900 16.76900
zoomBox -1.98000 -2.62000 14.19400 11.85900
zoomBox -1.15100 -1.81100 7.29200 5.74700
zoomBox -0.85700 -1.38400 5.24300 4.07700
zoomBox -0.56200 -0.95000 3.18500 2.40400
fit
