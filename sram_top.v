module sram_top(
    input phi1, phi2,
    input resetn,

    input comp_en, 
    input ren, wen,

    input [5:0] addr,
    input [15:0] data,
    input [63:0] in,

    output [15:0] out,
    output [71:0] sum
);

wire [63:0] in_b;
wire [63:0] word;

decoder decoder_0(
    .w_addr(addr),
    .IN0(in),
    .in_en(comp_en),
    .phi1(phi1),
    .w(word),
    .IN_B(in_b)
);


sram_block sram_block_0(
    .phi1(phi1),
    .phi2(phi2),
    .clk(phi2),
    .resetn(resetn),
    .accu_en(comp_en),
    .read(ren),
    .write(wen),
    .data(data[3:0]),
    .WORD(word),
    .IN_B(in_b),
    .read_out(out[3:0]),
    .sum(sum[17:0])
);

sram_block sram_block_1(
    .phi1(phi1),
    .phi2(phi2),
    .clk(phi2),
    .resetn(resetn),
    .accu_en(comp_en),
    .read(ren),
    .write(wen),
    .data(data[7:4]),
    .WORD(word),
    .IN_B(in_b),
    .read_out(out[7:4]),
    .sum(sum[35:18])
);
sram_block sram_block_2(
    .phi1(phi1),
    .phi2(phi2),
    .clk(phi2),
    .resetn(resetn),
    .accu_en(comp_en),
    .read(ren),
    .write(wen),
    .data(data[11:8]),
    .WORD(word),
    .IN_B(in_b),
    .read_out(out[11:8]),
    .sum(sum[53:36])
);
sram_block sram_block_3(
    .phi1(phi1),
    .phi2(phi2),
    .clk(phi2),
    .resetn(resetn),
    .accu_en(comp_en),
    .read(ren),
    .write(wen),
    .data(data[15:12]),
    .WORD(word),
    .IN_B(in_b),
    .read_out(out[15:12]),
    .sum(sum[71:54])
);


endmodule