# tea_party:item/weapon/muskets/shot/shot
#
## @within tea_party:item/weapon/muskets/shot/

# 発砲可能か調べる
execute unless data storage tea_party: {Allowd_Attack:1b} run tellraw @s {text:"今発砲するのは目立ちすぎる....",bold:true,italic:true,color:"red"}
execute unless data storage tea_party: {Allowd_Attack:1b} run return fail


# シャルルヴィルかブラウンベスか調べる
data modify storage tea_party: muskets.type set from entity @s SelectedItem.components."minecraft:custom_data"."tea.gunType"

# それぞれに応じて状態変更
execute if data storage tea_party: muskets{type:"Bess"} run item modify entity @s weapon.mainhand tea_party:musket/bess_shot
execute if data storage tea_party: muskets{type:"Charleville"} run item modify entity @s weapon.mainhand tea_party:musket/char_shot

# 音を鳴らす
execute as @s at @s run function tea_party:item/weapon/muskets/shot/sounds/

# 「耳」の処理
function tea_party:role/ingame/sp_agent/ear1 {done:"発砲しました"}
# 5tickの遅延を与える(実際の弾丸発射はtea_party:item/weapon/muskets/shot/5tの方で行われる)
scoreboard players set @s tea.musket_shot_tick 5



# ストレージのお掃除
data remove storage tea_party: muskets.type