# tea_party:item/tea_bag_spawn_point/give
#
## @within tea_party:admin/items

# ゲーム中に実行できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"ゲーム中にそのアイテムを与えることはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# 古い茶葉スポーナーは手元から削除
clear @s minecraft:armor_stand[minecraft:custom_data~{tea.tea_bag_spawner:1b}]
# 元から持っていたものを記憶させる
data modify storage tea_party: temp.selected_1.temp set from entity @s SelectedItem
execute unless data entity @s SelectedItem run data modify storage tea_party: temp.selected_1.temp set value {id:"minecraft:air",Count:1b}

#function tea_party:item/regive
# ダートマス号用茶葉スポーン位置の付与及び設置数の設定
loot replace entity @s weapon.mainhand loot tea_party:spawnpoint_tea_bag_in_dartmouth
item modify entity @s weapon.mainhand tea_party:tea_bag_spawn_point/set_lore_dartmouth
data modify storage tea_party: temp.selected_2.temp set from entity @s SelectedItem

# エレノア号用茶葉スポーン位置の付与及び設置数の設定
loot replace entity @s weapon.mainhand loot tea_party:spawnpoint_tea_bag_in_eleanor
item modify entity @s weapon.mainhand tea_party:tea_bag_spawn_point/set_lore_eleanor
data modify storage tea_party: temp.selected_3.temp set from entity @s SelectedItem

# ビーバー号用茶葉スポーン位置の付与及び設置数の設定
loot replace entity @s weapon.mainhand loot tea_party:spawnpoint_tea_bag_in_beaver
item modify entity @s weapon.mainhand tea_party:tea_bag_spawn_point/set_lore_beaver
data modify storage tea_party: temp.selected_4.temp set from entity @s SelectedItem

# 持っていたアイテムを戻しつつスポーン位置アイテムを付与
function tea_party:item/replace with storage tea_party: temp.selected_1
function tea_party:item/regive with storage tea_party: temp.selected_2
function tea_party:item/regive with storage tea_party: temp.selected_3
function tea_party:item/regive with storage tea_party: temp.selected_4

# 一応ここで廃棄ポイントもgiveしておく
loot give @s loot tea_party:tea_bag_waste_point

# 一時データの削除
data remove storage tea_party: temp.selected_1
data remove storage tea_party: temp.selected_2
data remove storage tea_party: temp.selected_3
data remove storage tea_party: temp.selected_4

# 音鳴らし
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
