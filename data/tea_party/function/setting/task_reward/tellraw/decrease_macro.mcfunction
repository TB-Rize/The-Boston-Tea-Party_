# tea_party:setting/task_reward/tellraw/decrease_macro
#
## @within tea_party/setting/task_reward/page1

# ゲームマスター以外は茶葉数設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は報酬数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在報酬数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# スコア減算
$scoreboard players remove #task$(num) tea.task_reward_amount 1
$scoreboard players operation #task$(num) tea.task_reward_amount > #0 tea.int
$execute store result storage tea_party: task_reward.$(num) int 1 run scoreboard players get #task$(num) tea.task_reward_amount

# 設定の続きをさせる
$scoreboard players set #tea_party:setting/task_reward/tellraw/decrease_macro tea.info $(num)
execute if score #tea_party:setting/task_reward/tellraw/decrease_macro tea.info matches 1..5 run function tea_party:setting/task_reward/page1
execute if score #tea_party:setting/task_reward/tellraw/decrease_macro tea.info matches 6..10 run function tea_party:setting/task_reward/page2


scoreboard players set #tea_party:setting/task_reward/tellraw/decrease_macro tea.info -1

# ↑ファイル名を格納先の名前にしているのは頭がおかしいのか！？