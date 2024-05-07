/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Sun May  5 21:56:44 2024
/////////////////////////////////////////////////////////////


module IMEM ( clock, cen, wen, addr, data_w, data_r );
  input [7:0] addr;
  input [31:0] data_w;
  output [31:0] data_r;
  input clock, cen, wen;

  tri   clock;
  tri   cen;
  tri   wen;
  tri   [7:0] addr;

  imem imem0 ( .Q(data_r), .A(addr), .D(data_w), .CLK(clock), .CEN(cen), .WEN(
        wen) );
endmodule


module DMEM ( clock, cen, wen, addr, data_w, data_r );
  input [7:0] addr;
  input [31:0] data_w;
  output [31:0] data_r;
  input clock, cen, wen;

  tri   clock;
  tri   cen;
  tri   wen;
  tri   [7:0] addr;

  dmem dmem0 ( .Q(data_r), .A(addr), .D(data_w), .CLK(clock), .CEN(cen), .WEN(
        wen) );
endmodule


module ibex_system ( clk_i, rst_ni, test_en_i, ram_cfg_i, hart_id_i, 
        boot_addr_i, instr_req_o, instr_gnt_i, instr_rvalid_i, instr_addr_o, 
        instr_rdata_i, instr_rdata_intg_i, instr_err_i, data_req_o, data_gnt_i, 
        data_rvalid_i, data_we_o, data_be_o, data_addr_o, data_wdata_o, 
        data_wdata_intg_o, data_rdata_i, data_rdata_intg_i, data_err_i, 
        irq_software_i, irq_timer_i, irq_external_i, irq_fast_i, irq_nm_i, 
        scramble_key_valid_i, scramble_key_i, scramble_nonce_i, scramble_req_o, 
        debug_req_i, crash_dump_o, double_fault_seen_o, fetch_enable_i, 
        alert_minor_o, alert_major_internal_o, alert_major_bus_o, core_sleep_o, 
        scan_rst_ni );
  input [9:0] ram_cfg_i;
  input [31:0] hart_id_i;
  input [31:0] boot_addr_i;
  output [31:0] instr_addr_o;
  input [31:0] instr_rdata_i;
  input [6:0] instr_rdata_intg_i;
  output [3:0] data_be_o;
  output [31:0] data_addr_o;
  output [31:0] data_wdata_o;
  output [6:0] data_wdata_intg_o;
  input [31:0] data_rdata_i;
  input [6:0] data_rdata_intg_i;
  input [14:0] irq_fast_i;
  input [127:0] scramble_key_i;
  input [63:0] scramble_nonce_i;
  output [159:0] crash_dump_o;
  input [3:0] fetch_enable_i;
  input clk_i, rst_ni, test_en_i, instr_gnt_i, instr_rvalid_i, instr_err_i,
         data_gnt_i, data_rvalid_i, data_err_i, irq_software_i, irq_timer_i,
         irq_external_i, irq_nm_i, scramble_key_valid_i, debug_req_i,
         scan_rst_ni;
  output instr_req_o, data_req_o, data_we_o, scramble_req_o,
         double_fault_seen_o, alert_minor_o, alert_major_internal_o,
         alert_major_bus_o, core_sleep_o;
  wire   n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n2, n4, n6, n8, n10, n12, n14, n16, n18, n20, n22,
         n24, n26, n28, n30, n32, n34, n36, n38, n40, n42, n44, n46, n48, n50,
         n52, n54, n56, n58, n60, n62, n64;
  tri   clk_i;
  tri   rst_ni;
  tri   test_en_i;
  tri   [9:0] ram_cfg_i;
  tri   [31:0] hart_id_i;
  tri   [31:0] boot_addr_i;
  tri   instr_req_o;
  tri   instr_gnt_i;
  tri   instr_rvalid_i;
  tri   [31:0] instr_addr_o;
  tri   [6:0] instr_rdata_intg_i;
  tri   instr_err_i;
  tri   data_req_o;
  tri   data_gnt_i;
  tri   data_rvalid_i;
  tri   data_we_o;
  tri   [3:0] data_be_o;
  tri   [31:0] data_addr_o;
  tri   [6:0] data_wdata_intg_o;
  tri   [31:0] data_rdata_i;
  tri   [6:0] data_rdata_intg_i;
  tri   data_err_i;
  tri   irq_software_i;
  tri   irq_timer_i;
  tri   irq_external_i;
  tri   [14:0] irq_fast_i;
  tri   irq_nm_i;
  tri   scramble_key_valid_i;
  tri   [127:0] scramble_key_i;
  tri   [63:0] scramble_nonce_i;
  tri   scramble_req_o;
  tri   debug_req_i;
  tri   [159:0] crash_dump_o;
  tri   double_fault_seen_o;
  tri   [3:0] fetch_enable_i;
  tri   alert_minor_o;
  tri   alert_major_internal_o;
  tri   alert_major_bus_o;
  tri   core_sleep_o;
  tri   scan_rst_ni;

  ibex_top u_ibex_top ( .clk_i(clk_i), .rst_ni(rst_ni), .test_en_i(test_en_i), 
        .ram_cfg_i(ram_cfg_i), .hart_id_i(hart_id_i), .boot_addr_i(boot_addr_i), .instr_req_o(instr_req_o), .instr_gnt_i(instr_gnt_i), .instr_rvalid_i(
        instr_rvalid_i), .instr_addr_o(instr_addr_o), .instr_rdata_intg_i(
        instr_rdata_intg_i), .instr_err_i(instr_err_i), .data_req_o(data_req_o), .data_gnt_i(data_gnt_i), .data_rvalid_i(data_rvalid_i), .data_we_o(data_we_o), .data_be_o(data_be_o), .data_addr_o(data_addr_o), .data_wdata_intg_o(
        data_wdata_intg_o), .data_rdata_i(data_rdata_i), .data_rdata_intg_i(
        data_rdata_intg_i), .data_err_i(data_err_i), .irq_software_i(
        irq_software_i), .irq_timer_i(irq_timer_i), .irq_external_i(
        irq_external_i), .irq_fast_i(irq_fast_i), .irq_nm_i(irq_nm_i), 
        .scramble_key_valid_i(scramble_key_valid_i), .scramble_key_i(
        scramble_key_i), .scramble_nonce_i(scramble_nonce_i), .scramble_req_o(
        scramble_req_o), .debug_req_i(debug_req_i), .crash_dump_o(crash_dump_o), .double_fault_seen_o(double_fault_seen_o), .fetch_enable_i(fetch_enable_i), 
        .alert_minor_o(alert_minor_o), .alert_major_internal_o(
        alert_major_internal_o), .alert_major_bus_o(alert_major_bus_o), 
        .core_sleep_o(core_sleep_o), .scan_rst_ni(scan_rst_ni) );
  IMEM u_IMEM ( .clock(clk_i), .cen(instr_addr_o[9]), .wen(instr_addr_o[8]), 
        .addr(instr_addr_o[7:0]), .data_w({n65, n66, n67, n68, n69, n70, n71, 
        n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, 
        n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96}), .data_r({n64, 
        n62, n60, n58, n56, n54, n52, n50, n48, n46, n44, n42, n40, n38, n36, 
        n34, n32, n30, n28, n26, n24, n22, n20, n18, n16, n14, n12, n10, n8, 
        n6, n4, n2}) );
  DMEM u_DMEM ( .clock(clk_i), .cen(data_addr_o[9]), .wen(data_addr_o[8]), 
        .addr(data_addr_o[7:0]), .data_w(data_wdata_o), .data_r(data_wdata_o)
         );
  CLKAND2X2TS U1 ( .A(instr_rdata_i[9]), .B(n20), .Y(n87) );
  CLKAND2X2TS U2 ( .A(instr_rdata_i[8]), .B(n18), .Y(n88) );
  CLKAND2X2TS U3 ( .A(instr_rdata_i[7]), .B(n16), .Y(n89) );
  CLKAND2X2TS U4 ( .A(instr_rdata_i[6]), .B(n14), .Y(n90) );
  CLKAND2X2TS U5 ( .A(instr_rdata_i[5]), .B(n12), .Y(n91) );
  CLKAND2X2TS U6 ( .A(instr_rdata_i[4]), .B(n10), .Y(n92) );
  CLKAND2X2TS U7 ( .A(instr_rdata_i[3]), .B(n8), .Y(n93) );
  CLKAND2X2TS U8 ( .A(instr_rdata_i[31]), .B(n64), .Y(n65) );
  CLKAND2X2TS U9 ( .A(instr_rdata_i[30]), .B(n62), .Y(n66) );
  CLKAND2X2TS U10 ( .A(instr_rdata_i[2]), .B(n6), .Y(n94) );
  CLKAND2X2TS U11 ( .A(instr_rdata_i[29]), .B(n60), .Y(n67) );
  CLKAND2X2TS U12 ( .A(instr_rdata_i[28]), .B(n58), .Y(n68) );
  CLKAND2X2TS U13 ( .A(instr_rdata_i[27]), .B(n56), .Y(n69) );
  CLKAND2X2TS U14 ( .A(instr_rdata_i[26]), .B(n54), .Y(n70) );
  CLKAND2X2TS U15 ( .A(instr_rdata_i[25]), .B(n52), .Y(n71) );
  CLKAND2X2TS U16 ( .A(instr_rdata_i[24]), .B(n50), .Y(n72) );
  CLKAND2X2TS U17 ( .A(instr_rdata_i[23]), .B(n48), .Y(n73) );
  CLKAND2X2TS U18 ( .A(instr_rdata_i[22]), .B(n46), .Y(n74) );
  CLKAND2X2TS U19 ( .A(instr_rdata_i[21]), .B(n44), .Y(n75) );
  CLKAND2X2TS U20 ( .A(instr_rdata_i[20]), .B(n42), .Y(n76) );
  CLKAND2X2TS U21 ( .A(instr_rdata_i[1]), .B(n4), .Y(n95) );
  CLKAND2X2TS U22 ( .A(instr_rdata_i[19]), .B(n40), .Y(n77) );
  CLKAND2X2TS U23 ( .A(instr_rdata_i[18]), .B(n38), .Y(n78) );
  CLKAND2X2TS U24 ( .A(instr_rdata_i[17]), .B(n36), .Y(n79) );
  CLKAND2X2TS U25 ( .A(instr_rdata_i[16]), .B(n34), .Y(n80) );
  CLKAND2X2TS U26 ( .A(instr_rdata_i[15]), .B(n32), .Y(n81) );
  CLKAND2X2TS U27 ( .A(instr_rdata_i[14]), .B(n30), .Y(n82) );
  CLKAND2X2TS U28 ( .A(instr_rdata_i[13]), .B(n28), .Y(n83) );
  CLKAND2X2TS U29 ( .A(instr_rdata_i[12]), .B(n26), .Y(n84) );
  CLKAND2X2TS U30 ( .A(instr_rdata_i[11]), .B(n24), .Y(n85) );
  CLKAND2X2TS U31 ( .A(instr_rdata_i[10]), .B(n22), .Y(n86) );
  CLKAND2X2TS U32 ( .A(instr_rdata_i[0]), .B(n2), .Y(n96) );
endmodule

