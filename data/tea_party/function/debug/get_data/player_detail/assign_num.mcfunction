# tea_party:debug/get_data/player_detail/assign_num
#
## @within wwwwww



scoreboard players add #debug tea_debug.p_num 1
scoreboard players operation @s tea_debug.p_num = #debug tea_debug.p_num
tag @s add tea.debug_p_num


execute as @r[tag=!tea.debug_p_num] run function tea_party:debug/get_data/player_detail/assign_num