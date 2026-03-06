# tea_party:debug/get_data/player_detail/tellraw
#
## @within eeeeeeeeeeeeeeeeeee

# スコア反映しマクロを実行
scoreboard players operation #debug_pd tea_debug.int = @s tea_debug.p_num
execute store result storage tea_party: debug.pd.num int 1 run scoreboard players get #debug_pd tea_debug.int
function tea_party:debug/get_data/player_detail/tellraw_macro with storage tea_party: debug.pd