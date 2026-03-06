# tea_party:entity/tasks/waste/waste_macro
# 実行者 : プレイヤー
## @within tea_party:entity/tasks/waste/waste

#$execute as @e[tag=tea.task_body,scores={tea.task_id=$(id)},limit=1] if entity @s[tag=tea.box_task1] run 

# tellrawを流す
tellraw @s ["",{text:"　 ＊タスク ",bold:true,italic:true,color:"green"},{nbt:"tea.waste_task_id.num",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:" を完了しました",bold:true,italic:true,color:"green"}]

# 音も鳴らす
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.6 1.2

# 荷物本体と外殻をキル
$execute as @e[tag=tea.task_box,scores={tea.task_id=$(id)}] run kill @s
$execute as @e[tag=tea.task_body,scores={tea.task_id=$(id)}] run kill @s

# 報酬を渡す
$execute if score @s tea.task_num matches $(num) store result score @s tea.task_reward_amount run scoreboard players get #game_task$(num) tea.task_reward_amount
#store result storage tea_party: task_reward_amount int 1 run scoreboard players get #game_task$(num) tea.task_reward_amount
function tea_party:entity/tasks/reward/


# 荷物からは手を放していることになるのでrelease関数を出す
function tea_party:item/tools/task_rope/released

