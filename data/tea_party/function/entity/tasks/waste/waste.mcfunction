# tea_party:entity/tasks/waste/waste
# 実行者 : 荷物を掴んでいるプレイヤー
## @within tea_party:entity/tasks/waste/



# 実行者タグ付与
tag @s add tea.waste_task_temp
# 実行者が今持っている荷物idとタスク番号を取得
execute store result storage tea_party: tea.waste_task_id.id int 1 run scoreboard players get @s tea.task_id
execute store result storage tea_party: tea.waste_task_id.num int 1 run scoreboard players get @s tea.task_num

# マクロを実行
function tea_party:entity/tasks/waste/waste_macro with storage tea_party: tea.waste_task_id

# ストレージのお掃除
data remove storage tea_party: tea.waste_task_id

# タグのお掃除
tag @s remove tea.waste_task_temp