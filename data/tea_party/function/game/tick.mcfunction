# tea_party:game/tick
#
## @within tea_party:tick

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 各船のボスバー処理
function tea_party:game/ingame/bossbar/ships/reduce


# 茶葉廃棄地点での茶葉廃棄処理 半径2以内でスニークしているプレイヤーがいる場合廃棄処理が行われる
execute as @e[tag=tea.waste_marker] at @s run execute as @a[predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:game/ingame/waste_tea_bags



# 茶葉個数処理
    execute if score #dartmouth_InGame tea.tea_bag_number matches 0 run function tea_party:game/ingame/ships/dartmouth
    execute if score #eleanor_InGame tea.tea_bag_number matches 0 run function tea_party:game/ingame/ships/eleanor
    execute if score #beaver_InGame tea.tea_bag_number matches 0 run function tea_party:game/ingame/ships/beaver

# 略奪された船の数に応じた処理(3で勝利)
    execute if score #ships_InGame tea.ship_plundered matches 3 run schedule function tea_party:game/end/tbtp_schedule 2s
    # フラグ潰し(3を4にすることで∞scheduleを回避)
    execute if score #ships_InGame tea.ship_plundered matches 3 run scoreboard players add #ships_InGame tea.ship_plundered 1

# タイムリミット減算
scoreboard players remove #game_time_limit tea.time_limit 1
scoreboard players operation #game_time_limit tea.time_limit > #0 tea.int
scoreboard players remove #game_visible_tea_bag_time tea.time_limit 1
scoreboard players operation #game_visible_tea_bag_time tea.time_limit > #0 tea.int


# 1秒を計り、実行されるコマンド(time_limitスコアを使いまわし)
scoreboard players add #game_1sec tea.time_limit 1
execute if score #game_1sec tea.time_limit matches 20.. run function tea_party:game/times/1sec

# タイムリミットに準じて動く処理
execute if score #game_visible_tea_bag_time tea.time_limit matches ..0 run function tea_party:game/ingame/allow_attack

execute if score #game_time_limit tea.time_limit matches 0 run function tea_party:game/end/time_limit

# ゲーム終了審査
function tea_party:game/end/