# tea_party:entity/tea_bag/kill
#
## @within tea_party:game/end/*

# 茶葉をkillする
execute as @e[tag=tea.tea_bag] run kill @s
execute as @e[tag=tea.tea_bag_body] run kill @s