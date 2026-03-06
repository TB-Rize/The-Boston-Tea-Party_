# halo:p_tick
#
## @within halo:tick



# ヘイロー処理
scoreboard players remove @s halo.duration 1
execute if score @s halo.duration matches 1 run tag @s remove halo.black




# ヘイローを表示
execute unless predicate halo:is_sneaking if entity @s[tag=halo.aqua,gamemode=!spectator] positioned ~ ~1.4 ~ run function halo:color/aqua
execute if predicate halo:is_sneaking if entity @s[tag=halo.aqua,gamemode=!spectator] positioned ~ ~1 ~ run function halo:color/aqua
execute unless predicate halo:is_sneaking if entity @s[tag=halo.red,gamemode=!spectator] positioned ~ ~1.4 ~ run function halo:color/red
execute if predicate halo:is_sneaking if entity @s[tag=halo.red,gamemode=!spectator] positioned ~ ~1 ~ run function halo:color/red
execute unless predicate halo:is_sneaking if entity @s[tag=halo.green,gamemode=!spectator] positioned ~ ~1.4 ~ run function halo:color/green
execute if predicate halo:is_sneaking if entity @s[tag=halo.green,gamemode=!spectator] positioned ~ ~1 ~ run function halo:color/green
execute unless predicate halo:is_sneaking if entity @s[tag=halo.yellow,gamemode=!spectator] positioned ~ ~1.4 ~ run function halo:color/yellow
execute if predicate halo:is_sneaking if entity @s[tag=halo.yellow,gamemode=!spectator] positioned ~ ~1 ~ run function halo:color/yellow
execute unless predicate halo:is_sneaking if entity @s[tag=halo.black,gamemode=!spectator] positioned ~ ~1.4 ~ run function halo:color/black
execute if predicate halo:is_sneaking if entity @s[tag=halo.black,gamemode=!spectator] positioned ~ ~1 ~ run function halo:color/black

#particle dust_color_transition{from_color:[0,0.98,1],to_color:[0,0.98,1],scale:0.3} ~ ~1.1 ~1 0 0 0 0 1 force @a[distance=..120]