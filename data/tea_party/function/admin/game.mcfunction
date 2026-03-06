# tea_party:admin/game
#
## @within tea_party:admin/

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# tellraw流し
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
tellraw @s ["　　",{text:"\n"},{text:"　 "},{text:"＊",bold:true,color:"gold"},{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"＊",bold:true,color:"gold"},{text:"Game",bold:true,italic:true,color:"green"}]
# ゲームスタート(のちにカウントダウンの方に切り替える)
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"Game Start!",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:game/start/countdown/"}}]
# ゲーム中断
tellraw @s ["　　",{text:"Game Stop",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:game/stop/"}}]


# 元の画面に戻る
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/"}}]
# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5