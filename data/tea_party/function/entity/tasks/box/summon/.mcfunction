# tea_party:/entity/tasks/box/summon/
# 実行者 : タスクスポーン位置アマスタ
## @within tea_party:item/tools/tea_bag_rope/used

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 別に分ける必要がなかったことが判明
function tea_party:entity/tasks/box/summon/shell