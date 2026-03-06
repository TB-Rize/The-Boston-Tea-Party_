# tea_party:player/swaphand
#
## @within tea_party:player/tick
# 手動実行可能

# 極地に水色シュルカーボックスを配置
execute in minecraft:overworld run setblock 1000000 -5 1000001 minecraft:light_blue_shulker_box

# メインハンドに持っている物をストレージに保存
data modify storage tea_party: swap_temp.selected set from entity @s SelectedItem
# メインハンドが空なら空気にしておく
execute unless data entity @s SelectedItem run data modify storage tea_party: swap_temp.selected set value {id:"minecraft:air",Count:1b}
# 左手のアイテムをストレージに保存する
data modify storage tea_party: swap_temp.offhand set from entity @s equipment.offhand
# 左手が空なら空気にしておく
execute unless data entity @s equipment.offhand run data modify storage tea_party: swap_temp.offhand set value {id:"minecraft:air",Count:1b}

# 右手のものを左手のものに置き換える
execute in minecraft:overworld run data modify block 1000000 -5 1000001 Items append from storage tea_party: swap_temp.offhand
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 1000000 -5 1000001 minecraft:debug_stick

# 左手のものを右手のものに置き換える
execute in minecraft:overworld run data modify block 1000000 -5 1000001 Items append from storage tea_party: swap_temp.selected
execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 1000000 -5 1000001 minecraft:debug_stick

# 極地のお掃除
execute in minecraft:overworld run setblock 1000000 -5 1000001 minecraft:air

# ストレージのお掃除
data remove storage tea_party: swap_temp

# 左手に不死のトーテムが入ってしまった場合の想定(無限再帰が発生する可能性があるため停止中)
#function tea_party:banoffhand/totem_of_undiying/