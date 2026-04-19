vlib work
vlog RAM.v SPI_slave.v SPI_top_module.v SPI_master_tb.v
vsim -voptargs=+acc work.SPI_master_tb
add wave -position insertpoint  \
sim:/SPI_master_tb/clk \
sim:/SPI_master_tb/rst_n \
sim:/SPI_master_tb/SS_n \
sim:/SPI_master_tb/MOSI \
sim:/SPI_master_tb/MISO \
sim:/SPI_master_tb/DUT/SPI_slave_inst/tx_data \
sim:/SPI_master_tb/DUT/SPI_slave_inst/rx_data \
sim:/SPI_master_tb/DUT/SPI_slave_inst/tx_valid \
sim:/SPI_master_tb/DUT/SPI_slave_inst/rx_valid \
sim:/SPI_master_tb/DUT/SPI_slave_inst/cs \
sim:/SPI_master_tb/DUT/SPI_slave_inst/ns \
sim:/SPI_master_tb/DUT/RAM_inst/mem
run -all
#quit -sim
