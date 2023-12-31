# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Administrator/Documents/project_10blaze/project_10blaze.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Documents/project_10blaze/project_10blaze.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/Administrator/Documents/project_10blaze/project_10blaze.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/hdl/microblazeblock_wrapper.v
add_files C:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/microblazeblock.bd
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_microblaze_0_0/microblazeblock_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_microblaze_0_0/microblazeblock_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_microblaze_0_0/microblazeblock_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_mdm_1_0/microblazeblock_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_mdm_1_0/microblazeblock_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_clk_wiz_1_0/microblazeblock_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_clk_wiz_1_0/microblazeblock_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_clk_wiz_1_0/microblazeblock_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_clk_wiz_1_100M_0/microblazeblock_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_clk_wiz_1_100M_0/microblazeblock_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_clk_wiz_1_100M_0/microblazeblock_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_uartlite_0_0/microblazeblock_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_uartlite_0_0/microblazeblock_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_uartlite_0_0/microblazeblock_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_mig_7series_0_1/microblazeblock_mig_7series_0_1/user_design/constraints/microblazeblock_mig_7series_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_mig_7series_0_1/microblazeblock_mig_7series_0_1/user_design/constraints/microblazeblock_mig_7series_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_mig_7series_0_1/microblazeblock_mig_7series_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_12/bd_6bd4_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_21/bd_6bd4_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_24/bd_6bd4_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_25/bd_6bd4_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_26/bd_6bd4_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_27/bd_6bd4_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_28/bd_6bd4_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_29/bd_6bd4_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_22/bd_6bd4_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_23/bd_6bd4_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_13/bd_6bd4_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_14/bd_6bd4_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_15/bd_6bd4_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_16/bd_6bd4_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_17/bd_6bd4_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_4/bd_6bd4_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_5/bd_6bd4_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_6/bd_6bd4_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_7/bd_6bd4_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_8/bd_6bd4_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_1/bd_6bd4_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_1/bd_6bd4_psr0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_2/bd_6bd4_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_2/bd_6bd4_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_3/bd_6bd4_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/bd_0/ip/ip_3/bd_6bd4_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_mig_7series_0_81M_0/microblazeblock_rst_mig_7series_0_81M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_mig_7series_0_81M_0/microblazeblock_rst_mig_7series_0_81M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_rst_mig_7series_0_81M_0/microblazeblock_rst_mig_7series_0_81M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_dlmb_v10_0/microblazeblock_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_dlmb_v10_0/microblazeblock_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_ilmb_v10_0/microblazeblock_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_ilmb_v10_0/microblazeblock_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_dlmb_bram_if_cntlr_0/microblazeblock_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_ilmb_bram_if_cntlr_0/microblazeblock_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/ip/microblazeblock_lmb_bram_0/microblazeblock_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Administrator/Documents/project_10blaze/project_10blaze.srcs/sources_1/bd/microblazeblock/microblazeblock_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top microblazeblock_wrapper -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef microblazeblock_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file microblazeblock_wrapper_utilization_synth.rpt -pb microblazeblock_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
