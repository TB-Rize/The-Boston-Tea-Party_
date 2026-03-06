# tea_party:player/damage/loop
#
## @within tea_party:player/damage/loop2


# デバックtellraw
#tellraw @a ["",{text:"1d "},{score:{name:"@s",objective:"tea.stored_damage"}}]
#tellraw @a ["",{text:"1h "},{score:{name:"@s",objective:"tea.stored_health"}}]

# ダメージ値が0ならもうやらなくていい
execute if score @s tea.stored_damage matches ..0 run return fail

# スコア処理
scoreboard players remove @s tea.stored_damage 1

# 既にHPが1以下だった時は死んだことにする
execute if score @s tea.stored_health matches ..1 run function tea_party:player/death

# 死人に暴行を振るう必要はない
execute if score @s tea.stored_health matches ..1 run return fail

# 自分に1のダメージ
damage @s 1 minecraft:generic
stopsound @a[distance=..5] player minecraft:entity.player.hurt
# 自身の保存されたHP値を1減らす
scoreboard players remove @s tea.stored_health 1


# 再帰
execute if score @s tea.stored_damage matches 1.. run function tea_party:player/damage/loop

# タグ付け
tag @s add tea.loop1