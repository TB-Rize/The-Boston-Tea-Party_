# tea_party:debug/get_data/player_detail/tellraw_macro
#
## @within eeeeeeeeeeeeeeeeeee


$tellraw @a[tag=tea.debug_man] {selector:"@a[scores={tea_debug.p_num=$(num)}]",color:"green",click_event:{action:"run_command",command:"/function tea_party:debug/get_data/player_detail/show {num:$(num)}"}}

