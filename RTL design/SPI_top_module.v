module SPI_top_module(clk, rst_n, SS_n, MOSI, MISO);

    parameter MEM_DEPTH = 256;
    parameter ADDR_SIZE = 8;
    input clk, rst_n, SS_n, MOSI;
    output MISO;
    wire [9:0] rx_data;
    wire [7:0] tx_data;
    wire rx_valid, tx_valid;

    // SPI slave module
    SPI_slave SPI_slave_inst (
        .clk(clk),
        .rst_n(rst_n),
        .SS_n(SS_n),
        .MOSI(MOSI),
        .tx_data(tx_data),
        .tx_valid(tx_valid),
        .MISO(MISO),
        .rx_data(rx_data),
        .rx_valid(rx_valid)                                                 
    );

    // Single Port RAM module
    RAM #(
        .MEM_DEPTH(MEM_DEPTH),
        .ADDR_SIZE(ADDR_SIZE)
    ) RAM_inst (
        .clk(clk),
        .rst_n(rst_n),
        .din(rx_data),
        .rx_valid(rx_valid),
        .dout(tx_data),
        .tx_valid(tx_valid)
    );

endmodule