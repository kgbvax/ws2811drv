
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# bitreg, uart_mock, ws2811_drv

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:cmod_a7-35t:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set LED1 [ create_bd_port -dir O -type data LED1 ]
  set o_dout [ create_bd_port -dir O -type data o_dout ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: bitreg_0, and set properties
  set block_name bitreg
  set block_cell_name bitreg_0
  if { [catch {set bitreg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bitreg_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {544.175} \
   CONFIG.CLKOUT1_PHASE_ERROR {622.384} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_IN2_BOARD_INTERFACE {Custom} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {53.125} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.375} \
   CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.OVERRIDE_MMCM {false} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_CLKFB_STOPPED {false} \
   CONFIG.USE_INCLK_STOPPED {false} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_MIN_POWER {true} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Full_Flag {false} \
   CONFIG.Data_Count {false} \
   CONFIG.Data_Count_Width {14} \
   CONFIG.Empty_Threshold_Assert_Value_rach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {1022} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {0} \
   CONFIG.Full_Threshold_Assert_Value {16382} \
   CONFIG.Full_Threshold_Assert_Value_rach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wrch {1023} \
   CONFIG.Full_Threshold_Negate_Value {16381} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {16384} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {16384} \
   CONFIG.Read_Data_Count_Width {14} \
   CONFIG.Reset_Type {Synchronous_Reset} \
   CONFIG.Underflow_Flag {true} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Acknowledge_Flag {false} \
   CONFIG.Write_Data_Count_Width {14} \
 ] $fifo_generator_0

  # Create instance: uart_mock_0, and set properties
  set block_name uart_mock
  set block_cell_name uart_mock_0
  if { [catch {set uart_mock_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_mock_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ws2811_drv_0, and set properties
  set block_name ws2811_drv
  set block_cell_name ws2811_drv_0
  if { [catch {set ws2811_drv_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ws2811_drv_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net bitreg_0_bval [get_bd_pins bitreg_0/bval] [get_bd_pins ws2811_drv_0/i_ser_d8a]
  connect_bd_net -net bitreg_0_data_rd_en [get_bd_pins bitreg_0/data_rd_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins bitreg_0/i_clk] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins fifo_generator_0/clk] [get_bd_pins uart_mock_0/i_clk] [get_bd_pins ws2811_drv_0/i_clk]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins bitreg_0/data] [get_bd_pins fifo_generator_0/dout]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_generator_0/full] [get_bd_pins uart_mock_0/i_fifo_full]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz/reset]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net uart_mock_0_o_RX_Byte [get_bd_pins fifo_generator_0/din] [get_bd_pins uart_mock_0/o_RX_Byte]
  connect_bd_net -net uart_mock_0_o_RX_DV [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins uart_mock_0/o_RX_DV]
  connect_bd_net -net ws2811_drv_0_o_dout [get_bd_ports LED1] [get_bd_ports o_dout] [get_bd_pins ws2811_drv_0/o_dout]
  connect_bd_net -net ws2811_drv_0_o_ser_re [get_bd_pins bitreg_0/i_next] [get_bd_pins ws2811_drv_0/o_ser_next]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


