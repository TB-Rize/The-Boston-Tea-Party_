# tea_party:entity/tasks/box/movement/tp_macro
#
## @within tea_party:entity/tasks/box/movement/tp

# 荷物の外殻は自分に対応した荷物の本体にtp
$execute as @e[tag=tea.task_box,scores={tea.task_id=$(id)},sort=nearest,limit=1] at @n[tag=tea.task_body_temp,scores={tea.task_id=$(id)}] run tp @s ~ ~0.4 ~ 0 0

# 現在の主が荷物を持っていない状態の時、本体のtpはしない
$execute if score @a[scores={tea.task_id=$(id)},limit=1] tea.task_is_carrying matches 0 run return fail

# 持っている状態なので本体もtpする
$execute as @e[tag=tea.task_body,scores={tea.task_id=$(id)},sort=nearest,limit=1] at @a[scores={tea.task_id=$(id)},sort=nearest,limit=1] positioned ~ ~0.4 ~ run tp @s ^ ^ ^-0.4 0 0

