# tea_party:item/weapon/agent_knife/fear
#
## @within tea_party:advancement/scabbard

# 演出をする

# 共通処理
scoreboard players set @s halo.duration 291
tag @s add halo.black

# 工作員にはデバフをかけない
execute if entity @s[tag=tea.role_agent] run return fail
tellraw @s {text:"嫌な予感がする！",bold:true,italic:true,color:"dark_red"}
effect clear @s minecraft:speed
effect give @s minecraft:blindness 15 1 true
effect give @s minecraft:slowness 10 4 true
