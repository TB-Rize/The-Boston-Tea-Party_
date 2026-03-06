# tea_party:item/replace
# データに記憶させていたものをreplaceさせる
## @within tea_party:item/tea_bag_spawn_point/give

# 極地に水色シュルカーボックスを配置
execute in minecraft:overworld run setblock 1000000 3 1000001 minecraft:light_blue_shulker_box

# 与えられた変数に基づき置き換え
$execute in minecraft:overworld run data modify block 1000000 3 1000001 Items append value $(temp)
execute in minecraft:overworld run loot replace entity @s weapon.mainhand mine 1000000 3 1000001 minecraft:debug_stick

# 極地のお掃除
execute in minecraft:overworld run setblock 1000000 3 1000001 minecraft:air

