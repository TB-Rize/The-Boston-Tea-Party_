# tea_party:player/damage/
#
## @within tea_party:player/tick

# 10倍されているので10で割る
scoreboard players operation @s tea.damage_resisted /= #10 tea.int

# コピースコアに代入
execute store result score @s tea.stored_damage run scoreboard players get @s tea.damage_resisted
execute store result score @s tea.stored_health run scoreboard players get @s tea.health_amount
# 受けたダメージが1以上だった時再帰を実行(耐性5を外してから)
effect clear @s minecraft:resistance
execute if score @s tea.stored_damage matches 1.. run function tea_party:player/damage/loop2

# タグ消し
tag @s remove tea.loop1
# 元に戻しておく
scoreboard players set @s tea.damage_resisted 0
effect give @s minecraft:resistance infinite 4 true