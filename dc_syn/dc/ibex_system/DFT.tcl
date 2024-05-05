#set_dft_signal -view spec -type ScanDataIn -port SI
#set_dft_signal -view spec -type ScanDataOut -port test_so
set_dft_signal -view spec -type ScanEnable -port scan_rst_ni 
#set_scan_path chain1 -view existing_dft -scan_data_in test_si \-scan_data_out test_so
set_dft_signal -view existing_dft -view existing_dft -type ScanClock -port clk_i \
-timing [list 40 60]
set_dft_signal -view existing_dft -type Reset -port rst_ni -active_state 0
