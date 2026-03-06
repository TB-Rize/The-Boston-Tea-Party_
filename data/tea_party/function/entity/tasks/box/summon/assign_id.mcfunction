# tea_party:/entity/tasks/box/summon/assign_id
#
## @within tea_party:/entity/tasks/box/summon/shell

# 基準値を1増やす
scoreboard players add #id_assign tea.task_id 1

# 自身にidを与える
scoreboard players operation @s tea.task_id = #id_assign tea.task_id
# 外殻にもidを
scoreboard players operation @n[tag=tea.id_unassigned,tag=tea.task_box] tea.task_id = @n[tag=tea.id_unassigned,tag=tea.task_body] tea.task_id
