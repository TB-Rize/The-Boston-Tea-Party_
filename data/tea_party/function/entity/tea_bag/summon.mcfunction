# tea_party:entity/tea_bag/summon
#
## @within tea_party:game/ingame/allow_attack

# すべての茶葉スポナーに対してidを割り振る
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag_spawner,sort=random,limit=1] run function tea_party:entity/tea_bag/assign_id

# idが割り振られた茶葉スポナーに対して茶葉を召喚を行わせる
execute as @e[tag=tea.id_assigned,tag=tea.tea_bag_spawner] at @s run function tea_party:entity/tea_bag/summon_shell