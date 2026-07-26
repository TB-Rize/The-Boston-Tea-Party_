# tea_party:role/dopagaki/restore_dopa
#
## @within tea_party:

# ゲーム外なら処理をしない
execute if data storage tea_party: {Ingame:0b} run return fail

# ドパガキでないならこの処理は不要
execute unless entity @s[tag=tea.role_dopagaki] run return fail

# ドパ値を回復する
scoreboard players set @s[tag=tea.role_dopagaki] tea.dopagaki_value 60

scoreboard players operation @s tea.dopagaki_value < #60 tea.int