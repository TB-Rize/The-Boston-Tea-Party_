# tea_party:entity/tasks/reward/
#
## @within tea_party:entity/tasks/waste/waste_macro

# 残り報酬量が0なら帰れ
execute if score @s tea.task_reward_amount matches ..0 run return fail

# スコアを1減らす
scoreboard players remove @s tea.task_reward_amount 1

# 報酬を与える
loot give @s loot tea_party:10uk_pound


# 再帰
execute if score @s tea.task_reward_amount matches 1.. run function tea_party:entity/tasks/reward/