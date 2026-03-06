# tea_party:entity/tea_bag/summon_macro
# 実行者は茶葉置き場の配置用防具立て
## @within tea_party:entity/tea_bag/summon_shell


# 茶葉の本体召喚
# ダートマス号の場合
execute if entity @s[tag=tea.spawn_dartmouth] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.tea_bag_body","tea.tea_bag_dartmouth"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}

# エレノア号の場合
execute if entity @s[tag=tea.spawn_eleanor] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.tea_bag_body","tea.tea_bag_eleanor"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}

# ビーバー号の場合
execute if entity @s[tag=tea.spawn_beaver] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.tea_bag_body","tea.tea_bag_beaver"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}

# 茶葉の外殻を召喚
summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.tea_bag","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:barrel"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.8f, 0.8f, 0.8f]}}

#summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.tea_bag_body"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}

# $say $(x)
# スコアを親と同期させる
$execute as @n[tag=tea.id_unassigned,tag=tea.tea_bag] run scoreboard players set @s tea.tea_bag_id $(x)
$execute as @n[tag=tea.id_unassigned,tag=tea.tea_bag_body] run scoreboard players set @s tea.tea_bag_id $(x)
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag] run tag @s add tea.id_assigned
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag] run tag @s remove tea.id_unassigned
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag_body] run tag @s add tea.id_assigned
execute as @e[tag=tea.id_unassigned,tag=tea.tea_bag_body] run tag @s remove tea.id_unassigned

