# tea_party:admin/
#
## @within 手動

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail


# ???????????????????????????????????????????
tag @a remove tea_debug.debug_king
execute if score @s tea_debug.int matches 1.. run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.2 1
execute if score @s tea_debug.int matches 1.. run function tea_party:debug/menu
execute if score @s tea_debug.int matches -5 run return fail
# ???????????????????????????????????????????
scoreboard players set @s tea_debug.int 10


# tellraw流し
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
tellraw @s ["",{text:"\n"},{text:"　 "},{text:"＊The Boston Tea Party＊",bold:true,italic:true,underlined:true,color:"gold"},{text:" Admin",bold:true,italic:true,underlined:true,color:"gold"}]

# settings
tellraw @s ["　　",{text:"\n"},{text:"　  "},{text:"Settings →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]

# itemgive
tellraw @s ["　　",{text:"Items →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/items"}}]

# game
tellraw @s ["　　",{text:"Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]



# 最期の一行改行
tellraw @s ["",{text:"\n"}]
# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5