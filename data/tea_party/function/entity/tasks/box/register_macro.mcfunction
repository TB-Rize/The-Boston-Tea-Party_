# tea_party:entity/tasks/box/register_macro
# 実行者 : タスク貨物(idによる振り分け済み)
## @within tea_party:entity/tea_bag/register


# 音鳴らし
playsound minecraft:item.armor.equip_leather master @a[tag=tea.temp] ~ ~ ~ 2

# 既に持っている奴がいるなら奪い取ることにする
$execute as @a[scores={tea.task_id=$(id)}] run function tea_party:item/tools/task_rope/released

# ロープ実行者と茶葉をidで紐づける　ロープだけに（笑）
$scoreboard players set @a[tag=tea.temp] tea.task_id $(id)
scoreboard players set @a[tag=tea.temp] tea.task_is_carrying 1

# タスク番号を割り振る
execute if entity @s[tag=tea.box_task1] run scoreboard players set @a[tag=tea.temp] tea.task_num 1
execute if entity @s[tag=tea.box_task2] run scoreboard players set @a[tag=tea.temp] tea.task_num 2
execute if entity @s[tag=tea.box_task3] run scoreboard players set @a[tag=tea.temp] tea.task_num 3
execute if entity @s[tag=tea.box_task4] run scoreboard players set @a[tag=tea.temp] tea.task_num 4
execute if entity @s[tag=tea.box_task5] run scoreboard players set @a[tag=tea.temp] tea.task_num 5
execute if entity @s[tag=tea.box_task6] run scoreboard players set @a[tag=tea.temp] tea.task_num 6
execute if entity @s[tag=tea.box_task7] run scoreboard players set @a[tag=tea.temp] tea.task_num 7
execute if entity @s[tag=tea.box_task8] run scoreboard players set @a[tag=tea.temp] tea.task_num 8
execute if entity @s[tag=tea.box_task9] run scoreboard players set @a[tag=tea.temp] tea.task_num 9
execute if entity @s[tag=tea.box_task10] run scoreboard players set @a[tag=tea.temp] tea.task_num 10