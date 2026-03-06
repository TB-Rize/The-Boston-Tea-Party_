# tea_party:entity/tea_bag_spawn_point/hide
#
## @within tea_party:game/start/

# 名前を見えないようにする
execute as @e[tag=tea.tea_bag_spawner] at @s run data modify entity @s CustomNameVisible set value 0b
# 姿を見えないようにする
execute as @e[tag=tea.tea_bag_spawner] at @s run data modify entity @s Invisible set value 1b