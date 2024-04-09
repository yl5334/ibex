Version: 2

# Define offsets and spacings for different groups of signals
Offset: 20
Spacing: 4

# Clock and reset signals
Pin: clk_i W 2 0.2000 0.6000
Pin: rst_ni W 2 0.2000 0.6000

# Core interface signals
Offset: 24
Spacing: 10
Pin: test_en_i N 3 0.2000 0.6000
Pin: debug_req_i N 3 0.2000 0.6000
Pin: fetch_enable_i N 3 0.2000 0.6000
Pin: scan_rst_ni N 3 0.2000 0.6000

Offset: 28
Spacing: 2
Pin: ram_cfg_i[0] E 2 0.2000 0.6000
Pin: ram_cfg_i[1] E 2 0.2000 0.6000
Pin: ram_cfg_i[2] E 2 0.2000 0.6000
Pin: ram_cfg_i[3] E 2 0.2000 0.6000
Pin: ram_cfg_i[4] E 2 0.2000 0.6000
Pin: ram_cfg_i[5] E 2 0.2000 0.6000
Pin: ram_cfg_i[6] E 2 0.2000 0.6000
Pin: ram_cfg_i[7] E 2 0.2000 0.6000
Pin: ram_cfg_i[8] E 2 0.2000 0.6000
Pin: ram_cfg_i[9] E 2 0.2000 0.6000

Pin: hart_id_i[0] E 2 0.2000 0.6000
Pin: hart_id_i[1] E 2 0.2000 0.6000
Pin: hart_id_i[2] E 2 0.2000 0.6000
Pin: hart_id_i[3] E 2 0.2000 0.6000
Pin: hart_id_i[4] E 2 0.2000 0.6000
Pin: hart_id_i[5] E 2 0.2000 0.6000
Pin: hart_id_i[6] E 2 0.2000 0.6000
Pin: hart_id_i[7] E 2 0.2000 0.6000
Pin: hart_id_i[8] E 2 0.2000 0.6000
Pin: hart_id_i[9] E 2 0.2000 0.6000
Pin: hart_id_i[10] E 2 0.2000 0.6000
Pin: hart_id_i[11] E 2 0.2000 0.6000
Pin: hart_id_i[12] E 2 0.2000 0.6000
Pin: hart_id_i[13] E 2 0.2000 0.6000
Pin: hart_id_i[14] E 2 0.2000 0.6000
Pin: hart_id_i[15] E 2 0.2000 0.6000
Pin: hart_id_i[16] E 2 0.2000 0.6000
Pin: hart_id_i[17] E 2 0.2000 0.6000
Pin: hart_id_i[18] E 2 0.2000 0.6000
Pin: hart_id_i[19] E 2 0.2000 0.6000
Pin: hart_id_i[20] E 2 0.2000 0.6000
Pin: hart_id_i[21] E 2 0.2000 0.6000
Pin: hart_id_i[22] E 2 0.2000 0.6000
Pin: hart_id_i[23] E 2 0.2000 0.6000
Pin: hart_id_i[24] E 2 0.2000 0.6000
Pin: hart_id_i[25] E 2 0.2000 0.6000
Pin: hart_id_i[26] E 2 0.2000 0.6000
Pin: hart_id_i[27] E 2 0.2000 0.6000
Pin: hart_id_i[28] E 2 0.2000 0.6000
Pin: hart_id_i[29] E 2 0.2000 0.6000
Pin: hart_id_i[30] E 2 0.2000 0.6000
Pin: hart_id_i[31] E 2 0.2000 0.6000

Pin: boot_addr_i[0] E 2 0.2000 0.6000
Pin: boot_addr_i[1] E 2 0.2000 0.6000
Pin: boot_addr_i[2] E 2 0.2000 0.6000
Pin: boot_addr_i[3] E 2 0.2000 0.6000
Pin: boot_addr_i[4] E 2 0.2000 0.6000
Pin: boot_addr_i[5] E 2 0.2000 0.6000
Pin: boot_addr_i[6] E 2 0.2000 0.6000
Pin: boot_addr_i[7] E 2 0.2000 0.6000
Pin: boot_addr_i[8] E 2 0.2000 0.6000
Pin: boot_addr_i[9] E 2 0.2000 0.6000
Pin: boot_addr_i[10] E 2 0.2000 0.6000
Pin: boot_addr_i[11] E 2 0.2000 0.6000
Pin: boot_addr_i[12] E 2 0.2000 0.6000
Pin: boot_addr_i[13] E 2 0.2000 0.6000
Pin: boot_addr_i[14] E 2 0.2000 0.6000
Pin: boot_addr_i[15] E 2 0.2000 0.6000
Pin: boot_addr_i[16] E 2 0.2000 0.6000
Pin: boot_addr_i[17] E 2 0.2000 0.6000
Pin: boot_addr_i[18] E 2 0.2000 0.6000
Pin: boot_addr_i[19] E 2 0.2000 0.6000
Pin: boot_addr_i[20] E 2 0.2000 0.6000
Pin: boot_addr_i[21] E 2 0.2000 0.6000
Pin: boot_addr_i[22] E 2 0.2000 0.6000
Pin: boot_addr_i[23] E 2 0.2000 0.6000
Pin: boot_addr_i[24] E 2 0.2000 0.6000
Pin: boot_addr_i[25] E 2 0.2000 0.6000
Pin: boot_addr_i[26] E 2 0.2000 0.6000
Pin: boot_addr_i[27] E 2 0.2000 0.6000
Pin: boot_addr_i[28] E 2 0.2000 0.6000
Pin: boot_addr_i[29] E 2 0.2000 0.6000
Pin: boot_addr_i[30] E 2 0.2000 0.6000
Pin: boot_addr_i[31] E 2 0.2000 0.6000

Offset: 32
Spacing: 10
Pin: instr_req_o S 3 0.2000 0.6000
Pin: instr_gnt_i S 3 0.2000 0.6000
Pin: instr_rvalid_i S 3 0.2000 0.6000
Pin: instr_err_i S 3 0.2000 0.6000

Offset: 36
Spacing: 10
Pin: instr_addr_o[31:0] S 3 0.2000 0.6000
Pin: instr_rdata_i[31:0] S 3 0.2000 0.6000
Pin: instr_rdata_intg_i[6:0] S 3 0.2000 0.6000

Offset: 40
Spacing: 10
Pin: data_req_o W 2 0.2000 0.6000
Pin: data_gnt_i W 2 0.2000 0.6000
Pin: data_rvalid_i W 2 0.2000 0.6000
Pin: data_we_o W 2 0.2000 0.6000

Offset: 44
Spacing: 10
Pin: data_be_o[3:0] W 2 0.2000 0.6000
Pin: data_addr_o[31:0] W 2 0.2000 0.6000
Pin: data_wdata_o[31:0] W 2 0.2000 0.6000
Pin: data_rdata_i[31:0] W 2 0.2000 0.6000

Offset: 48
Spacing: 10
Pin: data_wdata_intg_o[6:0] E 2 0.2000 0.6000
Pin: data_rdata_intg_i[6:0] E 2 0.2000 0.6000
Pin: data_err_i E 2 0.2000 0.6000

# IRQ and other control signals
Offset: 52
Spacing: 10
Pin: irq_software_i N 3 0.2000 0.6000
Pin: irq_timer_i N 3 0.2000 0.6000
Pin: irq_external_i N 3 0.2000 0.6000
Pin: irq_fast_i[14:0] N 3 0.2000 0.6000
Pin: irq_nm_i N 3 0.2000 0.6000

# Power management and miscellaneous signals
Offset: 56
Spacing: 10
Pin: scramble_key_valid_i S 3 0.2000 0.6000
Pin: scramble_key_i[127:0] S 3 0.2000 0.6000
Pin: scramble_nonce_i[63:0] S 3 0.2000 0.6000
Pin: scramble_req_o S 3 0.2000 0.6000

# Output status and alert signals
Offset: 60
Spacing: 10
Pin: crash_dump_o[159:0] E 2 0.2000 0.6000
Pin: double_fault_seen_o E 2 0.2000 0.6000
Pin: alert_minor_o E 2 0.2000 0.6000
Pin: alert_major_internal_o E 2 0.2000 0.6000
Pin: alert_major_bus_o E 2 0.2000 0.6000
Pin: core_sleep_o E 2 0.2000 0.6000

