# tea_party:admin/settings
#
## @within tea_party:admin/

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"ゲーム中にゲーム設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# tellraw流し
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
tellraw @s ["",{text:"\n"},{text:"　 "},{text:"＊",bold:true,color:"gold"},{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"＊",bold:true,color:"gold"},{text:"Settings",bold:true,italic:true,color:"green"}]
# role
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"Role →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/role/"}}]
# tea_bag_amount
tellraw @s ["　　",{text:"Tea Bag Amounts →",bold:true,underlined:true,color:"yellow",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/"}}]
# task_reward
tellraw @s ["　　",{text:"Task Rewards →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:setting/task_reward/page1"}}]
# times
tellraw @s ["　　",{text:"Times →",bold:true,underlined:true,color:"yellow",click_event:{action:"run_command",command:"/function tea_party:admin/times"}}]

# delete_armor_stand
tellraw @s ["　　",{text:"Delete Armor Stand →",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:common/confirm {pre_func:'tea_party:admin/settings',func:'tea_party:entity/kill_all_armor_stand',func_name:'当データパックに関わる全ての防具立ての削除'}"}}]



# 元の画面に戻る
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5