# tea_party:item/weapon/muskets/reload/4
#
## @within tea_party:item/weapon/muskets/reload/

# 弾丸の挿入を担当
# スコアに応じて音を鳴らすだけ

# もぞもぞする
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 8 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 12 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 16 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1

# 弾丸を込める
execute if score @s tea.musket_reload matches 20 run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 0.2 2

# さらなるもぞもぞ
execute if score @s tea.musket_reload matches 24 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1
execute if score @s tea.musket_reload matches 28 run playsound minecraft:block.moss.break master @s ~ ~ ~ 1 1

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 34 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2



# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
item modify entity @s weapon.mainhand tea_party:musket/reload5
#playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2