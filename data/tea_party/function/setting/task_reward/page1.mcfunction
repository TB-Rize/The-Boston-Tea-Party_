# tea_party:setting/task_reward/page1
#
## @within tea_party:admin/settings

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は報酬数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在報酬数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail


# 設定用tellrawを流す
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊タスクによる報酬量設定 Page1＊",bold:true,underlined:true,color:"green"}]
# 1
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:1}"}},{text:"　"},{nbt:"task_reward.1",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:1}"}},{text:"　タスク1での報酬数",color:"white"}]
# 2
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:2}"}},{text:"　"},{nbt:"task_reward.2",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:2}"}},{text:"　タスク2での報酬数",color:"white"}]
# 3
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:3}"}},{text:"　"},{nbt:"task_reward.3",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:3}"}},{text:"　タスク3での報酬数",color:"white"}]
# 4
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:4}"}},{text:"　"},{nbt:"task_reward.4",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:4}"}},{text:"　タスク4での報酬数",color:"white"}]
# 5
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/decrease_macro {num:5}"}},{text:"　"},{nbt:"task_reward.5",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/tellraw/increase_macro {num:5}"}},{text:"　タスク5での報酬数",color:"white"}]


# すぐゲーム開始にいけるようにする
tellraw @s ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Go Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]

# 次のページか、戻るか
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,italic:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}},{text:"　　"},{text:"　Page2→　",bold:true,italic:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/page2"}}]



# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5