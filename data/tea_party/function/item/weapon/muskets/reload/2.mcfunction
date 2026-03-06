# tea_party:item/weapon/muskets/reload/2
#
## @within tea_party:item/weapon/muskets/reload/

# 火皿への装薬装填本体の処理
# スコアに応じて音を鳴らすだけ

# 装薬を注ぐ
execute if score @s tea.musket_reload matches 2 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 6 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 8 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 10 run playsound minecraft:block.sand.place master @s ~ ~ ~ 0.8 1

# 当り金を閉める
execute if score @s tea.musket_reload matches 17 run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 0.8 2

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 20 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 26 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 36 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2


# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
item modify entity @s weapon.mainhand tea_party:musket/reload3
#playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2