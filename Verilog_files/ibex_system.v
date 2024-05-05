//the toppest level of system with IMEM & DMEM

module ibex_system (

    input wire clk_i,
	input wire rst_ni,
	input wire test_en_i,
	input wire [9:0] ram_cfg_i,
	input wire [31:0] hart_id_i,
	input wire [31:0] boot_addr_i,
	output wire instr_req_o,
	input wire instr_gnt_i,
	input wire instr_rvalid_i,
	output wire [31:0] instr_addr_o,
//	input wire [31:0] instr_rdata_i, 
	input wire [6:0] instr_rdata_intg_i,
	input wire instr_err_i,
	output wire data_req_o,
	input wire data_gnt_i,
	input wire data_rvalid_i,
	output wire data_we_o,
	output wire [3:0] data_be_o,
	output wire [31:0] data_addr_o,
//	output wire [31:0] data_wdata_o,
	output wire [6:0] data_wdata_intg_o,
	input wire [31:0] data_rdata_i,
	input wire [6:0] data_rdata_intg_i,
	input wire data_err_i,
	input wire irq_software_i,
	input wire irq_timer_i,
	input wire irq_external_i,
	input wire [14:0] irq_fast_i,
	input wire irq_nm_i,
	input wire scramble_key_valid_i,
	input wire [127:0] scramble_key_i,
	input wire [63:0] scramble_nonce_i,
	output wire scramble_req_o,
	input wire debug_req_i,
	output wire [159:0] crash_dump_o,
	output wire double_fault_seen_o,
	input wire [3:0] fetch_enable_i,
	output wire alert_minor_o,
	output wire alert_major_internal_o,
	output wire alert_major_bus_o,
	output wire core_sleep_o,
	input wire scan_rst_ni,

/***************IMAM***************/
    input                    i_cen,
    input                    i_wen,
    input [7:0]              i_addr,
    input [31:0]             i_data_w,

/***************DMEM***************/
    input                    d_cen,
    input                    d_wen,
    input [7:0]              d_addr,
    output reg [31:0]            d_data_r
);

/***********interconnection***********/
    reg [31:0]             i_data;
    reg [31:0]             d_data;

/**************connection*************/
//instantiate
ibex_top u_ibex_top(
    .clk_i(clk_i),
	.rst_ni(rst_ni),
	.test_en_i(test_en_i),
	.ram_cfg_i(ram_cfg_i),
	.hart_id_i(hart_id_i),
	.boot_addr_i(boot_addr_i),
	.instr_req_o(instr_req_o),
	.instr_gnt_i(instr_gnt_i),
	.instr_rvalid_i(instr_rvalid_i),
	.instr_addr_o(instr_addr_o),
	.instr_rdata_i(i_data),                  //IMEM to top
	.instr_rdata_intg_i(instr_rdata_intg_i),
	.instr_err_i(instr_err_i),
	.data_req_o(data_req_o),
	.data_gnt_i(data_gnt_i),
	.data_rvalid_i(data_rvalid_i),
	.data_we_o(data_we_o),
	.data_be_o(data_be_o),
	.data_addr_o(data_addr_o),
	.data_wdata_o(d_data),                   //top to DMEM
	.data_wdata_intg_o(data_wdata_intg_o),
	.data_rdata_i(data_rdata_i),
	.data_rdata_intg_i(data_rdata_intg_i),
	.data_err_i(data_err_i),
	.irq_software_i(irq_software_i),
	.irq_timer_i(irq_timer_i),
	.irq_external_i(irq_external_i),
	.irq_fast_i(irq_fast_i),
	.irq_nm_i(irq_nm_i),
	.scramble_key_valid_i(scramble_key_valid_i),
	.scramble_key_i(scramble_key_i),
	.scramble_nonce_i(scramble_nonce_i),
	.scramble_req_o(scramble_req_o),
	.debug_req_i(debug_req_i),
	.crash_dump_o(crash_dump_o),
	.double_fault_seen_o(double_fault_seen_o),
	.fetch_enable_i(fetch_enable_i),
	.alert_minor_o(alert_minor_o),
	.alert_major_internal_o(alert_major_internal_o),
	.alert_major_bus_o(alert_major_bus_o),
	.core_sleep_o(core_sleep_o),
	.scan_rst_ni(scan_rst_ni)
);

IMEM u_IMEM(
    .clock(clk_i),
    .cen(i_cen),
    .wen(i_wen),
    .addr(i_addr),
    .data_w(i_data_w),
    .data_r(i_data)
);

DMEM u_DMEM(
    .clock(clk_i),
    .cen(d_cen),
    .wen(d_wen),
    .addr(d_addr),
    .data_w(d_data),
    .data_r(d_data_r)
);

endmodule


