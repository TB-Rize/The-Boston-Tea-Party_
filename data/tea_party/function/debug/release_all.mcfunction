# tea_party:debug/release_all
#
## @within tea_party:debug/menu

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲームマスターでもない君が何をしようとしている？",color:"dark_red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# これを実行しようとしてもできない功名な罠
execute unless entity @s[tag=tea_debug.debug_king,scores={tea.time_limit=574,tea.int=9816}] run tellraw @s ["",{text:"あなたにこれを実行する資格はない",color:"dark_red"},{text:"\n"}]
execute unless entity @s[tag=tea_debug.debug_king,scores={tea.time_limit=574,tea.int=9816}] run return fail

# 茶葉及びタスクを全員から落とす
execute as @a at @s run function tea_party:item/tools/task_rope/released
execute as @a at @s run function tea_party:item/tools/released