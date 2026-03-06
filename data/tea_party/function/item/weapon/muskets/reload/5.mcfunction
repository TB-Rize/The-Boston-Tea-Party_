# tea_party:item/weapon/muskets/reload/5
#
## @within tea_party:item/weapon/muskets/reload/

# 込め矢での押し込みを担当
# スコアに応じて音を鳴らすだけ


# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2
execute if score @s tea.musket_reload matches 8 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 込め矢を持った音
execute if score @s tea.musket_reload matches 12 run playsound minecraft:item.armor.equip_generic master @s ~ ~ ~ 0.8 1

# 込め矢で詰める音
execute if score @s tea.musket_reload matches 20 run playsound minecraft:block.wool.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 28 run playsound minecraft:block.wool.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 36 run playsound minecraft:block.wool.place master @s ~ ~ ~ 0.8 1


# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
item modify entity @s weapon.mainhand tea_party:musket/reload6
#playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2