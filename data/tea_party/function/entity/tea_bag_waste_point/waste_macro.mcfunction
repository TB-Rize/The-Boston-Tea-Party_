# tea_party:entity/tea_bag_waste_point/waste_macro
# 実行者 : 茶葉を掴んでいるプレイヤー
## @within tea_party:entity/tea_bag_waste_point/


# 茶葉の残量を1減らす
$scoreboard players remove @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)}] tea.tea_bag_quantity 1

# 音鳴らし
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 180 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 160 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 140 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 120 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 100 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 80 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 60 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 40 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 20 run playsound minecraft:block.moss_carpet.break master @s ~ ~ ~ 4 0.5
$execute if score @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},limit=1] tea.tea_bag_quantity matches 0 run playsound minecraft:item.armor.equip_leather master @s ~ ~ ~ 2 0.3
# 茶葉の残量が0以下でなければ帰れ
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)}] unless score @s tea.tea_bag_quantity matches ..0 run return fail

# スコア処理
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},tag=tea.tea_bag_dartmouth] run scoreboard players remove #dartmouth_InGame tea.tea_bag_number 1
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},tag=tea.tea_bag_eleanor] run scoreboard players remove #eleanor_InGame tea.tea_bag_number 1
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},tag=tea.tea_bag_beaver] run scoreboard players remove #beaver_InGame tea.tea_bag_number 1

# 茶葉の残量が0以下なので茶葉を消す
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)}] run kill @s
$execute as @e[tag=tea.tea_bag,scores={tea.tea_bag_id=$(id)}] run kill @s


# 茶葉を持っているプレイヤーの情報をリセット
function tea_party:item/tools/tea_bag_rope/released