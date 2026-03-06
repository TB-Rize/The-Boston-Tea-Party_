# tea_party:entity/tea_bag/movement/tp_macro
#
## @within tea_party:entity/tea_bag/movement/tp

# 茶葉は自分に対応した茶葉の本体にtp
$execute as @e[tag=tea.tea_bag,scores={tea.tea_bag_id=$(id)},sort=nearest,limit=1] at @n[tag=tea.tea_bag_body_temp,scores={tea.tea_bag_id=$(id)}] run tp @s ~ ~0.4 ~ 0 0

# 現在の主が茶葉を持っていない状態の時、本体のtpはしない
$execute if score @a[scores={tea.tea_bag_having_id=$(id)},limit=1] tea.tea_bag_is_carrying matches 0 run return fail

# 持っている状態なので本体もtpする
$execute as @e[tag=tea.tea_bag_body,scores={tea.tea_bag_id=$(id)},sort=nearest,limit=1] at @a[scores={tea.tea_bag_having_id=$(id)},sort=nearest,limit=1] positioned ~ ~0.4 ~ run tp @s ^ ^ ^-0.4 0 0

