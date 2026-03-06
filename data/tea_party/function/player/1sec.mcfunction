# tea_party:player/1sec
#
## @within tea_party:tick

# スコアリセット
scoreboard players set @s tea.for_1sec 0

# このコマンドはプレイヤーが1秒ごとに実行している
# 僕です
tag @s add tea.task_guide_temp
# タスク納品場所案内
    # 持ってるタスク番号を保存し、マクロを実行(タスクを持っていないならやらない)
    execute store result storage tea_party: task_guide.num int 1 run scoreboard players get @s tea.task_num
    execute unless score @s tea.task_num matches -1 run function tea_party:entity/tasks/guide/summon_macro with storage tea_party: task_guide
    data remove storage tea_party: task_guide.num

# タグを外す
tag @s remove tea.task_guide_temp