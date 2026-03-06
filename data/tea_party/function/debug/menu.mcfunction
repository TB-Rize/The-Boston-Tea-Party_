# tea_party:debug/menu
#
## @within tea_party:admin/

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲームマスターでもない君が何をしようとしている？",color:"dark_red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲームマスターでもこれを開くのには資格が必要
execute unless score @s tea_debug.int matches 1.. run tellraw @s {text:"あなたにこれを実行する資格はない",bold:true,italic:true,color:"dark_red"}
execute unless score @s tea_debug.int matches 1.. run return fail

# 条件に合格したので専用人処理をしてあげる
tag @a remove tea_debug.debug_king
scoreboard players reset @a tea.time_limit
scoreboard players reset @a tea.int
tag @s add tea_debug.debug_king
# なんと、ここにきてプレイヤーがタイムリミットスコアと整数スコアを持つというびっくり要素
scoreboard players set @s tea.time_limit 574
scoreboard players set @s tea.int 9816

# tellraw流し
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
tellraw @s ["",{text:"\n"},{text:"　 "},{text:"＊The Boston Tea Party＊",bold:true,italic:true,underlined:true,color:"gold"},{text:" DEBUG MENU ",bold:true,italic:true,underlined:true,color:"dark_red"}]

# Player Data
tellraw @s ["　　",{text:"\n"},{text:"　  "},{text:"Player Data →",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:debug/get_data/player_detail/"}}]

# Stop Game
tellraw @s ["　　",{text:"Stop Game →",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:game/stop/"}}]

# Release ALL
tellraw @s ["　　",{text:"Drop ALL →",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:debug/release_all"}}]

# Cheat(未開発)
tellraw @s ["　　",{text:"Cheat →",bold:true,underlined:true,color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]

# 元の画面に戻る
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/"}}]





# スコアをリセット
scoreboard players set @a tea_debug.int -5