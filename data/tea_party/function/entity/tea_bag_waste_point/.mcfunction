# tea_party:entity/tea_bag_waste_point/
#
## @within tea_party:entity/tick

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 茶葉を持っていてかつしゃがんでいてかつ廃棄地点半径2以内にいるプレイヤーがいたら関数を実行
execute as @a[scores={tea.tea_bag_is_carrying=1},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tea_bag_waste_point/waste