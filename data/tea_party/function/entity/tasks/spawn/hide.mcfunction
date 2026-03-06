# tea_party:entity/tasks/spawn/hide
#
## @within tea_party:game/start/

# 名前を見えないようにする
#execute as @e[tag=tea.task_spawner] at @s run data modify entity @s CustomNameVisible set value 0b
# 姿を見えないようにする
execute as @e[tag=tea.task_spawner] at @s run data modify entity @s Invisible set value 1b