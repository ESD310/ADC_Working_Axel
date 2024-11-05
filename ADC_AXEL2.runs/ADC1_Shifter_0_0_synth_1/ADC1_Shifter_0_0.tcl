# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.runs/ADC1_Shifter_0_0_synth_1/ADC1_Shifter_0_0.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "ADC1_Shifter_0_0_synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 3
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_param project.vivado.isBlockSynthRun true
OPTRACE "Creating in-memory project" START { }
set_param ips.modRefOverrideMrefDirPath c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/mref
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.cache/wt [current_project]
set_property parent.project_path C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths {C:/Users/axelo/AppData/Roaming/Xilinx/Vivado/2024.1.2/xhub/board_store/xilinx_board_store} [current_project]
set_property board_part digilentinc.com:cmod_a7-35t:part0:1.2 [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_vhdl -library xil_defaultlib C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.srcs/sources_1/new/Shifter.vhd
read_ip -quiet c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.srcs/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0.xci

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top ADC1_Shifter_0_0 -part xc7a35tcpg236-1 -incremental_mode off -mode out_of_context
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}

rename_ref -prefix_all ADC1_Shifter_0_0_

OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ADC1_Shifter_0_0.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file ADC1_Shifter_0_0_utilization_synth.rpt -pb ADC1_Shifter_0_0_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }

if { [catch {
  file copy -force C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.runs/ADC1_Shifter_0_0_synth_1/ADC1_Shifter_0_0.dcp c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 status "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.ip_user_files/ip/ADC1_Shifter_0_0]} {
  catch { 
    file copy -force c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.v C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.ip_user_files/ip/ADC1_Shifter_0_0
  }
}

if {[file isdir C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.ip_user_files/ip/ADC1_Shifter_0_0]} {
  catch { 
    file copy -force c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.vhdl C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.ip_user_files/ip/ADC1_Shifter_0_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "ADC1_Shifter_0_0_synth_1" END { }
