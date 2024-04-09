run:
	innovus -nowin -init mult8x8.tcl

cdl:
	perl v2lvs.pl mult8x8

clean:	
	rm -rf innovus* *enc* *cts*
	rm -rf ccopt_clock_tree.spec final_cap.tarpt
	rm -rf *.lef *.rpt* *.def* *.gds* *.v *.place *.sdc *.sdf *.spef *.cdl *.log *.csd
	rm -rf timingReports summaryReport .cadence	
