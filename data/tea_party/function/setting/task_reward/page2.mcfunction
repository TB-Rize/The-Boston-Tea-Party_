# tea_party:setting/task_reward/page2
#
## @within tea_party:setting/task_reward/page1

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は報酬数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在報酬数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊タスクによる報酬量設定 Page2＊",bold:true,underlined:true,color:"green"}]

# 6
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:6}"}},{text:"　"},{nbt:"task_reward.6",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:6}"}},{text:"　タスク6での報酬数",color:"white"}]
# 7
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:7}"}},{text:"　"},{nbt:"task_reward.7",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:7}"}},{text:"　タスク7での報酬数",color:"white"}]
# 8
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:8}"}},{text:"　"},{nbt:"task_reward.8",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:8}"}},{text:"　タスク8での報酬数",color:"white"}]
# 9
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:9}"}},{text:"　"},{nbt:"task_reward.9",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:9}"}},{text:"　タスク9での報酬数",color:"white"}]
# 10
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:10}"}},{text:"　"},{nbt:"task_reward.10",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:10}"}},{text:"　タスク10での報酬数",color:"white"}]

# 戻るか
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/page1"}}]
# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5