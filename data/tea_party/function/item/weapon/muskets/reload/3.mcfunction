# tea_party:item/weapon/muskets/reload/3
#
## @within tea_party:item/weapon/muskets/reload/

# 銃口への装薬装填の処理
# スコアに応じて音を鳴らすだけ

# もぞもぞ音
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1

# 銃を縦にする
execute if score @s tea.musket_reload matches 10 run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2

# 装薬を注ぐ
execute if score @s tea.musket_reload matches 14 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 16 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 18 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 20 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 22 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1

# 残りの紙を詰める音
execute if score @s tea.musket_reload matches 30 run playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1.5

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 34 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
item modify entity @s weapon.mainhand tea_party:musket/reload4
#playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2