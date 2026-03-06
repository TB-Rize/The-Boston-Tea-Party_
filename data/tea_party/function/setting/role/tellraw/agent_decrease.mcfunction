# tea_party:setting/role/tellraw/agent_decrease
#
## @within tea_party:setting/role/

# ゲームマスター以外は役職数設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は役職数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在役職数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail


# 役職数を1減らす
scoreboard players remove #agent tea.use_role 1
scoreboard players operation #agent tea.use_role > #0 tea.int
# 設定の続きをさせる
function tea_party:setting/role/

