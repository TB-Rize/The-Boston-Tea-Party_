# tea_party:entity/tea_bag/register
# 実行者　茶葉
## @within tea_party:item/tools/tea_bag_rope/used

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 自身のidをスコアからデータに変換して保存(tp機構から流用したため変数名もほぼ同じ)
execute store result storage tea_party: register_tea_bag_id.id int 1 run scoreboard players get @s tea.tea_bag_id

# マクロを実行
function tea_party:entity/tea_bag/register_macro with storage tea_party: register_tea_bag_id

# ストレージのお掃除
data remove storage tea_party: register_tea_bag_id
