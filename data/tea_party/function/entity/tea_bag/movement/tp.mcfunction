# tea_party:entity/tea_bag/movement/tp
# 実行者は茶葉の本体
## @within tea_party:entity/tick

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 自身のidをスコアからデータに変換して保存
execute store result storage tea_party: tp_tea_bag_id.id int 1 run scoreboard players get @s tea.tea_bag_id

# 自分にタグ付け
tag @s add tea.tea_bag_body_temp

# 変数として用いてtp処理を行う
function tea_party:entity/tea_bag/movement/tp_macro with storage tea_party: tp_tea_bag_id

# ストレージのお掃除
data remove storage tea_party: tp_tea_bag_id

# タグのお掃除
tag @s remove tea.tea_bag_body_temp

