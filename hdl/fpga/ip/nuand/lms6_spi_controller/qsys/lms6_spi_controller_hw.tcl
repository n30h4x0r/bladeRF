# TCL File Generated by Component Editor 15.0
# Thu Jun 25 21:35:08 EDT 2015
# DO NOT MODIFY


#
# lms6_spi_controller "lms6_spi_controller" v1.0
# Nuand, LLC 2015.06.25.21:35:07
# SPI Controller for LMS6002D
#

#
# request TCL package from ACDS 15.0
#
package require -exact qsys 15.0


#
# module lms6_spi_controller
#
set_module_property DESCRIPTION "SPI Controller for LMS6002D"
set_module_property NAME lms6_spi_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Interface Protocols/Serial"
set_module_property AUTHOR "Nuand, LLC"
set_module_property DISPLAY_NAME lms6_spi_controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


#
# file sets
#
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL lms6_spi_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file lms6_spi_controller.vhd VHDL PATH ../vhdl/lms6_spi_controller.vhd TOP_LEVEL_FILE


#
# parameters
#
add_parameter CLOCK_DIV INTEGER 2
set_parameter_property CLOCK_DIV DEFAULT_VALUE 2
set_parameter_property CLOCK_DIV DISPLAY_NAME CLOCK_DIV
set_parameter_property CLOCK_DIV TYPE INTEGER
set_parameter_property CLOCK_DIV UNITS None
set_parameter_property CLOCK_DIV ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CLOCK_DIV HDL_PARAMETER true
add_parameter ADDR_WIDTH POSITIVE 7
set_parameter_property ADDR_WIDTH DEFAULT_VALUE 7
set_parameter_property ADDR_WIDTH DISPLAY_NAME ADDR_WIDTH
set_parameter_property ADDR_WIDTH TYPE POSITIVE
set_parameter_property ADDR_WIDTH ENABLED false
set_parameter_property ADDR_WIDTH UNITS None
set_parameter_property ADDR_WIDTH ALLOWED_RANGES 1:2147483647
set_parameter_property ADDR_WIDTH HDL_PARAMETER true
add_parameter DATA_WIDTH POSITIVE 8
set_parameter_property DATA_WIDTH DEFAULT_VALUE 8
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE POSITIVE
set_parameter_property DATA_WIDTH ENABLED false
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES 1:2147483647
set_parameter_property DATA_WIDTH HDL_PARAMETER true


#
# display items
#


#
# connection point reset_sink
#
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink mm_reset reset Input 1


#
# connection point clock_sink
#
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 80000000
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink mm_clock clk Input 1


#
# connection point conduit_end
#
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_sink
set_interface_property conduit_end associatedReset reset_sink
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end sclk sclk Output 1
add_interface_port conduit_end miso miso Input 1
add_interface_port conduit_end mosi mosi Output 1
add_interface_port conduit_end cs_n ss_n Output 1


#
# connection point avalon_slave_0
#
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits SYMBOLS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits SYMBOLS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 1
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 mm_addr address Input addr_width
add_interface_port avalon_slave_0 mm_din writedata Input data_width
add_interface_port avalon_slave_0 mm_dout readdata Output data_width
add_interface_port avalon_slave_0 mm_dout_val readdatavalid Output 1
add_interface_port avalon_slave_0 mm_busy waitrequest Output 1
add_interface_port avalon_slave_0 mm_read read Input 1
add_interface_port avalon_slave_0 mm_write write Input 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0

