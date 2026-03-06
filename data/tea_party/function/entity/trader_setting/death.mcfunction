# tea_party:entity/trader_setting/death
#
## @within tea_party:entity/tick

# 生存確認値を消す
data modify storage tea_party_trader: check_alive set value 0b
# アイテム散らばり防止
kill @e[type=item,distance=..1]

# もし樽が破壊されているなら防具立てを殺す
execute unless block ~ ~ ~ minecraft:barrel run kill @e[tag=tea.trader_setting_allowed,distance=..0.3]

# 防具立てが生きているか確認
execute as @e[tag=tea.trader_setting_allowed,distance=..0.3] run data modify storage tea_party_trader: check_alive set value 1b
# 生きていたら無視
execute if data storage tea_party_trader: {check_alive:1b} run return fail

# 死んでいるので中身を保存(樽が先に壊されている場合は保存しない)
execute if block ~ ~ ~ minecraft:barrel run function tea_party:entity/trader_setting/store_to_storage/


# 樽を破壊
setblock ~ ~ ~ air replace

# 誉ある切腹
kill @s