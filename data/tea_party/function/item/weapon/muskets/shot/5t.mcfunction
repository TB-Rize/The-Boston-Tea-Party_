# tea_party:item/weapon/muskets/shot/5t
# 実際の弾丸発射処理
## @within tea_party:player/tick

# 音鳴らし
function tea_party:item/weapon/muskets/shot/sounds/5t


# 弾丸召喚
execute positioned ~ ~1.4 ~ run summon minecraft:marker ^-0.18 ^0.2 ^0.4 {Tags:["tea.bullet","tea.bullet_uninitted"]}

# 弾丸に向きを与える(弾丸とは別の目標物を目線150m先に召喚してそれに向かせる)
summon minecraft:marker ^ ^ ^150 {Tags:["tea.target_point"]}
execute as @e[tag=tea.bullet_uninitted] at @s run tp @s ~ ~ ~ facing entity @e[tag=tea.target_point,limit=1,sort=random]
kill @e[tag=tea.target_point]
scoreboard players set @e[tag=tea.bullet_uninitted] tea.bullet_speed 100
scoreboard players set @e[tag=tea.bullet_uninitted] tea.bullet_range 200


# 打った瞬間の弾に撃たれないように2tickの間弾丸耐性を与える
scoreboard players set @s tea.bullet_resist 6
# 初期化済み
execute as @e[tag=tea.bullet_uninitted] run tag @s remove tea.bullet_uninitted
# 弾丸発射を行ったプレイヤー(@s)の攻撃と認識させる(できるのならば)



