# tea_party:game/start/scores
#
## @within tea_party:game/start/

# 行数が多いので分離した
scoreboard players set @a tea.tea_bag_having_id -1
scoreboard players set @s tea.stored_health 20
execute store result score #dartmouth_InGame tea.tea_bag_number run scoreboard players get #dartmouth tea.tea_bag_number
execute store result score #eleanor_InGame tea.tea_bag_number run scoreboard players get #eleanor tea.tea_bag_number
execute store result score #beaver_InGame tea.tea_bag_number run scoreboard players get #beaver tea.tea_bag_number
#scoreboard players set @s tea.tea_bag_is_carrying 0

# タスク報酬関連
execute store result score #game_task1 tea.task_reward_amount run scoreboard players get #task1 tea.task_reward_amount
execute store result score #game_task2 tea.task_reward_amount run scoreboard players get #task2 tea.task_reward_amount
execute store result score #game_task3 tea.task_reward_amount run scoreboard players get #task3 tea.task_reward_amount
execute store result score #game_task4 tea.task_reward_amount run scoreboard players get #task4 tea.task_reward_amount
execute store result score #game_task5 tea.task_reward_amount run scoreboard players get #task5 tea.task_reward_amount
execute store result score #game_task6 tea.task_reward_amount run scoreboard players get #task6 tea.task_reward_amount
execute store result score #game_task7 tea.task_reward_amount run scoreboard players get #task7 tea.task_reward_amount
execute store result score #game_task8 tea.task_reward_amount run scoreboard players get #task8 tea.task_reward_amount
execute store result score #game_task9 tea.task_reward_amount run scoreboard players get #task9 tea.task_reward_amount
execute store result score #game_task10 tea.task_reward_amount run scoreboard players get #task10 tea.task_reward_amount

