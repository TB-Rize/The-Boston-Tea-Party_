# tea_party:entity/tasks/guide/summon_macro
#
## @within tea_party:player/1sec

# ガイド弾丸召喚
summon minecraft:marker ^ ^1 ^ {Tags:["tea.guide","tea.guide_uninitted"]}
# ガイド弾丸に向きを与える(目標物は最も近い納品場所)
#summon minecraft:marker ^ ^ ^150 {Tags:["tea.target_point"]}
$execute as @e[tag=tea.guide_uninitted] at @s run tp @s ~ ~ ~ facing entity @n[tag=tea.task$(num),tag=tea.task_waste_point,limit=1]
kill @e[tag=tea.target_point]
scoreboard players set @e[tag=tea.guide_uninitted] tea.bullet_speed 15
scoreboard players set @e[tag=tea.guide_uninitted] tea.bullet_range 15

# 即座に動かす
$execute as @e[tag=tea.guide_uninitted] at @s run function tea_party:entity/tasks/guide/move {num:$(num)}
# 初期化済み
execute as @e[tag=tea.guide_uninitted] run tag @s remove tea.guide_uninitted
