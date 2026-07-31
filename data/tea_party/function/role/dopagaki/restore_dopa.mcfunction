# tea_party:role/dopagaki/restore_dopa
#
## @within tea_party:

# ゲーム外なら処理をしない
execute if data storage tea_party: {Ingame:0b} run return fail

# ドパガキでないならこの処理は不要
execute unless entity @s[tag=tea.role_dopagaki] run return fail

# ドパ値を回復する
scoreboard players set @s[tag=tea.role_dopagaki] tea.dopagaki_value 60

# バフを与える
effect give @s minecraft:speed 5 4 true

# ドパチェッカーを与える
loot give @s loot tea_party:dopa_checker

# ドパ値が60を超えたのなら60にする
scoreboard players operation @s tea.dopagaki_value < #60 tea.int