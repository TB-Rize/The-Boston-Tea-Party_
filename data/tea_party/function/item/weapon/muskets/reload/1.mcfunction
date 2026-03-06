# tea_party:item/weapon/muskets/reload/1
#
## @within tea_party:item/weapon/muskets/reload/

# 火皿への装薬挿入の準備
# スコアに応じて音を鳴らすだけ

# もぞもぞする音
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 8 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 12 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1

# カートリッジを噛み切る
execute if score @s tea.musket_reload matches 20 run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1.5
execute if score @s tea.musket_reload matches 20 run playsound minecraft:entity.wither.break_block master @s ~ ~ ~ 0.2 2

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 27 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 当り金を開ける
execute if score @s tea.musket_reload matches 34 run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 0.8 2


# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
item modify entity @s weapon.mainhand tea_party:musket/reload2
#playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2