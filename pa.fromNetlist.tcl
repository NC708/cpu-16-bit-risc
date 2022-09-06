
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name CPU_16_Bit_RISC -dir "C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC/planAhead_run_2" -part xc7a100tcsg324-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC/top_level.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Nelson/Desktop/comporg fsm/CPU_16_Bit_RISC} {ipcore_dir} }
add_files [list {ipcore_dir/ip_ram_output_code.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ip_rom_input_code.ncf}] -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top_level.ucf" [current_fileset -constrset]
add_files [list {top_level.ucf}] -fileset [get_property constrset [current_run]]
link_design
