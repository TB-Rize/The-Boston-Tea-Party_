# tea_party:entity/tea_bag_waste_point/waste
# 実行者 : 茶葉を掴んでいるプレイヤー
## @within tea_party:entity/tea_bag_waste_point/

# 実行者タグ付与
tag @s add tea.waste_tea_bag_temp
# 実行者が今持っている茶葉idを取得
execute store result storage tea_party: tea.waste_tea_bag_id.id int 1 run scoreboard players get @s tea.tea_bag_having_id

# マクロを実行
function tea_party:entity/tea_bag_waste_point/waste_macro with storage tea_party: tea.waste_tea_bag_id

# ストレージのお掃除
data remove storage tea_party: tea.waste_tea_bag_id

tag @s remove tea.waste_tea_bag_temp