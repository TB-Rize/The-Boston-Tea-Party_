# tea_party:game/times/set_time/
#
## @within tea_party:game/start/

# ゲーム用スコアに落とし込む作業
# タイムリミット
execute store result score #game_time_temp1 tea.time_limit run scoreboard players get #setting_time_limit_min tea.time_limit
execute store result score #game_time_temp2 tea.time_limit run scoreboard players get #setting_time_limit_sec tea.time_limit
scoreboard players operation #game_time_temp1 tea.time_limit *= #1200 tea.int
scoreboard players operation #game_time_temp2 tea.time_limit *= #20 tea.int
scoreboard players operation #game_time_temp1 tea.time_limit += #game_time_temp2 tea.time_limit
scoreboard players operation #game_time_limit tea.time_limit = #game_time_temp1 tea.time_limit

# 次の作業の準備
scoreboard players set #game_time_temp1 tea.time_limit 0
scoreboard players set #game_time_temp2 tea.time_limit 0

# 突撃準備時間
execute store result score #game_time_temp1 tea.time_limit run scoreboard players get #setting_visible_tea_bag_time_min tea.time_limit
execute store result score #game_time_temp2 tea.time_limit run scoreboard players get #setting_visible_tea_bag_time_sec tea.time_limit
scoreboard players operation #game_time_temp1 tea.time_limit *= #1200 tea.int
scoreboard players operation #game_time_temp2 tea.time_limit *= #20 tea.int
scoreboard players operation #game_time_temp1 tea.time_limit += #game_time_temp2 tea.time_limit
scoreboard players operation #game_visible_tea_bag_time tea.time_limit = #game_time_temp1 tea.time_limit
data modify storage tea_party: Allowd_Attack set value 0b

# 次の作業の準備
scoreboard players set #game_time_temp1 tea.time_limit 0
scoreboard players set #game_time_temp2 tea.time_limit 0

# 船内滞在時間
execute store result score #game_time_temp1 tea.time_limit run scoreboard players get #setting_ship_time_limit_min tea.time_limit
execute store result score #game_time_temp2 tea.time_limit run scoreboard players get #setting_ship_time_limit_sec tea.time_limit
scoreboard players operation #game_time_temp1 tea.time_limit *= #1200 tea.int
scoreboard players operation #game_time_temp2 tea.time_limit *= #20 tea.int
scoreboard players operation #game_time_temp1 tea.time_limit += #game_time_temp2 tea.time_limit
scoreboard players operation #game_ship_time_limit tea.time_limit = #game_time_temp1 tea.time_limit
data remove storage tea_party: Ingame_ships.x
execute store result storage tea_party: Ingame_ships.x int 1 run scoreboard players get #game_ship_time_limit tea.time_limit
scoreboard players operation #game_ship_dartmouth tea.time_limit = #game_time_temp1 tea.time_limit
scoreboard players operation #game_ship_eleanor tea.time_limit = #game_time_temp1 tea.time_limit
scoreboard players operation #game_ship_beaver tea.time_limit = #game_time_temp1 tea.time_limit


# 次の作業の準備
scoreboard players set #game_time_temp1 tea.time_limit 0
scoreboard players set #game_time_temp2 tea.time_limit 0

