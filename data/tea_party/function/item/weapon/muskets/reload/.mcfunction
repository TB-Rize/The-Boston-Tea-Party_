# tea_party:item/weapon/muskets/reload/
#
## @within tea_party:player/tick

# 念のためストレージ消去
data remove storage tea_party: musket_reload.state
# 手持ちは既にマスケット銃で確定済み　リロード状態を確認する
data modify storage tea_party: musket_reload.state set from entity @s SelectedItem.components."minecraft:custom_data"."tea.muskets_reload_num"
# tick数スコアを1上げる
scoreboard players add @s tea.musket_reload 1

# 各状態に基づいてリロード演出
execute if data storage tea_party: musket_reload{state:6b} run function tea_party:item/weapon/muskets/reload/6
execute if data storage tea_party: musket_reload{state:5b} run function tea_party:item/weapon/muskets/reload/5
execute if data storage tea_party: musket_reload{state:4b} run function tea_party:item/weapon/muskets/reload/4
execute if data storage tea_party: musket_reload{state:3b} run function tea_party:item/weapon/muskets/reload/3
execute if data storage tea_party: musket_reload{state:2b} run function tea_party:item/weapon/muskets/reload/2
execute if data storage tea_party: musket_reload{state:1b} run function tea_party:item/weapon/muskets/reload/1
execute if data storage tea_party: musket_reload{state:0b} run function tea_party:item/weapon/muskets/reload/0

# ストレージ消去
data remove storage tea_party: musket_reload.state