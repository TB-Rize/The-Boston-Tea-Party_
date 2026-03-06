# tea_party:entity/tasks/box/movement/tp
# 実行者はタスク荷物の本体
## @within tea_party:entity/tick

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 自身のidをスコアからデータに変換して保存
execute store result storage tea_party: tp_task_id.id int 1 run scoreboard players get @s tea.task_id

# 自分にタグ付け
tag @s add tea.task_body_temp

# 変数として用いてtp処理を行う
function tea_party:entity/tasks/box/movement/tp_macro with storage tea_party: tp_task_id

# ストレージのお掃除
data remove storage tea_party: tp_task_id

# タグのお掃除
tag @s remove tea.task_body_temp

