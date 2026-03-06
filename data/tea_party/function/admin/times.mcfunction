# tea_party:admin/times
#
## @within tea_party:admin/settings

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"ゲーム中にゲーム設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# tellraw流し
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
tellraw @s ["",{text:"\n"},{text:"　 "},{text:"＊",bold:true,color:"gold"},{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"＊",bold:true,color:"gold"},{text:"Times",bold:true,italic:true,color:"green"}]
# time_limit
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"Time Limit →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/page1"}}]
# 2
tellraw @s ["　　",{text:"Ready Time →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/times/visible_tea_bag/page2"}}]
# 3
tellraw @s ["　　",{text:"Ship Time Limit →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/times/ship_time_limit/page3"}}]
# 4
#tellraw @s ["　　",{text:"Times →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/time_limit/page1"}}]



# 元の画面に戻る
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5