# tea_party:debug/get_data/player_detail/
#
## @within ???

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲームマスターでもない君が何をしようとしている？",color:"dark_red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# これを実行しようとしてもできない功名な罠
execute unless entity @s[tag=tea_debug.debug_king,scores={tea.time_limit=574,tea.int=9816}] run tellraw @s ["",{text:"あなたにこれを実行する資格はない",color:"dark_red"},{text:"\n"}]
execute unless entity @s[tag=tea_debug.debug_king,scores={tea.time_limit=574,tea.int=9816}] run return fail
# このコマンドは複数人に同時に使用されることによる脆弱性があることを認知している上で製作者は一切対策を行わないものとする
tag @a remove tea.oh_debug_man
# プレイヤー番号リセットを行った後割り振り
scoreboard players set @a tea_debug.p_num 0
scoreboard players set #debug tea_debug.p_num 0
tag @a remove tea.debug_p_num
execute as @r[tag=!tea.debug_p_num] run function tea_party:debug/get_data/player_detail/assign_num
# 誰を選ぶ
# tellraw
# タグを使いまわす
tag @s add tea.debug_man
tag @a remove tea.debug_p_num
data remove storage tea_party: debug.pd
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
execute as @a run function tea_party:debug/get_data/player_detail/tellraw
tag @s remove tea.debug_man

tag @s add tea.oh_debug_man