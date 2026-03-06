# tea_party:game/ingame/waste_tea_bags
# 実行者 : 廃棄地点半径2以内でスニークしているプレイヤー
## @within tea_party:game/tick

# 茶葉を持っていないのなら帰れ
#execute as @a[tag=tea.tea_bag_carrying] run return fail

# なんでつくった？