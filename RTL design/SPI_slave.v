module SPI_slave(
                 clk, rst_n, SS_n, MOSI, tx_valid, tx_data,
                 MISO, rx_valid, rx_data
                );

    // States
    parameter IDLE     = 3'b000;
    parameter CHK_CMD  = 3'b001;
    parameter WRITE    = 3'b011;
    parameter READ_ADD = 3'b010;
    parameter READ_DATA = 3'b110;

    input clk;
    input rst_n;
    input SS_n;
    input MOSI;
    input tx_valid;
    input [7:0] tx_data;

    output reg MISO;
    output reg rx_valid;
    output reg [9:0] rx_data;

    reg [9:0] shift_reg; // For serial-to-parallel conversion
    reg [7:0] tx_data_reg; // Holds data for transmission
    reg read_addr_received; // To track if read address received                 
    reg [4:0] counter; // Counts bits for receive/transmission

    (* fsm_encoding = "gray" *)
    reg [2:0] cs, ns; // Current and next state

    // State memory
    always @(posedge clk) begin
        if (~rst_n) 
            cs <= IDLE;
        else
            cs <= ns;
    end

    // Next state logic
    always @(*) begin
        case (cs)
            IDLE : begin
                if (SS_n) 
                    ns = IDLE;
                else 
                    ns = CHK_CMD;
            end
            CHK_CMD: begin
                if (SS_n)
                    ns = IDLE;                                                     
                else begin
                    if (MOSI) begin
                        if (read_addr_received) 
                            ns = READ_DATA;
                        else
                            ns = READ_ADD;
                    end
                    else
                        ns = WRITE;
                end
            end
            WRITE : begin
                    if (SS_n)
                        ns = IDLE;
                    else 
                        ns = WRITE;
            end
            READ_ADD : begin
                    if (SS_n) 
                        ns = IDLE;
                    else
                        ns = READ_ADD;
            end
            READ_DATA : begin
                    if (SS_n)
                        ns = IDLE;
                    else
                        ns = READ_DATA;
            end

            default : ns = IDLE;
        endcase
    end

    // Output logic
    always @(posedge clk) begin
        if (~rst_n) begin
            rx_data <= 0;
            rx_valid <= 0;
            counter <= 0;
            MISO <= 0;
            read_addr_received <= 0;
            tx_data_reg <= 0;
            shift_reg <= 0;
        end

        else if ((cs == IDLE) || (cs == CHK_CMD)) begin    
            rx_valid <= 0;
            shift_reg <= 0;
            counter <= 0;
            MISO <= 0;
            tx_data_reg <= 0;      
        end

        else if ((cs == WRITE) || (cs == READ_ADD)) begin
            // 10 counts to receive 10 MOSI bits, 1 count to store shift_reg in rx_data
            if (counter < 11) begin
                counter <= counter + 1;
                if (counter < 10) begin
                    shift_reg <= {shift_reg[8:0], MOSI}; // Shift in MOSI data
                end
                else begin
                    rx_valid <= 1;
                    rx_data <= shift_reg;
                    if (cs == READ_ADD)
                        read_addr_received <= 1;
                end
            end
            else begin
                rx_valid <= 0;
            end
        end

        else if (cs == READ_DATA) begin   
            if (tx_valid) 
                tx_data_reg <= tx_data; // Load data for transmission
            else begin
                if (counter < 11) begin 
                    counter <= counter + 1;
                    if (counter < 10) begin 
                        shift_reg <= {shift_reg[8:0], MOSI}; // Shift in MOSI data
                    end
                    else begin
                        rx_valid <= 1;
                        rx_data <= shift_reg;
                    end
                end   
                else begin
                    // counter >= 11
                    counter <= counter + 1;
                    {MISO,tx_data_reg} <= {tx_data_reg,1'b0}; // Shift out data on MISO
                    rx_valid <= 0;

                end
            end
        end

        else begin
            rx_valid <= 0;
        end
    end

endmodule