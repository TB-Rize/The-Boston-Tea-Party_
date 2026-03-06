# tea_party:entity/tea_bag/summon_shell
#
## @within tea_party:entity/tea_bag/summon

# 自身のidをスコアからデータに変換して保存
execute store result storage tea_party: summon_id_holder.x int 1 run scoreboard players get @s tea.tea_bag_id

# データを変数として用いて召喚を行う
function tea_party:entity/tea_bag/summon_macro with storage tea_party: summon_id_holder

# もういらないのでストレージを削除
data remove storage tea_party: summon_id_holder