# tea_party:entity/trader_setting/
#
## @within tea_party:entity/tick

# アイテムをセットする(2週目の処理)
execute as @e[tag=tea.trader_setting_allowed] run function tea_party:entity/trader_setting/set_items/set_items
# リセット
data modify storage tea_party_trader: allowed set value 0b
# 既に設定樽設置のアマスタがいたなら記録
execute as @e[tag=tea.trader_setting_allowed] run data modify storage tea_party_trader: allowed set value 1b

# いた場合自害し帰る
execute if data storage tea_party_trader: {allowed:1b} run kill @e[tag=tea.trader_setting_unallowed]
execute if data storage tea_party_trader: {allowed:1b} run return fail
# 戻しておく
data modify storage tea_party_trader: allowed set value 0b

# 樽を設置
setblock ~ ~ ~ minecraft:barrel{CustomName:"上: 要求品 中央:購入品 下:特になし"}

# ブランクの設置(何故か不発する)
execute at @s run function tea_party:entity/trader_setting/set_brank

# 自身の死を予見するためのmarkerを設置
summon minecraft:marker ~ ~ ~ {Tags:["tea.trader_setting_marker"]}

# タグ処理
tag @s add tea.trader_setting_allowed

