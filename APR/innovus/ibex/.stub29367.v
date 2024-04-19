module ibex_top (clk_i, rst_ni, test_en_i, hart_id_i[31], hart_id_i[30], hart_id_i[29], hart_id_i[28], hart_id_i[27], hart_id_i[26], hart_id_i[25], hart_id_i[24], hart_id_i[23], hart_id_i[22], hart_id_i[21], hart_id_i[20], hart_id_i[19], hart_id_i[18], hart_id_i[17], hart_id_i[16], hart_id_i[15], hart_id_i[14], hart_id_i[13], hart_id_i[12], hart_id_i[11], hart_id_i[10], hart_id_i[9], hart_id_i[8], hart_id_i[7], hart_id_i[6], hart_id_i[5], hart_id_i[4], hart_id_i[3], hart_id_i[2], hart_id_i[1], hart_id_i[0], boot_addr_i[31], boot_addr_i[30], boot_addr_i[29], boot_addr_i[28], boot_addr_i[27], boot_addr_i[26], boot_addr_i[25], boot_addr_i[24], boot_addr_i[23], boot_addr_i[22], boot_addr_i[21], boot_addr_i[20], boot_addr_i[19], boot_addr_i[18], boot_addr_i[17], boot_addr_i[16], boot_addr_i[15], boot_addr_i[14], boot_addr_i[13], boot_addr_i[12], boot_addr_i[11], boot_addr_i[10], boot_addr_i[9], boot_addr_i[8], instr_gnt_i, instr_rvalid_i, instr_rdata_i[31], instr_rdata_i[30], instr_rdata_i[29], instr_rdata_i[28], instr_rdata_i[27], instr_rdata_i[26], instr_rdata_i[25], instr_rdata_i[24], instr_rdata_i[23], instr_rdata_i[22], instr_rdata_i[21], instr_rdata_i[20], instr_rdata_i[19], instr_rdata_i[18], instr_rdata_i[17], instr_rdata_i[16], instr_rdata_i[15], instr_rdata_i[14], instr_rdata_i[13], instr_rdata_i[12], instr_rdata_i[11], instr_rdata_i[10], instr_rdata_i[9], instr_rdata_i[8], instr_rdata_i[7], instr_rdata_i[6], instr_rdata_i[5], instr_rdata_i[4], instr_rdata_i[3], instr_rdata_i[2], instr_rdata_i[1], instr_rdata_i[0], instr_err_i, data_gnt_i, data_rvalid_i, data_rdata_i[31], data_rdata_i[30], data_rdata_i[29], data_rdata_i[28], data_rdata_i[27], data_rdata_i[26], data_rdata_i[25], data_rdata_i[24], data_rdata_i[23], data_rdata_i[22], data_rdata_i[21], data_rdata_i[20], data_rdata_i[19], data_rdata_i[18], data_rdata_i[17], data_rdata_i[16], data_rdata_i[15], data_rdata_i[14], data_rdata_i[13], data_rdata_i[12], data_rdata_i[11], data_rdata_i[10], data_rdata_i[9], data_rdata_i[8], data_rdata_i[7], data_rdata_i[6], data_rdata_i[5], data_rdata_i[4], data_rdata_i[3], data_rdata_i[2], data_rdata_i[1], data_rdata_i[0], data_err_i, irq_software_i, irq_timer_i, irq_external_i, irq_fast_i[14], irq_fast_i[13], irq_fast_i[12], irq_fast_i[11], irq_fast_i[10], irq_fast_i[9], irq_fast_i[8], irq_fast_i[7], irq_fast_i[6], irq_fast_i[5], irq_fast_i[4], irq_fast_i[3], irq_fast_i[2], irq_fast_i[1], irq_fast_i[0], irq_nm_i, debug_req_i, fetch_enable_i[3], fetch_enable_i[2], fetch_enable_i[1], fetch_enable_i[0], scan_rst_ni, test_si, instr_req_o, instr_addr_o[31], instr_addr_o[30], instr_addr_o[29], instr_addr_o[28], instr_addr_o[27], instr_addr_o[26], instr_addr_o[25], instr_addr_o[24], instr_addr_o[23], instr_addr_o[22], instr_addr_o[21], instr_addr_o[20], instr_addr_o[19], instr_addr_o[18], instr_addr_o[17], instr_addr_o[16], instr_addr_o[15], instr_addr_o[14], instr_addr_o[13], instr_addr_o[12], instr_addr_o[11], instr_addr_o[10], instr_addr_o[9], instr_addr_o[8], instr_addr_o[7], instr_addr_o[6], instr_addr_o[5], instr_addr_o[4], instr_addr_o[3], instr_addr_o[2], instr_addr_o[1], instr_addr_o[0], data_req_o, data_we_o, data_be_o[3], data_be_o[2], data_be_o[1], data_be_o[0], data_addr_o[31], data_addr_o[30], data_addr_o[29], data_addr_o[28], data_addr_o[27], data_addr_o[26], data_addr_o[25], data_addr_o[24], data_addr_o[23], data_addr_o[22], data_addr_o[21], data_addr_o[20], data_addr_o[19], data_addr_o[18], data_addr_o[17], data_addr_o[16], data_addr_o[15], data_addr_o[14], data_addr_o[13], data_addr_o[12], data_addr_o[11], data_addr_o[10], data_addr_o[9], data_addr_o[8], data_addr_o[7], data_addr_o[6], data_addr_o[5], data_addr_o[4], data_addr_o[3], data_addr_o[2], data_addr_o[1], data_addr_o[0], data_wdata_o[31], data_wdata_o[30], data_wdata_o[29], data_wdata_o[28], data_wdata_o[27], data_wdata_o[26], data_wdata_o[25], data_wdata_o[24], data_wdata_o[23], data_wdata_o[22], data_wdata_o[21], data_wdata_o[20], data_wdata_o[19], data_wdata_o[18], data_wdata_o[17], data_wdata_o[16], data_wdata_o[15], data_wdata_o[14], data_wdata_o[13], data_wdata_o[12], data_wdata_o[11], data_wdata_o[10], data_wdata_o[9], data_wdata_o[8], data_wdata_o[7], data_wdata_o[6], data_wdata_o[5], data_wdata_o[4], data_wdata_o[3], data_wdata_o[2], data_wdata_o[1], data_wdata_o[0], data_wdata_intg_o[6], data_wdata_intg_o[5], data_wdata_intg_o[4], data_wdata_intg_o[3], data_wdata_intg_o[2], data_wdata_intg_o[1], data_wdata_intg_o[0], scramble_req_o, crash_dump_o[159], crash_dump_o[158], crash_dump_o[157], crash_dump_o[156], crash_dump_o[155], crash_dump_o[154], crash_dump_o[153], crash_dump_o[152], crash_dump_o[151], crash_dump_o[150], crash_dump_o[149], crash_dump_o[148], crash_dump_o[147], crash_dump_o[146], crash_dump_o[145], crash_dump_o[144], crash_dump_o[143], crash_dump_o[142], crash_dump_o[141], crash_dump_o[140], crash_dump_o[139], crash_dump_o[138], crash_dump_o[137], crash_dump_o[136], crash_dump_o[135], crash_dump_o[134], crash_dump_o[133], crash_dump_o[132], crash_dump_o[131], crash_dump_o[130], crash_dump_o[129], crash_dump_o[128], crash_dump_o[127], crash_dump_o[126], crash_dump_o[125], crash_dump_o[124], crash_dump_o[123], crash_dump_o[122], crash_dump_o[121], crash_dump_o[120], crash_dump_o[119], crash_dump_o[118], crash_dump_o[117], crash_dump_o[116], crash_dump_o[115], crash_dump_o[114], crash_dump_o[113], crash_dump_o[112], crash_dump_o[111], crash_dump_o[110], crash_dump_o[109], crash_dump_o[108], crash_dump_o[107], crash_dump_o[106], crash_dump_o[105], crash_dump_o[104], crash_dump_o[103], crash_dump_o[102], crash_dump_o[101], crash_dump_o[100], crash_dump_o[99], crash_dump_o[98], crash_dump_o[97], crash_dump_o[96], crash_dump_o[95], crash_dump_o[94], crash_dump_o[93], crash_dump_o[92], crash_dump_o[91], crash_dump_o[90], crash_dump_o[89], crash_dump_o[88], crash_dump_o[87], crash_dump_o[86], crash_dump_o[85], crash_dump_o[84], crash_dump_o[83], crash_dump_o[82], crash_dump_o[81], crash_dump_o[80], crash_dump_o[79], crash_dump_o[78], crash_dump_o[77], crash_dump_o[76], crash_dump_o[75], crash_dump_o[74], crash_dump_o[73], crash_dump_o[72], crash_dump_o[71], crash_dump_o[70], crash_dump_o[69], crash_dump_o[68], crash_dump_o[67], crash_dump_o[66], crash_dump_o[65], crash_dump_o[64], crash_dump_o[63], crash_dump_o[62], crash_dump_o[61], crash_dump_o[60], crash_dump_o[59], crash_dump_o[58], crash_dump_o[57], crash_dump_o[56], crash_dump_o[55], crash_dump_o[54], crash_dump_o[53], crash_dump_o[52], crash_dump_o[51], crash_dump_o[50], crash_dump_o[49], crash_dump_o[48], crash_dump_o[47], crash_dump_o[46], crash_dump_o[45], crash_dump_o[44], crash_dump_o[43], crash_dump_o[42], crash_dump_o[41], crash_dump_o[40], crash_dump_o[39], crash_dump_o[38], crash_dump_o[37], crash_dump_o[36], crash_dump_o[35], crash_dump_o[34], crash_dump_o[33], crash_dump_o[32], crash_dump_o[31], crash_dump_o[30], crash_dump_o[29], crash_dump_o[28], crash_dump_o[27], crash_dump_o[26], crash_dump_o[25], crash_dump_o[24], crash_dump_o[23], crash_dump_o[22], crash_dump_o[21], crash_dump_o[20], crash_dump_o[19], crash_dump_o[18], crash_dump_o[17], crash_dump_o[16], crash_dump_o[15], crash_dump_o[14], crash_dump_o[13], crash_dump_o[12], crash_dump_o[11], crash_dump_o[10], crash_dump_o[9], crash_dump_o[8], crash_dump_o[7], crash_dump_o[6], crash_dump_o[5], crash_dump_o[4], crash_dump_o[3], crash_dump_o[2], crash_dump_o[1], crash_dump_o[0], double_fault_seen_o, alert_minor_o, alert_major_internal_o, alert_major_bus_o, core_sleep_o, test_so);
	input clk_i;
	input rst_ni;
	input test_en_i;
	input hart_id_i[31];
	input hart_id_i[30];
	input hart_id_i[29];
	input hart_id_i[28];
	input hart_id_i[27];
	input hart_id_i[26];
	input hart_id_i[25];
	input hart_id_i[24];
	input hart_id_i[23];
	input hart_id_i[22];
	input hart_id_i[21];
	input hart_id_i[20];
	input hart_id_i[19];
	input hart_id_i[18];
	input hart_id_i[17];
	input hart_id_i[16];
	input hart_id_i[15];
	input hart_id_i[14];
	input hart_id_i[13];
	input hart_id_i[12];
	input hart_id_i[11];
	input hart_id_i[10];
	input hart_id_i[9];
	input hart_id_i[8];
	input hart_id_i[7];
	input hart_id_i[6];
	input hart_id_i[5];
	input hart_id_i[4];
	input hart_id_i[3];
	input hart_id_i[2];
	input hart_id_i[1];
	input hart_id_i[0];
	input boot_addr_i[31];
	input boot_addr_i[30];
	input boot_addr_i[29];
	input boot_addr_i[28];
	input boot_addr_i[27];
	input boot_addr_i[26];
	input boot_addr_i[25];
	input boot_addr_i[24];
	input boot_addr_i[23];
	input boot_addr_i[22];
	input boot_addr_i[21];
	input boot_addr_i[20];
	input boot_addr_i[19];
	input boot_addr_i[18];
	input boot_addr_i[17];
	input boot_addr_i[16];
	input boot_addr_i[15];
	input boot_addr_i[14];
	input boot_addr_i[13];
	input boot_addr_i[12];
	input boot_addr_i[11];
	input boot_addr_i[10];
	input boot_addr_i[9];
	input boot_addr_i[8];
	input instr_gnt_i;
	input instr_rvalid_i;
	input instr_rdata_i[31];
	input instr_rdata_i[30];
	input instr_rdata_i[29];
	input instr_rdata_i[28];
	input instr_rdata_i[27];
	input instr_rdata_i[26];
	input instr_rdata_i[25];
	input instr_rdata_i[24];
	input instr_rdata_i[23];
	input instr_rdata_i[22];
	input instr_rdata_i[21];
	input instr_rdata_i[20];
	input instr_rdata_i[19];
	input instr_rdata_i[18];
	input instr_rdata_i[17];
	input instr_rdata_i[16];
	input instr_rdata_i[15];
	input instr_rdata_i[14];
	input instr_rdata_i[13];
	input instr_rdata_i[12];
	input instr_rdata_i[11];
	input instr_rdata_i[10];
	input instr_rdata_i[9];
	input instr_rdata_i[8];
	input instr_rdata_i[7];
	input instr_rdata_i[6];
	input instr_rdata_i[5];
	input instr_rdata_i[4];
	input instr_rdata_i[3];
	input instr_rdata_i[2];
	input instr_rdata_i[1];
	input instr_rdata_i[0];
	input instr_err_i;
	input data_gnt_i;
	input data_rvalid_i;
	input data_rdata_i[31];
	input data_rdata_i[30];
	input data_rdata_i[29];
	input data_rdata_i[28];
	input data_rdata_i[27];
	input data_rdata_i[26];
	input data_rdata_i[25];
	input data_rdata_i[24];
	input data_rdata_i[23];
	input data_rdata_i[22];
	input data_rdata_i[21];
	input data_rdata_i[20];
	input data_rdata_i[19];
	input data_rdata_i[18];
	input data_rdata_i[17];
	input data_rdata_i[16];
	input data_rdata_i[15];
	input data_rdata_i[14];
	input data_rdata_i[13];
	input data_rdata_i[12];
	input data_rdata_i[11];
	input data_rdata_i[10];
	input data_rdata_i[9];
	input data_rdata_i[8];
	input data_rdata_i[7];
	input data_rdata_i[6];
	input data_rdata_i[5];
	input data_rdata_i[4];
	input data_rdata_i[3];
	input data_rdata_i[2];
	input data_rdata_i[1];
	input data_rdata_i[0];
	input data_err_i;
	input irq_software_i;
	input irq_timer_i;
	input irq_external_i;
	input irq_fast_i[14];
	input irq_fast_i[13];
	input irq_fast_i[12];
	input irq_fast_i[11];
	input irq_fast_i[10];
	input irq_fast_i[9];
	input irq_fast_i[8];
	input irq_fast_i[7];
	input irq_fast_i[6];
	input irq_fast_i[5];
	input irq_fast_i[4];
	input irq_fast_i[3];
	input irq_fast_i[2];
	input irq_fast_i[1];
	input irq_fast_i[0];
	input irq_nm_i;
	input debug_req_i;
	input fetch_enable_i[3];
	input fetch_enable_i[2];
	input fetch_enable_i[1];
	input fetch_enable_i[0];
	input scan_rst_ni;
	input test_si;
	output instr_req_o;
	output instr_addr_o[31];
	output instr_addr_o[30];
	output instr_addr_o[29];
	output instr_addr_o[28];
	output instr_addr_o[27];
	output instr_addr_o[26];
	output instr_addr_o[25];
	output instr_addr_o[24];
	output instr_addr_o[23];
	output instr_addr_o[22];
	output instr_addr_o[21];
	output instr_addr_o[20];
	output instr_addr_o[19];
	output instr_addr_o[18];
	output instr_addr_o[17];
	output instr_addr_o[16];
	output instr_addr_o[15];
	output instr_addr_o[14];
	output instr_addr_o[13];
	output instr_addr_o[12];
	output instr_addr_o[11];
	output instr_addr_o[10];
	output instr_addr_o[9];
	output instr_addr_o[8];
	output instr_addr_o[7];
	output instr_addr_o[6];
	output instr_addr_o[5];
	output instr_addr_o[4];
	output instr_addr_o[3];
	output instr_addr_o[2];
	output instr_addr_o[1];
	output instr_addr_o[0];
	output data_req_o;
	output data_we_o;
	output data_be_o[3];
	output data_be_o[2];
	output data_be_o[1];
	output data_be_o[0];
	output data_addr_o[31];
	output data_addr_o[30];
	output data_addr_o[29];
	output data_addr_o[28];
	output data_addr_o[27];
	output data_addr_o[26];
	output data_addr_o[25];
	output data_addr_o[24];
	output data_addr_o[23];
	output data_addr_o[22];
	output data_addr_o[21];
	output data_addr_o[20];
	output data_addr_o[19];
	output data_addr_o[18];
	output data_addr_o[17];
	output data_addr_o[16];
	output data_addr_o[15];
	output data_addr_o[14];
	output data_addr_o[13];
	output data_addr_o[12];
	output data_addr_o[11];
	output data_addr_o[10];
	output data_addr_o[9];
	output data_addr_o[8];
	output data_addr_o[7];
	output data_addr_o[6];
	output data_addr_o[5];
	output data_addr_o[4];
	output data_addr_o[3];
	output data_addr_o[2];
	output data_addr_o[1];
	output data_addr_o[0];
	output data_wdata_o[31];
	output data_wdata_o[30];
	output data_wdata_o[29];
	output data_wdata_o[28];
	output data_wdata_o[27];
	output data_wdata_o[26];
	output data_wdata_o[25];
	output data_wdata_o[24];
	output data_wdata_o[23];
	output data_wdata_o[22];
	output data_wdata_o[21];
	output data_wdata_o[20];
	output data_wdata_o[19];
	output data_wdata_o[18];
	output data_wdata_o[17];
	output data_wdata_o[16];
	output data_wdata_o[15];
	output data_wdata_o[14];
	output data_wdata_o[13];
	output data_wdata_o[12];
	output data_wdata_o[11];
	output data_wdata_o[10];
	output data_wdata_o[9];
	output data_wdata_o[8];
	output data_wdata_o[7];
	output data_wdata_o[6];
	output data_wdata_o[5];
	output data_wdata_o[4];
	output data_wdata_o[3];
	output data_wdata_o[2];
	output data_wdata_o[1];
	output data_wdata_o[0];
	output data_wdata_intg_o[6];
	output data_wdata_intg_o[5];
	output data_wdata_intg_o[4];
	output data_wdata_intg_o[3];
	output data_wdata_intg_o[2];
	output data_wdata_intg_o[1];
	output data_wdata_intg_o[0];
	output scramble_req_o;
	output crash_dump_o[159];
	output crash_dump_o[158];
	output crash_dump_o[157];
	output crash_dump_o[156];
	output crash_dump_o[155];
	output crash_dump_o[154];
	output crash_dump_o[153];
	output crash_dump_o[152];
	output crash_dump_o[151];
	output crash_dump_o[150];
	output crash_dump_o[149];
	output crash_dump_o[148];
	output crash_dump_o[147];
	output crash_dump_o[146];
	output crash_dump_o[145];
	output crash_dump_o[144];
	output crash_dump_o[143];
	output crash_dump_o[142];
	output crash_dump_o[141];
	output crash_dump_o[140];
	output crash_dump_o[139];
	output crash_dump_o[138];
	output crash_dump_o[137];
	output crash_dump_o[136];
	output crash_dump_o[135];
	output crash_dump_o[134];
	output crash_dump_o[133];
	output crash_dump_o[132];
	output crash_dump_o[131];
	output crash_dump_o[130];
	output crash_dump_o[129];
	output crash_dump_o[128];
	output crash_dump_o[127];
	output crash_dump_o[126];
	output crash_dump_o[125];
	output crash_dump_o[124];
	output crash_dump_o[123];
	output crash_dump_o[122];
	output crash_dump_o[121];
	output crash_dump_o[120];
	output crash_dump_o[119];
	output crash_dump_o[118];
	output crash_dump_o[117];
	output crash_dump_o[116];
	output crash_dump_o[115];
	output crash_dump_o[114];
	output crash_dump_o[113];
	output crash_dump_o[112];
	output crash_dump_o[111];
	output crash_dump_o[110];
	output crash_dump_o[109];
	output crash_dump_o[108];
	output crash_dump_o[107];
	output crash_dump_o[106];
	output crash_dump_o[105];
	output crash_dump_o[104];
	output crash_dump_o[103];
	output crash_dump_o[102];
	output crash_dump_o[101];
	output crash_dump_o[100];
	output crash_dump_o[99];
	output crash_dump_o[98];
	output crash_dump_o[97];
	output crash_dump_o[96];
	output crash_dump_o[95];
	output crash_dump_o[94];
	output crash_dump_o[93];
	output crash_dump_o[92];
	output crash_dump_o[91];
	output crash_dump_o[90];
	output crash_dump_o[89];
	output crash_dump_o[88];
	output crash_dump_o[87];
	output crash_dump_o[86];
	output crash_dump_o[85];
	output crash_dump_o[84];
	output crash_dump_o[83];
	output crash_dump_o[82];
	output crash_dump_o[81];
	output crash_dump_o[80];
	output crash_dump_o[79];
	output crash_dump_o[78];
	output crash_dump_o[77];
	output crash_dump_o[76];
	output crash_dump_o[75];
	output crash_dump_o[74];
	output crash_dump_o[73];
	output crash_dump_o[72];
	output crash_dump_o[71];
	output crash_dump_o[70];
	output crash_dump_o[69];
	output crash_dump_o[68];
	output crash_dump_o[67];
	output crash_dump_o[66];
	output crash_dump_o[65];
	output crash_dump_o[64];
	output crash_dump_o[63];
	output crash_dump_o[62];
	output crash_dump_o[61];
	output crash_dump_o[60];
	output crash_dump_o[59];
	output crash_dump_o[58];
	output crash_dump_o[57];
	output crash_dump_o[56];
	output crash_dump_o[55];
	output crash_dump_o[54];
	output crash_dump_o[53];
	output crash_dump_o[52];
	output crash_dump_o[51];
	output crash_dump_o[50];
	output crash_dump_o[49];
	output crash_dump_o[48];
	output crash_dump_o[47];
	output crash_dump_o[46];
	output crash_dump_o[45];
	output crash_dump_o[44];
	output crash_dump_o[43];
	output crash_dump_o[42];
	output crash_dump_o[41];
	output crash_dump_o[40];
	output crash_dump_o[39];
	output crash_dump_o[38];
	output crash_dump_o[37];
	output crash_dump_o[36];
	output crash_dump_o[35];
	output crash_dump_o[34];
	output crash_dump_o[33];
	output crash_dump_o[32];
	output crash_dump_o[31];
	output crash_dump_o[30];
	output crash_dump_o[29];
	output crash_dump_o[28];
	output crash_dump_o[27];
	output crash_dump_o[26];
	output crash_dump_o[25];
	output crash_dump_o[24];
	output crash_dump_o[23];
	output crash_dump_o[22];
	output crash_dump_o[21];
	output crash_dump_o[20];
	output crash_dump_o[19];
	output crash_dump_o[18];
	output crash_dump_o[17];
	output crash_dump_o[16];
	output crash_dump_o[15];
	output crash_dump_o[14];
	output crash_dump_o[13];
	output crash_dump_o[12];
	output crash_dump_o[11];
	output crash_dump_o[10];
	output crash_dump_o[9];
	output crash_dump_o[8];
	output crash_dump_o[7];
	output crash_dump_o[6];
	output crash_dump_o[5];
	output crash_dump_o[4];
	output crash_dump_o[3];
	output crash_dump_o[2];
	output crash_dump_o[1];
	output crash_dump_o[0];
	output double_fault_seen_o;
	output alert_minor_o;
	output alert_major_internal_o;
	output alert_major_bus_o;
	output core_sleep_o;
	output test_so;
endmodule 

module prim_clock_gating ();
endmodule 

module prim_generic_buf_Width4 ();
endmodule 

module prim_generic_buf_s00000020_0 ();
endmodule 

module prim_generic_buf_s00000020_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_fetch_fifo_00000002_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_fetch_fifo_00000002_0_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_fetch_fifo_00000002_0_2 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_fetch_fifo_00000002_0_3 ();
endmodule 

module ibex_fetch_fifo_00000002_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_prefetch_buffer_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_prefetch_buffer_0_1 ();
endmodule 

module ibex_prefetch_buffer_0 ();
endmodule 

module ibex_compressed_decoder ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_if_stage_1a110800_1a110808_0_0_0_00000020_00000016_00000040_0_0_ac533bf4_0_0_00000020_559255_0 ();
endmodule 

module ibex_if_stage_1a110800_1a110808_0_0_0_00000020_00000016_00000040_0_0_ac533bf4_0_0_00000020_559255 ();
endmodule 

module ibex_decoder_0_2_0_0 ();
endmodule 

module ibex_controller_0_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_id_stage_0_2_0_0_0_0_0_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_id_stage_0_2_0_0_0_0_0_0_1 ();
endmodule 

module ibex_id_stage_0_2_0_0_0_0_0_0 ();
endmodule 

module ibex_alu_RV32B0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_multdiv_fast_RV32M2_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_multdiv_fast_RV32M2_1 ();
endmodule 

module ibex_multdiv_fast_RV32M2 ();
endmodule 

module ibex_ex_block_2_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_load_store_unit_0_00000020_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_load_store_unit_0_00000020_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_load_store_unit_0_00000020_2 ();
endmodule 

module ibex_load_store_unit_0_00000020 ();
endmodule 

module ibex_wb_stage_0_0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_6_0_10_0 ();
endmodule 

module ibex_csr_6_0_10 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_0_0 ();
endmodule 

module ibex_csr_32_0_s0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_18_0_s0_0 ();
endmodule 

module ibex_csr_18_0_s0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_6_0 ();
endmodule 

module ibex_csr_32_0_s0_6 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_7_0_s0_0_0 ();
endmodule 

module ibex_csr_7_0_s0_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_5_0 ();
endmodule 

module ibex_csr_32_0_s0_5 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_00000001_0 ();
endmodule 

module ibex_csr_32_0_00000001 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_40000003_0 ();
endmodule 

module ibex_csr_32_0_40000003 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_4_0 ();
endmodule 

module ibex_csr_32_0_s0_4 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_3_0 ();
endmodule 

module ibex_csr_32_0_s0_3 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_2_0 ();
endmodule 

module ibex_csr_32_0_s0_2 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_3_0_4_0 ();
endmodule 

module ibex_csr_3_0_4 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_32_0_s0_1_0 ();
endmodule 

module ibex_csr_32_0_s0_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_csr_7_0_s0_1_0 ();
endmodule 

module ibex_csr_7_0_s0_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_counter_CounterWidth64_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_counter_CounterWidth64_1 ();
endmodule 

module ibex_counter_CounterWidth64 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_counter_CounterWidth64_ProvideValUpd1_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_counter_CounterWidth64_ProvideValUpd1_1 ();
endmodule 

module ibex_counter_CounterWidth64_ProvideValUpd1 ();
endmodule 

module ibex_csr_8_0_s0 ();
endmodule 

module ibex_cs_registers_0_00000001_0_0_0_0_00000000_00000028_0_00000000_00000004_0_2_0 ();
endmodule 

module ibex_core_0_00000000_00000004_00000000_00000028_0_2_0_0_0_0_0_00000020_00000016_00000040_0_0_00000001_0_ac533bf4_0_0_0_00000020_0_00000020_1a110800_1a110808_559255 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_0 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_1 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_2 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_3 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_4 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_5 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_6 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_7 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_8 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_9 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_10 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_11 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_12 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_13 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_14 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_15 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_16 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_17 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_18 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_19 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_20 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_21 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_22 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_23 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_24 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_25 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_26 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_27 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_28 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_29 ();
endmodule 

module SNPS_CLOCK_GATE_HIGH_ibex_register_file_ff_0_00000020_0_0_0_00000000_30 ();
endmodule 

module ibex_register_file_ff_0_00000020_0_0_0_00000000 ();
endmodule 

module XOR3XLTS ();
endmodule 

module XOR3X4TS ();
endmodule 

module XOR3X2TS ();
endmodule 

module XOR3X1TS ();
endmodule 

module XOR2XLTS ();
endmodule 

module XOR2X4TS ();
endmodule 

module XOR2X2TS ();
endmodule 

module XOR2X1TS ();
endmodule 

module XNOR3XLTS ();
endmodule 

module XNOR3X4TS ();
endmodule 

module XNOR3X2TS ();
endmodule 

module XNOR3X1TS ();
endmodule 

module XNOR2XLTS ();
endmodule 

module XNOR2X4TS ();
endmodule 

module XNOR2X2TS ();
endmodule 

module XNOR2X1TS ();
endmodule 

module TLATXLTS ();
endmodule 

module TLATX4TS ();
endmodule 

module TLATX2TS ();
endmodule 

module TLATX1TS ();
endmodule 

module TLATSRXLTS ();
endmodule 

module TLATSRX4TS ();
endmodule 

module TLATSRX2TS ();
endmodule 

module TLATSRX1TS ();
endmodule 

module TLATNXLTS ();
endmodule 

module TLATNX4TS ();
endmodule 

module TLATNX2TS ();
endmodule 

module TLATNX1TS ();
endmodule 

module TLATNTSCAX8TS ();
endmodule 

module TLATNTSCAX6TS ();
endmodule 

module TLATNTSCAX4TS ();
endmodule 

module TLATNTSCAX3TS ();
endmodule 

module TLATNTSCAX2TS ();
endmodule 

module TLATNTSCAX20TS ();
endmodule 

module TLATNTSCAX16TS ();
endmodule 

module TLATNTSCAX12TS ();
endmodule 

module TLATNSRXLTS ();
endmodule 

module TLATNSRX4TS ();
endmodule 

module TLATNSRX2TS ();
endmodule 

module TLATNSRX1TS ();
endmodule 

module TLATNCAX8TS ();
endmodule 

module TLATNCAX6TS ();
endmodule 

module TLATNCAX4TS ();
endmodule 

module TLATNCAX3TS ();
endmodule 

module TLATNCAX2TS ();
endmodule 

module TLATNCAX20TS ();
endmodule 

module TLATNCAX16TS ();
endmodule 

module TLATNCAX12TS ();
endmodule 

module TIELOTS ();
endmodule 

module TIEHITS ();
endmodule 

module TBUFXLTS ();
endmodule 

module TBUFX8TS ();
endmodule 

module TBUFX6TS ();
endmodule 

module TBUFX4TS ();
endmodule 

module TBUFX3TS ();
endmodule 

module TBUFX2TS ();
endmodule 

module TBUFX20TS ();
endmodule 

module TBUFX1TS ();
endmodule 

module TBUFX16TS ();
endmodule 

module TBUFX12TS ();
endmodule 

module SMDFFHQX8TS ();
endmodule 

module SMDFFHQX4TS ();
endmodule 

module SMDFFHQX2TS ();
endmodule 

module SMDFFHQX1TS ();
endmodule 

module SEDFFXLTS ();
endmodule 

module SEDFFX4TS ();
endmodule 

module SEDFFX2TS ();
endmodule 

module SEDFFX1TS ();
endmodule 

module SEDFFTRXLTS ();
endmodule 

module SEDFFTRX4TS ();
endmodule 

module SEDFFTRX2TS ();
endmodule 

module SEDFFTRX1TS ();
endmodule 

module SEDFFHQX8TS ();
endmodule 

module SEDFFHQX4TS ();
endmodule 

module SEDFFHQX2TS ();
endmodule 

module SEDFFHQX1TS ();
endmodule 

module SDFFXLTS ();
endmodule 

module SDFFX4TS ();
endmodule 

module SDFFX2TS ();
endmodule 

module SDFFX1TS ();
endmodule 

module SDFFTRXLTS ();
endmodule 

module SDFFTRX4TS ();
endmodule 

module SDFFTRX2TS ();
endmodule 

module SDFFTRX1TS ();
endmodule 

module SDFFSXLTS ();
endmodule 

module SDFFSX4TS ();
endmodule 

module SDFFSX2TS ();
endmodule 

module SDFFSX1TS ();
endmodule 

module SDFFSRXLTS ();
endmodule 

module SDFFSRX4TS ();
endmodule 

module SDFFSRX2TS ();
endmodule 

module SDFFSRX1TS ();
endmodule 

module SDFFSRHQX8TS ();
endmodule 

module SDFFSRHQX4TS ();
endmodule 

module SDFFSRHQX2TS ();
endmodule 

module SDFFSRHQX1TS ();
endmodule 

module SDFFSHQX8TS ();
endmodule 

module SDFFSHQX4TS ();
endmodule 

module SDFFSHQX2TS ();
endmodule 

module SDFFSHQX1TS ();
endmodule 

module SDFFRXLTS ();
endmodule 

module SDFFRX4TS ();
endmodule 

module SDFFRX2TS ();
endmodule 

module SDFFRX1TS ();
endmodule 

module SDFFRHQX8TS ();
endmodule 

module SDFFRHQX4TS ();
endmodule 

module SDFFRHQX2TS ();
endmodule 

module SDFFRHQX1TS ();
endmodule 

module SDFFQXLTS ();
endmodule 

module SDFFQX4TS ();
endmodule 

module SDFFQX2TS ();
endmodule 

module SDFFQX1TS ();
endmodule 

module SDFFNSRXLTS ();
endmodule 

module SDFFNSRX4TS ();
endmodule 

module SDFFNSRX2TS ();
endmodule 

module SDFFNSRX1TS ();
endmodule 

module SDFFHQX8TS ();
endmodule 

module SDFFHQX4TS ();
endmodule 

module SDFFHQX2TS ();
endmodule 

module SDFFHQX1TS ();
endmodule 

module RFRDX4TS ();
endmodule 

module RFRDX2TS ();
endmodule 

module RFRDX1TS ();
endmodule 

module RF2R1WX1TS ();
endmodule 

module RF1R1WX1TS ();
endmodule 

module OR4XLTS ();
endmodule 

module OR4X8TS ();
endmodule 

module OR4X6TS ();
endmodule 

module OR4X4TS ();
endmodule 

module OR4X2TS ();
endmodule 

module OR4X1TS ();
endmodule 

module OR3XLTS ();
endmodule 

module OR3X8TS ();
endmodule 

module OR3X6TS ();
endmodule 

module OR3X4TS ();
endmodule 

module OR3X2TS ();
endmodule 

module OR3X1TS ();
endmodule 

module OR2XLTS ();
endmodule 

module OR2X8TS ();
endmodule 

module OR2X6TS ();
endmodule 

module OR2X4TS ();
endmodule 

module OR2X2TS ();
endmodule 

module OR2X1TS ();
endmodule 

module OAI33XLTS ();
endmodule 

module OAI33X4TS ();
endmodule 

module OAI33X2TS ();
endmodule 

module OAI33X1TS ();
endmodule 

module OAI32XLTS ();
endmodule 

module OAI32X4TS ();
endmodule 

module OAI32X2TS ();
endmodule 

module OAI32X1TS ();
endmodule 

module OAI31XLTS ();
endmodule 

module OAI31X4TS ();
endmodule 

module OAI31X2TS ();
endmodule 

module OAI31X1TS ();
endmodule 

module OAI2BB2XLTS ();
endmodule 

module OAI2BB2X4TS ();
endmodule 

module OAI2BB2X2TS ();
endmodule 

module OAI2BB2X1TS ();
endmodule 

module OAI2BB1XLTS ();
endmodule 

module OAI2BB1X4TS ();
endmodule 

module OAI2BB1X2TS ();
endmodule 

module OAI2BB1X1TS ();
endmodule 

module OAI22XLTS ();
endmodule 

module OAI22X4TS ();
endmodule 

module OAI22X2TS ();
endmodule 

module OAI22X1TS ();
endmodule 

module OAI222XLTS ();
endmodule 

module OAI222X4TS ();
endmodule 

module OAI222X2TS ();
endmodule 

module OAI222X1TS ();
endmodule 

module OAI221XLTS ();
endmodule 

module OAI221X4TS ();
endmodule 

module OAI221X2TS ();
endmodule 

module OAI221X1TS ();
endmodule 

module OAI21XLTS ();
endmodule 

module OAI21X4TS ();
endmodule 

module OAI21X2TS ();
endmodule 

module OAI21X1TS ();
endmodule 

module OAI211XLTS ();
endmodule 

module OAI211X4TS ();
endmodule 

module OAI211X2TS ();
endmodule 

module OAI211X1TS ();
endmodule 

module OA22XLTS ();
endmodule 

module OA22X4TS ();
endmodule 

module OA22X2TS ();
endmodule 

module OA22X1TS ();
endmodule 

module OA21XLTS ();
endmodule 

module OA21X4TS ();
endmodule 

module OA21X2TS ();
endmodule 

module OA21X1TS ();
endmodule 

module NOR4XLTS ();
endmodule 

module NOR4X8TS ();
endmodule 

module NOR4X6TS ();
endmodule 

module NOR4X4TS ();
endmodule 

module NOR4X2TS ();
endmodule 

module NOR4X1TS ();
endmodule 

module NOR4BXLTS ();
endmodule 

module NOR4BX4TS ();
endmodule 

module NOR4BX2TS ();
endmodule 

module NOR4BX1TS ();
endmodule 

module NOR4BBXLTS ();
endmodule 

module NOR4BBX4TS ();
endmodule 

module NOR4BBX2TS ();
endmodule 

module NOR4BBX1TS ();
endmodule 

module NOR3XLTS ();
endmodule 

module NOR3X8TS ();
endmodule 

module NOR3X6TS ();
endmodule 

module NOR3X4TS ();
endmodule 

module NOR3X2TS ();
endmodule 

module NOR3X1TS ();
endmodule 

module NOR3BXLTS ();
endmodule 

module NOR3BX4TS ();
endmodule 

module NOR3BX2TS ();
endmodule 

module NOR3BX1TS ();
endmodule 

module NOR2XLTS ();
endmodule 

module NOR2X8TS ();
endmodule 

module NOR2X6TS ();
endmodule 

module NOR2X4TS ();
endmodule 

module NOR2X2TS ();
endmodule 

module NOR2X1TS ();
endmodule 

module NOR2BXLTS ();
endmodule 

module NOR2BX4TS ();
endmodule 

module NOR2BX2TS ();
endmodule 

module NOR2BX1TS ();
endmodule 

module NAND4XLTS ();
endmodule 

module NAND4X8TS ();
endmodule 

module NAND4X6TS ();
endmodule 

module NAND4X4TS ();
endmodule 

module NAND4X2TS ();
endmodule 

module NAND4X1TS ();
endmodule 

module NAND4BXLTS ();
endmodule 

module NAND4BX4TS ();
endmodule 

module NAND4BX2TS ();
endmodule 

module NAND4BX1TS ();
endmodule 

module NAND4BBXLTS ();
endmodule 

module NAND4BBX4TS ();
endmodule 

module NAND4BBX2TS ();
endmodule 

module NAND4BBX1TS ();
endmodule 

module NAND3XLTS ();
endmodule 

module NAND3X8TS ();
endmodule 

module NAND3X6TS ();
endmodule 

module NAND3X4TS ();
endmodule 

module NAND3X2TS ();
endmodule 

module NAND3X1TS ();
endmodule 

module NAND3BXLTS ();
endmodule 

module NAND3BX4TS ();
endmodule 

module NAND3BX2TS ();
endmodule 

module NAND3BX1TS ();
endmodule 

module NAND2XLTS ();
endmodule 

module NAND2X8TS ();
endmodule 

module NAND2X6TS ();
endmodule 

module NAND2X4TS ();
endmodule 

module NAND2X2TS ();
endmodule 

module NAND2X1TS ();
endmodule 

module NAND2BXLTS ();
endmodule 

module NAND2BX4TS ();
endmodule 

module NAND2BX2TS ();
endmodule 

module NAND2BX1TS ();
endmodule 

module MXI4XLTS ();
endmodule 

module MXI4X4TS ();
endmodule 

module MXI4X2TS ();
endmodule 

module MXI4X1TS ();
endmodule 

module MXI3XLTS ();
endmodule 

module MXI3X4TS ();
endmodule 

module MXI3X2TS ();
endmodule 

module MXI3X1TS ();
endmodule 

module MXI2XLTS ();
endmodule 

module MXI2X8TS ();
endmodule 

module MXI2X6TS ();
endmodule 

module MXI2X4TS ();
endmodule 

module MXI2X2TS ();
endmodule 

module MXI2X1TS ();
endmodule 

module MX4XLTS ();
endmodule 

module MX4X4TS ();
endmodule 

module MX4X2TS ();
endmodule 

module MX4X1TS ();
endmodule 

module MX3XLTS ();
endmodule 

module MX3X4TS ();
endmodule 

module MX3X2TS ();
endmodule 

module MX3X1TS ();
endmodule 

module MX2XLTS ();
endmodule 

module MX2X8TS ();
endmodule 

module MX2X6TS ();
endmodule 

module MX2X4TS ();
endmodule 

module MX2X2TS ();
endmodule 

module MX2X1TS ();
endmodule 

module MDFFHQX8TS ();
endmodule 

module MDFFHQX4TS ();
endmodule 

module MDFFHQX2TS ();
endmodule 

module MDFFHQX1TS ();
endmodule 

module INVXLTS ();
endmodule 

module INVX8TS ();
endmodule 

module INVX6TS ();
endmodule 

module INVX4TS ();
endmodule 

module INVX3TS ();
endmodule 

module INVX2TS ();
endmodule 

module INVX20TS ();
endmodule 

module INVX1TS ();
endmodule 

module INVX16TS ();
endmodule 

module INVX12TS ();
endmodule 

module HOLDX1TS ();
endmodule 

module FILL8TS ();
endmodule 

module FILL64TS ();
endmodule 

module FILL4TS ();
endmodule 

module FILL32TS ();
endmodule 

module FILL2TS ();
endmodule 

module FILL1TS ();
endmodule 

module FILL16TS ();
endmodule 

module EDFFXLTS ();
endmodule 

module EDFFX4TS ();
endmodule 

module EDFFX2TS ();
endmodule 

module EDFFX1TS ();
endmodule 

module EDFFTRXLTS ();
endmodule 

module EDFFTRX4TS ();
endmodule 

module EDFFTRX2TS ();
endmodule 

module EDFFTRX1TS ();
endmodule 

module EDFFHQX8TS ();
endmodule 

module EDFFHQX4TS ();
endmodule 

module EDFFHQX2TS ();
endmodule 

module EDFFHQX1TS ();
endmodule 

module DLY4X4TS ();
endmodule 

module DLY4X1TS ();
endmodule 

module DLY3X4TS ();
endmodule 

module DLY3X1TS ();
endmodule 

module DLY2X4TS ();
endmodule 

module DLY2X1TS ();
endmodule 

module DLY1X4TS ();
endmodule 

module DLY1X1TS ();
endmodule 

module DFFXLTS ();
endmodule 

module DFFX4TS ();
endmodule 

module DFFX2TS ();
endmodule 

module DFFX1TS ();
endmodule 

module DFFTRXLTS ();
endmodule 

module DFFTRX4TS ();
endmodule 

module DFFTRX2TS ();
endmodule 

module DFFTRX1TS ();
endmodule 

module DFFSXLTS ();
endmodule 

module DFFSX4TS ();
endmodule 

module DFFSX2TS ();
endmodule 

module DFFSX1TS ();
endmodule 

module DFFSRXLTS ();
endmodule 

module DFFSRX4TS ();
endmodule 

module DFFSRX2TS ();
endmodule 

module DFFSRX1TS ();
endmodule 

module DFFSRHQX8TS ();
endmodule 

module DFFSRHQX4TS ();
endmodule 

module DFFSRHQX2TS ();
endmodule 

module DFFSRHQX1TS ();
endmodule 

module DFFSHQX8TS ();
endmodule 

module DFFSHQX4TS ();
endmodule 

module DFFSHQX2TS ();
endmodule 

module DFFSHQX1TS ();
endmodule 

module DFFRXLTS ();
endmodule 

module DFFRX4TS ();
endmodule 

module DFFRX2TS ();
endmodule 

module DFFRX1TS ();
endmodule 

module DFFRHQX8TS ();
endmodule 

module DFFRHQX4TS ();
endmodule 

module DFFRHQX2TS ();
endmodule 

module DFFRHQX1TS ();
endmodule 

module DFFQXLTS ();
endmodule 

module DFFQX4TS ();
endmodule 

module DFFQX2TS ();
endmodule 

module DFFQX1TS ();
endmodule 

module DFFNSRXLTS ();
endmodule 

module DFFNSRX4TS ();
endmodule 

module DFFNSRX2TS ();
endmodule 

module DFFNSRX1TS ();
endmodule 

module DFFHQX8TS ();
endmodule 

module DFFHQX4TS ();
endmodule 

module DFFHQX2TS ();
endmodule 

module DFFHQX1TS ();
endmodule 

module CMPR42X4TS ();
endmodule 

module CMPR42X2TS ();
endmodule 

module CMPR42X1TS ();
endmodule 

module CMPR32X4TS ();
endmodule 

module CMPR32X2TS ();
endmodule 

module CMPR22X4TS ();
endmodule 

module CMPR22X2TS ();
endmodule 

module CLKXOR2X8TS ();
endmodule 

module CLKXOR2X4TS ();
endmodule 

module CLKXOR2X2TS ();
endmodule 

module CLKXOR2X1TS ();
endmodule 

module CLKMX2X8TS ();
endmodule 

module CLKMX2X6TS ();
endmodule 

module CLKMX2X4TS ();
endmodule 

module CLKMX2X3TS ();
endmodule 

module CLKMX2X2TS ();
endmodule 

module CLKMX2X12TS ();
endmodule 

module CLKINVX8TS ();
endmodule 

module CLKINVX6TS ();
endmodule 

module CLKINVX4TS ();
endmodule 

module CLKINVX3TS ();
endmodule 

module CLKINVX2TS ();
endmodule 

module CLKINVX20TS ();
endmodule 

module CLKINVX1TS ();
endmodule 

module CLKINVX16TS ();
endmodule 

module CLKINVX12TS ();
endmodule 

module CLKBUFX8TS ();
endmodule 

module CLKBUFX6TS ();
endmodule 

module CLKBUFX4TS ();
endmodule 

module CLKBUFX3TS ();
endmodule 

module CLKBUFX2TS ();
endmodule 

module CLKBUFX20TS ();
endmodule 

module CLKBUFX16TS ();
endmodule 

module CLKBUFX12TS ();
endmodule 

module CLKAND2X8TS ();
endmodule 

module CLKAND2X6TS ();
endmodule 

module CLKAND2X4TS ();
endmodule 

module CLKAND2X3TS ();
endmodule 

module CLKAND2X2TS ();
endmodule 

module CLKAND2X12TS ();
endmodule 

module BUFX8TS ();
endmodule 

module BUFX6TS ();
endmodule 

module BUFX4TS ();
endmodule 

module BUFX3TS ();
endmodule 

module BUFX2TS ();
endmodule 

module BUFX20TS ();
endmodule 

module BUFX16TS ();
endmodule 

module BUFX12TS ();
endmodule 

module BMXX4TS ();
endmodule 

module BMXX2TS ();
endmodule 

module BMXIX4TS ();
endmodule 

module BMXIX2TS ();
endmodule 

module BENCX4TS ();
endmodule 

module BENCX2TS ();
endmodule 

module BENCX1TS ();
endmodule 

module AOI33XLTS ();
endmodule 

module AOI33X4TS ();
endmodule 

module AOI33X2TS ();
endmodule 

module AOI33X1TS ();
endmodule 

module AOI32XLTS ();
endmodule 

module AOI32X4TS ();
endmodule 

module AOI32X2TS ();
endmodule 

module AOI32X1TS ();
endmodule 

module AOI31XLTS ();
endmodule 

module AOI31X4TS ();
endmodule 

module AOI31X2TS ();
endmodule 

module AOI31X1TS ();
endmodule 

module AOI2BB2XLTS ();
endmodule 

module AOI2BB2X4TS ();
endmodule 

module AOI2BB2X2TS ();
endmodule 

module AOI2BB2X1TS ();
endmodule 

module AOI2BB1XLTS ();
endmodule 

module AOI2BB1X4TS ();
endmodule 

module AOI2BB1X2TS ();
endmodule 

module AOI2BB1X1TS ();
endmodule 

module AOI22XLTS ();
endmodule 

module AOI22X4TS ();
endmodule 

module AOI22X2TS ();
endmodule 

module AOI22X1TS ();
endmodule 

module AOI222XLTS ();
endmodule 

module AOI222X4TS ();
endmodule 

module AOI222X2TS ();
endmodule 

module AOI222X1TS ();
endmodule 

module AOI221XLTS ();
endmodule 

module AOI221X4TS ();
endmodule 

module AOI221X2TS ();
endmodule 

module AOI221X1TS ();
endmodule 

module AOI21XLTS ();
endmodule 

module AOI21X4TS ();
endmodule 

module AOI21X2TS ();
endmodule 

module AOI21X1TS ();
endmodule 

module AOI211XLTS ();
endmodule 

module AOI211X4TS ();
endmodule 

module AOI211X2TS ();
endmodule 

module AOI211X1TS ();
endmodule 

module AO22XLTS ();
endmodule 

module AO22X4TS ();
endmodule 

module AO22X2TS ();
endmodule 

module AO22X1TS ();
endmodule 

module AO21XLTS ();
endmodule 

module AO21X4TS ();
endmodule 

module AO21X2TS ();
endmodule 

module AO21X1TS ();
endmodule 

module ANTENNATS ();
endmodule 

module AND4XLTS ();
endmodule 

module AND4X8TS ();
endmodule 

module AND4X6TS ();
endmodule 

module AND4X4TS ();
endmodule 

module AND4X2TS ();
endmodule 

module AND4X1TS ();
endmodule 

module AND3XLTS ();
endmodule 

module AND3X8TS ();
endmodule 

module AND3X6TS ();
endmodule 

module AND3X4TS ();
endmodule 

module AND3X2TS ();
endmodule 

module AND3X1TS ();
endmodule 

module AND2XLTS ();
endmodule 

module AND2X8TS ();
endmodule 

module AND2X6TS ();
endmodule 

module AND2X4TS ();
endmodule 

module AND2X2TS ();
endmodule 

module AND2X1TS ();
endmodule 

module AHHCONX4TS ();
endmodule 

module AHHCONX2TS ();
endmodule 

module AHHCINX4TS ();
endmodule 

module AHHCINX2TS ();
endmodule 

module AHCSHCONX4TS ();
endmodule 

module AHCSHCONX2TS ();
endmodule 

module AHCSHCINX4TS ();
endmodule 

module AHCSHCINX2TS ();
endmodule 

module AFHCONX4TS ();
endmodule 

module AFHCONX2TS ();
endmodule 

module AFHCINX4TS ();
endmodule 

module AFHCINX2TS ();
endmodule 

module AFCSIHCONX4TS ();
endmodule 

module AFCSIHCONX2TS ();
endmodule 

module AFCSHCONX4TS ();
endmodule 

module AFCSHCONX2TS ();
endmodule 

module AFCSHCINX4TS ();
endmodule 

module AFCSHCINX2TS ();
endmodule 

module ADDHXLTS ();
endmodule 

module ADDHX4TS ();
endmodule 

module ADDHX2TS ();
endmodule 

module ADDHX1TS ();
endmodule 

module ADDFXLTS ();
endmodule 

module ADDFX4TS ();
endmodule 

module ADDFX2TS ();
endmodule 

module ADDFX1TS ();
endmodule 

module ADDFHXLTS ();
endmodule 

module ADDFHX4TS ();
endmodule 

module ADDFHX2TS ();
endmodule 

module ADDFHX1TS ();
endmodule 

module ACHCONX4TS ();
endmodule 

module ACHCONX2TS ();
endmodule 

module ACHCINX4TS ();
endmodule 

module ACHCINX2TS ();
endmodule 

module ACCSIHCONX4TS ();
endmodule 

module ACCSIHCONX2TS ();
endmodule 

module ACCSHCONX4TS ();
endmodule 

module ACCSHCONX2TS ();
endmodule 

module ACCSHCINX4TS ();
endmodule 

module ACCSHCINX2TS ();
endmodule 

