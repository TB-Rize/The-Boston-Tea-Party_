# tea_party:entity/tasks/kill
#
## @within tea_party:game/end/*

# 茶葉をkillする
execute as @e[tag=tea.task_box] run kill @s
execute as @e[tag=tea.task_body] run kill @s