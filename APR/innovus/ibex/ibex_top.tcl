##################################################
# Innovus Script
##################################################


##################################################
# Setup design
##################################################

set design_name ibex_top
source ./config.globals
set_message -no_limit

# Initialize a design using the Tcl globals listed in the Related Global section
# Notes: At this script, all the settings are included in the file 'config.globals'
init_design

# load DEF file

#loadDefFile -hier ../../../dc_syn/dc/ibex/$design_name.def

##################################################
# Set the parameters for the floorplan
##################################################

set std_cell_height 3.6
set core_width [expr 205*$std_cell_height]
# core_height should be a multiple of the std_cell_height
# Need to iterate the core width and height to make the density close to 0.7
set core_height [expr 150*$std_cell_height]
set ring_left_width 2.4
set ring_right_width 2.4
set ring_top_width 2.4
set ring_bottom_width 2.4
set ring_left_space 1.2
set ring_right_space 1.2 
set ring_top_space 1.2
set ring_bottom_space 1.2


##################################################
# Create the floorplan
##################################################

# Specify the floorplan dimensions by size; or by die, I/O, or core coordinates
floorPlan -s $core_width $core_height [expr 2*$ring_left_width + 3*$ring_left_space] \
[expr 2*$ring_bottom_width + 3*$ring_bottom_space] [expr 2*$ring_right_width + 3*$ring_right_space] \
[expr 2*$ring_top_width + 3*$ring_top_space]

# Refresh the display in the viewable window (This command doesn't function in APR process)
redraw

# Fit the entire design in the viewable window (This command doesn't function in APR process)
fit


##################################################
# Generate power rails 
##################################################

# Adds a new global net connection to the specified global net
proc connect_std_cells_to_power { } {

    # Connect the tiehi, tiolo nets in instances to the global nets 'VDD' & 'VSS'
    globalNetConnect VDD -type tiehi -inst * -verbose
    globalNetConnect VSS -type tielo -inst * -verbose

    # Connect the power pins in instances to the global nets 'VDD' & 'VSS'
    globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
    globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
}

Puts "#####################"
Puts "###"
Puts "### Power Routing ..."
Puts "###"
Puts "#####################"

connect_std_cells_to_power

# Apply and restore the global net connectivity rules to the the design
# and creates the necessary connections between instances and these global nets
applyGlobalNets

redraw

addRing -nets {VDD VSS} -type core_rings -layer {top M3 bottom M3 left M2 right M2} -width $ring_top_width \
        -spacing $ring_top_space -center 1

redraw


# Routes power structures
# Notes: This command should be used after creating power rings and power stripes


# Create power stripes within the specified area
### TODO: You have to change below considering your floorplan

addStripe -block_ring_top_layer_limit MG \
          -block_ring_bottom_layer_limit M3 \
          -padcore_ring_top_layer_limit MG \
          -padcore_ring_bottom_layer_limit M3 \
          -max_same_layer_jog_length 4 \
          -merge_stripes_value 4 \
          -layer MQ \
          -set_to_set_distance 6 \
          -width 2 \
          -spacing 1 \
          -nets {VDD VSS} \
          -direction vertical \
          -area {5 5 748 550}

addStripe -block_ring_top_layer_limit MG \
          -block_ring_bottom_layer_limit M3 \
          -padcore_ring_top_layer_limit MG \
          -padcore_ring_bottom_layer_limit M3 \
          -max_same_layer_jog_length 4 \
          -merge_stripes_value 4 \
          -layer MG \
          -set_to_set_distance 6 \
          -width 2 \
          -spacing 1 \
          -nets {VDD VSS} \
          -direction horizontal \
          -area {5 5 748 550}

sroute -nets {VDD VSS} -allowJogging 0 -allowLayerChange 0

sroute -nets {VDD} -padPinLayerRange {1 3} 
sroute -nets {VSS} -padPinLayerRange {1 3} 
saveDesign "$design_name.floorplan_power_ring.enc"

##################################################
# Set all the input/output ports
##################################################
 
# Load an I/O assignment file 
loadIoFile "./$design_name.io"

redraw

# Save the flooprlan information to a file (intermediate saving)
saveDesign "$design_name.floorplan.enc"

##################################################
# Place design
##################################################

Puts "####################"
Puts "###"
Puts "### Place Design ..."
Puts "###"
Puts "####################"

# Specify the process technology value
setDesignMode -process 130 -flowEffort standard

# Specify a routing layer limit for Early Global Route
setMaxRouteLayer 3

set delaycal_use_default_delay_limit 1000

# Control certain aspects of how the software places cells
setPlaceMode -timingDriven true -congEffort high

# Set global parameters for timing optimization
setOptMode -fixFanoutLoad true -effort high -moveInst true -reclaimArea true

# Place stanard cells based on the global settings for placement, RC extraction, and timing analysis
place_design

#connect_std_cells_to_power
redraw

# Check FIXED and PLACED cells for violations, add violation markers to the design display area
checkPlace

# Build the static timing model of the design
buildTimingGraph

place_design -incremental


##################################################
# Do preCTS optimization
##################################################

Puts "###########################"
Puts "###"
Puts "### PreCTS Optimization ..."
Puts "###"
Puts "###########################"

# Perform timing optimization before or after the clock tree is built, or after routing and generate timing reports
# Notes: '-preCTS' option performs timing optimization on the placed design, before the clock tree is built
optDesign -preCTS

#added
#globalDetailRoute

# Save design
redraw
saveDesign "$design_name.placed.enc"


##################################################
# Do clock tree synthesis
##################################################

Puts "############################"
Puts "###"
Puts "### Clock Tree Synthesis ..."
Puts "###"
Puts "############################"

# Set global analysis modes for timing analysis
# Notes: '-cppr' option removes pessimism from clock paths
#        '-analysisType bcwc' option checks the design for two extreme conditions
setAnalysisMode -cppr both
setAnalysisMode -analysisType bcwc
#
## Control certain aspects of how the NanoRoute router routes the design
setNanoRouteMode -quiet -routeTopRoutingLayer 3
#
## Create a new route type and set the routing properties for the nets
## Notes: 'preferred_routing_layer_effort' specify whether the preferred routing layer effort will be low, medium, or high
create_route_type -name top -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
create_route_type -name trunk -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
create_route_type -name leaf -preferred_routing_layer_effort medium -top_preferred_layer 3 -bottom_preferred_layer 2
#
## Specify the route type
## Setting this property binds an existing user-defiend route_type to one or more types of clock tree nets
set_ccopt_property route_type -net_type top top
set_ccopt_property route_type -net_type trunk trunk
set_ccopt_property route_type -net_type leaf leaf
#
## Specify the buffer and inverter cells for CTS
set_ccopt_property inverter_cells [list CLKINVX1TS CLKINVX2TS CLKINVX3TS CLKINVX4TS CLKINVX6TS CLKINVX8TS CLKINVX12TS CLKINVX16TS CLKINVX20TS]
set_ccopt_property buffer_cells [list CLKBUFX2TS CLKBUFX3TS CLKBUFX4TS CLKBUFX6TS CLKBUFX8TS CLKBUFX12TS CLKBUFX16TS CLKBUFX20TS]
set_ccopt_property use_inverters true
#
## Specify the target skew for clock tree balancing
set_ccopt_property target_max_trans 500ps
set_ccopt_property target_skew 300ps
#
## Create a clock tree network with associated skew groups and other CTS configuration settings
create_ccopt_clock_tree_spec -file ccopt_clock_tree.spec
source "./ccopt_clock_tree.spec"
#
## Perform clock concurrent optimization (CCOpt) on the current loaded design in Innovus
## CCOpt optimizes both the clock tree and the datapath to meet global timing constraints
ccopt_design
#
## Save design
connect_std_cells_to_power
redraw
saveDesign "$design_name.clock.enc"
savePlace "$design_name.place"


##################################################
# Route signals
##################################################

Puts "###################################"
Puts "###"
Puts "### Route Critical Signal First ..."
Puts "###"
Puts "###################################"

# Unfix the clock nets to avoid routing problems
changeUseClockNetStatus -noFixedNetWires

############### Route resetn first ###############
# Attach attributes to nets / Attaching the attributes allows the NanoRoute routing commands
setAttribute -net rst_ni -weight 5 -avoid_detour true -preferred_extra_space 2 \
-bottom_preferred_routing_layer 2 \
             -top_preferred_routing_layer 3 

# Select a net and highlight it in the design display window
selectNet rst_ni

# Control certain aspects of how the NanoRoute router routes the design
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeSelectedNetOnly true
setNanoRouteMode -quiet -routeTopRoutingLayer 3
setNanoRouteMode -quiet -routeBottomRoutingLayer 1

# Use the NanoRoute router to perform both global and detailed routing with one command
globalDetailRoute

redraw
##################################################

Puts "###########################"
Puts "###"
Puts "### Route Other Signals ..."
Puts "###"
Puts "###########################"

############## Route all other nets ##############
# Attach attributes to nets / Attaching the attributes allows the NanoRoute routing commands
setAttribute -net * -weight 5 -avoid_detour true -preferred_extra_space 1 -bottom_preferred_routing_layer 1 -top_preferred_routing_layer 3 

# Select a net and highlight it in the design display window
selectNet *

# Deselect the specified net
deselectNet VDD
deselectNet VSS

# Control certain aspects of how the NanoRoute router routes the design
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
##################################################


##################################################
# Extract and optimize *****DRC Occurs
##################################################

Puts "######################################"
Puts "###"
Puts "### RC Extraction and Optimization ..."
Puts "###"
Puts "######################################"

# Set the native RC extraction mode
# Notes: This command should be used before using the extractRC command
setExtractRCMode -engine postRoute -effortLevel low -coupled true

# Extract resistance and capacitance for the interconnects and store the results in an RC database
extractRC

# Set global analysis modes for timing analysis
# Notes: '-analysisType onChipVaration' option calculates the delay for one path based on maximum operation
#        condition while calculating the delay for another path based on minimum operating condition
#        for setup or hold checks

setAnalysisMode -analysisType onChipVariation
#setAnalysisMode -aocv true

# Set global parameters for timing optimization
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

# Perform timing optimization before or after the clock tree is built, or after routing
# Notes: '-hold' option corrects hold violations
#        '-postRoute' option performs timing optimization on a design whose routing is complete
optDesign

# Connect all new cells to VDD/GND
globalNetConnect VDD -type pgpin -pin {VDD} -override
globalNetConnect VSS -type pgpin -pin {VSS} -override
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
applyGlobalNets

# added
globalDetailRoute
# Save design 
saveDesign "$design_name.routed.enc"


##################################################
# Add decap or fillers
##################################################

Puts "############################"
Puts "###"
Puts "### Add Decap or Fillers ..."
Puts "###"
Puts "############################"

# Check width, spacing, and internal geometry of objects and the wiring between them
# Create and save violation markers in the design database
verify_drc

# Add filler cells
# Notes: '-cell' option specifies the list of filler cells to add
addFiller -cell FILL16TS FILL1TS FILL2TS FILL32TS FILL4TS FILL64TS FILL8TS -prefix IBM13RFLPVT_FILLER

verify_drc
redraw


##################################################
# Verify the design
##################################################

Puts "##############"
Puts "###"
Puts "### Verify ..."
Puts "###"
Puts "##############"

# Clear all design rule checking (DRC) markers in your design
clearDrc
verify_drc

# Detect conditions such as opens, unconnected wires, unconnected pins, loops, partial routing, and unrouted nets
# Generate violation markers in the design window
verifyConnectivity -type regular -error 1000 -warning 50

# Verify process antenna effect (PAE) and maximum floating area violations
verifyProcessAntenna


##################################################
# Produce outputs
##################################################

Puts "#######################"
Puts "###"
Puts "### Produce Outputs ..."
Puts "###"
Puts "#######################"

# Report
report_power -leakage -cap -nworst -pg_pin -outfile "$design_name.power.rpt"

# Generate hierarchical design abstract (LEF) information for the current routed block-level design
write_lef_abstract "$design_name.lef" -5.7 -PgpinLayers {1 2 3 4 5} -specifyTopLayer 5 -stripePin

# Write the specified information to a DEF file
defOut -floorplan -netlist -routing "$design_name.final.def"

# Create a GDSII file of the current database
# Notes: '-mapFile' option specifies the file used for layer mapping
#        '-libName' option specifies the library to convert to GDSII Stream format
streamOut "$design_name.gds" -mapFile "/courses/ee6321/share/ibm13rflpvt/mapfiles/enc2gds.map" -libName ibm13rflpvt -structureName $design_name -units 1000 -mode ALL

# Write a netlist file of the design
# Notes: '-phys' option writes out physical cell instances, and inserts power and ground nets in the netlist
saveNetlist -phys -excludeLeafCell -excludeCellInst "FILL1TS FILL2TS FILL4TS FILL8TS FILL16TS FILL32TS FILL64TS" "$design_name.phy.v"
saveNetlist "$design_name.nophy.v" 

# Extract RC information
extractRC -outfile "$design_name.cap"
rcOut -spef "$design_name.spef"

# Write delays to a Standard Delay Format (SDF) file
write_sdf -version 2.1 "$design_name.sdf"
write_sdf -version 2.1 -target_application verilog "$design_name.verilog.sdf"

# Report hold/setup violation
setAnalysisMode -checkType hold -useDetailRC true
report_timing -check_type hold -nworst 10 > "$design_name.hold.rpt"
setAnalysisMode -checkType setup -useDetailRC true
report_timing -check_type setup -nworst 10 > "$design_name.setup.rpt"
reportCapViolation -outfile final_cap.tarpt

# Run DRC and connection checks
verifyGeometry
verifyConnectivity -type all

# Report statistics for the entire design
summaryReport -outfile "$design_name.summary.rpt"

# Generate a file containing a list of nets which have critical slack of the currently specified timing analysis mode
reportCritNet -outfile "$design_name.critnet.rpt"

puts "########################################"
puts "#                                      #"
puts "# And finally ...                      #"
puts "#                                      #"
puts "# Innovus script finished              #"
puts "#                                      #"
puts "########################################"

#exit
