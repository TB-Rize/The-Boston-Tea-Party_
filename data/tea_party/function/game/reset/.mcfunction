# tea_party:game/reset/
#
## @within tea_party:game/start/

# エフェクトをすべて除去
effect clear @a
# タグ除去
tag @a remove tea.role_assigned
tag @a remove tea.role_agent
tag @a remove tea.role_sol
tag @a remove tea.tea_bag_carrying
tag @a remove tea.role_sol_sp_assigned
tag @a remove tea.role_agent_sp_assigned
# スコアボードを再創生
scoreboard objectives remove tea.role_num
scoreboard objectives add tea.role_num dummy "紅茶：役職番号"
scoreboard objectives remove tea.tea_bag_id
scoreboard objectives add tea.tea_bag_id dummy "紅茶：茶葉id"
scoreboard players set #id_assign tea.tea_bag_id 0
scoreboard objectives remove tea.tea_bag_is_carrying
scoreboard objectives add tea.tea_bag_is_carrying dummy "紅茶：茶葉もっているかどうか"
scoreboard objectives remove tea.tea_bag_having_id
scoreboard objectives add tea.tea_bag_having_id dummy "紅茶：茶葉所有者の茶葉id"
scoreboard objectives remove tea.tea_bag_quantity
scoreboard objectives add tea.tea_bag_quantity dummy "紅茶：茶葉の残量"
scoreboard objectives remove tea.trader_offers_num
scoreboard objectives add tea.trader_offers_num dummy "紅茶：取引の番号"
scoreboard objectives remove tea.dead
scoreboard objectives add tea.dead dummy "紅茶: 死んだかどうか"
scoreboard objectives remove tea.damage_resisted
scoreboard objectives add tea.damage_resisted minecraft.custom:minecraft.damage_resisted "紅茶 : 防いだダメージ数(10倍計上)"
scoreboard objectives remove tea.ship_plundered
scoreboard objectives add tea.ship_plundered dummy "紅茶 : 茶葉を完全に落とされた船の数"
scoreboard objectives remove tea.task_id
scoreboard objectives add tea.task_id dummy "紅茶 : タスク関連処理ID"
scoreboard objectives remove tea.task_is_carrying
scoreboard objectives add tea.task_is_carrying dummy "紅茶 : タスク荷物の担ぎ確認"


# 脱出した船の数をリセットする
scoreboard players set #escaped_ships tea.escaped 0

# 勝利条件ストレージをリセット
data modify storage tea_party: the_boston_tea_party set value 0b

# id割り振りのリセット
execute as @e[tag=tea.id_assigned,tag=tea.tea_bag_spawner] run tag @s add tea.id_unassigned
execute as @e[tag=tea.id_unassigned] run tag @s remove tea.id_assigned

# 茶葉のスポーンポイントを開示する
function tea_party:entity/tea_bag_spawn_point/disclose

# 茶葉を片づける
function tea_party:entity/tea_bag/kill

# レベルを0にする
xp set @a 0 levels
xp set @a 0 points



# エンティティキル
kill @e[type=minecraft:arrow]
kill @e[type=item]

# 船の状態をリセット
data modify storage tea_party: game_state.d set value 0b
data modify storage tea_party: game_state.e set value 0b
data modify storage tea_party: game_state.b set value 0b

# 一応ここでタスクを手放したことにしておく
execute as @a run function tea_party:item/tools/task_rope/released

# 朝にする
time set 6000