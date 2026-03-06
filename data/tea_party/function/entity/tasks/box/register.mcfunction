# tea_party:entity/tasks/box/register
# 実行者 : タスク貨物
## @within tea_party:item/tools/task_rope/used

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 自身のidをスコアからデータに変換して保存
execute store result storage tea_party: register_task_id.id int 1 run scoreboard players get @s tea.task_id

# マクロを実行
function tea_party:entity/tasks/box/register_macro with storage tea_party: register_task_id

# ストレージのお掃除
data remove storage tea_party: register_task_id
