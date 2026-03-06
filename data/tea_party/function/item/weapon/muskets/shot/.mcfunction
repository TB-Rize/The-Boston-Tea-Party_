# tea_party:item/weapon/muskets/shot/
#
## @within tea_party:player/tick

# 手持ちの銃の状態を確認
data modify storage tea_party: muskets.state set from entity @s SelectedItem.components."minecraft:custom_data"."tea.muskets_reload_num"

# もし発射準備OKなら発射する
execute if data storage tea_party: muskets{state:7b} run function tea_party:item/weapon/muskets/shot/shot
execute unless data storage tea_party: muskets{state:7b} run tellraw @s {text:"装填されていません",bold:true,italic:true,color:"dark_red"}


# ストレージのお掃除
data remove storage tea_party: muskets.state