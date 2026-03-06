# tea_party:entity/villager/trader/summon
#
## @within tea_party:game/start/

# 商人取引の内容を保存
execute as @e[tag=tea.trader_setting_marker] at @s run function tea_party:entity/trader_setting/store_to_storage/
# 村人召喚
execute as @e[tag=tea.trader_spawner] at @s run summon minecraft:villager ~ ~ ~ {Tags:["tea.villager","tea.trader"],VillagerData:{type:"minecraft:plains",profession:"minecraft:librarian",level:5},Offers:{},NoAI:1b,Invulnerable:1b,CustomName:{text:"商人A"}}

# アマスタ処理
# 名前を見えないようにする
execute as @e[tag=tea.trader_spawner] at @s run data modify entity @s CustomNameVisible set value 0b
# 姿を見えないようにする
execute as @e[tag=tea.trader_spawner] at @s run data modify entity @s Invisible set value 1b

# 取引設定
function tea_party:entity/villager/trader/set_offer/