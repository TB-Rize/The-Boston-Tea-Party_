# tea_party:role/dopagaki/1sec
#
## @within tea_party:player/1sec

# ゲーム外なら処理をしない
execute if data storage tea_party: {Ingame:0b} run return fail

# ドパガキでないならこの処理は不要
execute unless entity @s[tag=tea.role_dopagaki] run return fail

# 処理本体
scoreboard players remove @s[tag=tea.role_dopagaki] tea.dopagaki_value 1
#say "ドパ値が1減少しました。"
# ドパ値が0未満なら以下は不要
execute if score @s tea.dopagaki_value matches ..-1 run return fail

# ドパ値を表示する
tellraw @s ["",{text:"現在のドパ値:",bold:true,italic:true,color:"gold"},{score:{name:"@s",objective:"tea.dopagaki_value"},bold:true,italic:true,color:"aqua"}]

# ドパ値が0になったときの処理
execute if score @s tea.dopagaki_value matches 0 run function tea_party:role/dopagaki/zero