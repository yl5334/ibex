run:
	innovus -nowin -init ibex_top.tcl

cdl:
	perl v2lvs.pl ibex

clean:	
	rm -rf innovus* *enc*
	rm -rf ccopt_clock_tree.spec final_cap.tarpt
	rm -rf *.lef *.rpt* *.def* *.gds* *.v *.place *.sdc *.sdf *.spef *.cdl *.log
	rm -rf timingReports summaryReport .cadence	
