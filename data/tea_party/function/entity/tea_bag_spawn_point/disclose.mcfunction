# tea_party:entity/tea_bag_spawn_point/disclose
#
## @within tea_party:game/end/common

# 名前を見えるようにする
execute as @e[tag=tea.tea_bag_spawner] at @s run data modify entity @s CustomNameVisible set value 1b
# 姿を見えるようにする
execute as @e[tag=tea.tea_bag_spawner] at @s run data modify entity @s Invisible set value 0b