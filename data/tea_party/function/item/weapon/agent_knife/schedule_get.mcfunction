# tea_party:item/weapon/agent_knife/schedule_get
#
## @within tea_party:advancement/scabbard

# itemgive
loot replace entity @a[tag=scabbard_temp] weapon.mainhand loot tea_party:weapon/knife
loot give @a[tag=scabbard_temp] loot tea_party:weapon/scabbard

# タグ外し
execute as @a[tag=scabbard_temp] run tag @s remove scabbard_temp

