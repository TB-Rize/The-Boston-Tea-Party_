# tea_party:player/dequip
#
## @within

# 極地に空気しか入ってない水色シュルカーボックスを配置
execute in minecraft:overworld run setblock 1000000 5 1000001 minecraft:light_blue_shulker_box

# もともと装備していたものをインベントリに返すことにする
data modify storage tea_party: temp.de.head set from entity @s equipment.head
data modify storage tea_party: temp.de.chest set from entity @s equipment.chest
data modify storage tea_party: temp.de.legs set from entity @s equipment.legs
data modify storage tea_party: temp.de.feet set from entity @s equipment.feet

# 何もなかったら空気に
execute unless data entity @s equipment.head run data modify storage tea_party: temp.de.head set value {id:"minecraft:air",Count:1b}
execute unless data entity @s equipment.chest run data modify storage tea_party: temp.de.chest set value {id:"minecraft:air",Count:1b}
execute unless data entity @s equipment.legs run data modify storage tea_party: temp.de.legs set value {id:"minecraft:air",Count:1b}
execute unless data entity @s equipment.feet run data modify storage tea_party: temp.de.feet set value {id:"minecraft:air",Count:1b}

# インベントリに返還
execute in minecraft:overworld run data modify block 1000000 5 1000001 Items append from storage tea_party: temp.de.head
execute in minecraft:overworld run loot give @s mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run data modify block 1000000 5 1000001 Items append from storage tea_party: temp.de.chest
execute in minecraft:overworld run loot give @s mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run data modify block 1000000 5 1000001 Items append from storage tea_party: temp.de.legs
execute in minecraft:overworld run loot give @s mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run data modify block 1000000 5 1000001 Items append from storage tea_party: temp.de.feet
execute in minecraft:overworld run loot give @s mine 1000000 5 1000001 minecraft:debug_stick



# 空気で置換
data modify block 1000000 5 1000001 Items append value {id:"minecraft:air",Count:1b}

# 防具部位を空気に置き換える
execute in minecraft:overworld run loot replace entity @s armor.head 1 mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run loot replace entity @s armor.chest 1 mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run loot replace entity @s armor.legs 1 mine 1000000 5 1000001 minecraft:debug_stick
execute in minecraft:overworld run loot replace entity @s armor.feet 1 mine 1000000 5 1000001 minecraft:debug_stick

# データ掃除
data remove storage tea_party: temp.de

# 極地掃除
execute in minecraft:overworld run setblock 1000000 5 1000001 minecraft:air