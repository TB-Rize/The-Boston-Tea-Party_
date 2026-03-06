# tea_party:entity/tasks/box/summon/shell
#
## @within tea_party:entity/tasks/box/summon/

# 本体と外殻を召喚し、それらにID割り振りを行う

# 本体を召喚
execute if entity @s[tag=tea.task1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task1"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task2"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task3] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task3"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task4] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task4"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task5] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task5"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task6] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task6"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task7] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task7"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task8] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task8"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task9] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task9"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
execute if entity @s[tag=tea.task10] run summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.task_body","tea.box_task10"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}

# 外殻を召喚(贅沢なバリエーションを付ける)
execute if entity @s[tag=tea.task1] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:chest"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task2] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:cauldron"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task3] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:composter"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task4] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:beehive"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task5] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:loom"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task6] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:stonecutter"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task7] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:exposed_copper"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task8] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:brown_shulker_box"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task9] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:green_shulker_box"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}
execute if entity @s[tag=tea.task10] run summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.task_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:cyan_shulker_box"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [0.7f, 0.7f, 0.7f]}}

# 本体にassign_idを実行させる　
execute as @n[tag=tea.id_unassigned,tag=tea.task_body] run function tea_party:entity/tasks/box/summon/assign_id



# 本体にregisterを実行させる
execute as @n[tag=tea.id_unassigned,tag=tea.task_body] run function tea_party:entity/tasks/box/register

# 本体と外殻のタグ外し
execute as @e[tag=tea.id_unassigned,tag=tea.task_box] run tag @s add tea.id_assigned
execute as @e[tag=tea.id_unassigned,tag=tea.task_box] run tag @s remove tea.id_unassigned
execute as @e[tag=tea.id_unassigned,tag=tea.task_body] run tag @s add tea.id_assigned
execute as @e[tag=tea.id_unassigned,tag=tea.task_body] run tag @s remove tea.id_unassigned