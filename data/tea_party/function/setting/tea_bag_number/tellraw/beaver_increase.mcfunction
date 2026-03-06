# tea_party:setting/tea_bag_number/tellraw/beaver_increase
#
## @within tea_party:setting/tea_bag_number/

# ゲームマスター以外は茶葉数設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は茶葉数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在茶葉数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# スコアを1増やす
scoreboard players add #beaver tea.tea_bag_number 1

# スコアをデータ化
execute store result storage tea_party: tea_bags.count.beaver int 1 run scoreboard players get #beaver tea.tea_bag_number

# 設定の続きをさせる
function tea_party:setting/tea_bag_number/

