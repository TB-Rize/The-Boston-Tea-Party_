# tea_party:entity/tea_bag/assign_id
#
## @within tea_party:entity/tea_bag/summon

# 基準値を1増やす
scoreboard players add #id_assign tea.tea_bag_id 1

# 自身にidを与える
scoreboard players operation @s tea.tea_bag_id = #id_assign tea.tea_bag_id

# タグ付け
tag @s add tea.id_assigned
tag @s remove tea.id_unassigned

# 次の奴へどうぞ
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag_spawner,sort=random,limit=1] run function tea_party:entity/tea_bag/assign_id