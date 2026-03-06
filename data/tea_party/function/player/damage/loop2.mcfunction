# tea_party:player/damage/loop
#
## @within tea_party:player/damage


# デバックtellraw
#tellraw @a ["",{text:"2d "},{score:{name:"@s",objective:"tea.stored_damage"}}]
#tellraw @a ["",{text:"2h "},{score:{name:"@s",objective:"tea.stored_health"}}]

# ダメージ値が0ならもうやらなくていい
execute if score @s tea.stored_damage matches ..0 run return fail

# ダメージが残り1ならループ1へ
execute if score @s tea.stored_damage matches 1 run function tea_party:player/damage/loop
execute if entity @s[tag=tea.loop1] run return fail
# HPが2以下でダメージが2以上ならループ1へ
execute if score @s tea.stored_health matches ..2 if score @s tea.stored_damage matches 1.. run function tea_party:player/damage/loop

# 以下、HPは3以上かつ残りダメージは2以上確定
# スコア処理
scoreboard players remove @s tea.stored_damage 2


# 自分に2のダメージ
damage @s 2 minecraft:generic
stopsound @a[distance=..20] player minecraft:entity.player.hurt

# 自身の保存されたHP値を1減らす
scoreboard players remove @s tea.stored_health 2


# 再帰
execute if score @s tea.stored_damage matches 1.. run function tea_party:player/damage/loop2