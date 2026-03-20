# tea_party:game/end/common
# 全終了処理共通の処理
#

data modify storage tea_party: Ingame set value 0b
scoreboard players set #game_time_limit tea.time_limit 0
scoreboard objectives remove tea.tea_bag_id
# アマスタ処理
# 名前を見えるようにする
execute as @e[tag=tea.trader_spawner] at @s run data modify entity @s CustomNameVisible set value 1b
# 姿を見えるようにする
execute as @e[tag=tea.trader_spawner] at @s run data modify entity @s Invisible set value 0b
# 荷物系のスポーンポイントを開示する
function tea_party:entity/tea_bag_spawn_point/disclose
function tea_party:entity/tasks/spawn/disclose

# 茶葉や荷物を片づける
function tea_party:entity/tea_bag/kill
function tea_party:entity/tasks/kill
function tea_party:entity/void_nexus/kill

# 商人には死んでもらう
execute as @e[tag=tea.trader] at @s run kill @s

# 設定用樽の鍵を開ける
execute as @e[tag=tea.trader_setting_marker] at @s run data remove block ~ ~ ~ lock

# effect外し
effect clear @a minecraft:resistance

# ゲームモード変更
gamemode creative @a

# サイドバー更新
scoreboard players reset string1
scoreboard players display name string1 tea.info ["",{text:"ゲーム : ",bold:true,italic:true,color:"white"},{text:"待機中",bold:true,italic:true,color:"green"}]
scoreboard players display numberformat string1 tea.info blank
scoreboard players reset string2
scoreboard players reset string3

# ボスバーをすべて削除
bossbar remove dartmouth
bossbar remove eleanor
bossbar remove beaver

# 4秒遅れでtellraw
schedule function tea_party:game/end/game_summary 4s

# 朝にする
time set 6000

# ヘイローを与える
execute as @a[tag=tea.role_agent] run tag @s add halo.red
execute as @a[tag=tea.role_sol] run tag @s add halo.green

# 30秒後に消えるように
schedule clear halo:remove_halo
schedule function halo:remove_halo 30s