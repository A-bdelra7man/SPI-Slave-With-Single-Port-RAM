module SPI_master_tb();

    reg clk, rst_n;
    reg MOSI;
    reg SS_n;
    wire MISO;

    integer i;
    reg [9:0] temp_data;

    SPI_top_module DUT(clk, rst_n, SS_n, MOSI, MISO);                          

    // Clock generation
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    // Test
    initial begin
        
        // Initialize memory
        $readmemh("mem.dat", DUT.RAM_inst.mem);

        // Reset and Initialize signals
        rst_n = 0;
        SS_n = 1;
        MOSI = 0;
        temp_data = 0;
        @(negedge clk);
        rst_n = 1;

        // ==================================================
        // Test 1: address 0xff , data 0x7d
        // ==================================================
        // Write address 0xff (10'b00_1111_1111)
        SS_n = 0; @(negedge clk);
        MOSI = 0; @(negedge clk); // Write command
        temp_data = 10'b00_1111_1111;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Write data 0x7d (10'b01_0111_1101)
        SS_n = 0; @(negedge clk);
        MOSI = 0; @(negedge clk); // Write command
        temp_data = 10'b01_0111_1101;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Read address 0xff (10'b10_1111_1111)
        SS_n = 0; @(negedge clk);
        MOSI = 1; @(negedge clk); // Read command
        temp_data = 10'b10_1111_1111;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Read data (expecting 0111_1101 on MISO)                             
        SS_n = 0; @(negedge clk);
        MOSI = 1; @(negedge clk); // Read command
        MOSI = 1; @(negedge clk);
        MOSI = 1; @(negedge clk);
        // Send dummy bits
        for (i = 0; i < 8; i = i + 1) begin
            MOSI = 0; @(negedge clk);
        end
        // Extra clocks to observe MISO
        repeat(10) @(negedge clk);
        SS_n = 1; @(negedge clk);

        // ==================================================
        // Test 2: address 0xfe , data 0xaa
        // ==================================================

        // Write address 0xfe (10'b00_1111_1110)
        SS_n = 0; @(negedge clk);
        MOSI = 0; @(negedge clk); // Write command
        temp_data = 10'b00_1111_1110;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Write data 0xaa (10'b01_1010_1010)
        SS_n = 0; @(negedge clk);
        MOSI = 0; @(negedge clk); // Write command                                            
        temp_data = 10'b01_1010_1010;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Read address 0xfe (10'b10_1111_1110)
        SS_n = 0; @(negedge clk);
        MOSI = 1; @(negedge clk); // Read command
        temp_data = 10'b10_1111_1110;
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = temp_data[i];
            @(negedge clk);
        end
        @(negedge clk);
        SS_n = 1; @(negedge clk);

        // Read data (expecting 1010_1010 on MISO)
        SS_n = 0; @(negedge clk);
        MOSI = 1; @(negedge clk); // Read command
        MOSI = 1; @(negedge clk);
        MOSI = 1; @(negedge clk);
        // Send dummy bits
        for (i = 0; i < 8; i = i + 1) begin
            MOSI = 0; @(negedge clk);
        end
        // Extra clocks to observe MISO
        repeat(10) @(negedge clk); 
        SS_n = 1; @(negedge clk);

        $stop;
    end
endmodule