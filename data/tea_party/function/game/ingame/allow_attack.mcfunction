# tea_party:game/ingame/allow_attack
#
## @within tea_party:game/tick

# デバックメッセージを出す
#tellraw @a ["",{text:"[デバックメッセージ: 仮定]",color:"yellow"},{text:"船への突撃が可能になりました"}]
# 重複禁止仕様
execute if data storage tea_party: {Allowd_Attack:1b} run return fail
data modify storage tea_party: Allowd_Attack set value 1b

# スポーンポイントから茶葉を召喚する
function tea_party:entity/tea_bag/summon

# 茶葉の残量を与える
execute as @e[tag=tea.tea_bag_body] run scoreboard players set @s tea.tea_bag_quantity 200

# サイドバー更新
scoreboard players reset string1
scoreboard players display name string1 tea.info ["",{text:"ゲーム : ",bold:true,italic:true,color:"white"},{text:"突撃可能",bold:true,italic:true,color:"green"}]
scoreboard players display numberformat string1 tea.info blank
scoreboard players reset string3

# タイトル
title @a times 20 40 20
title @a[tag=tea.role_sol] subtitle {text:"船を襲え",color:"green"}
title @a[tag=tea.role_agent] subtitle {text:"茶葉を捨てさせるな",color:"red"}
title @a title ["",{text:"突入可能",bold:true,italic:true,color:"green"},{text:"",bold:true,italic:true,underlined:true,color:"gold"}]

# 音も鳴らす
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5

# 夜にする
time set night

# 暗殺刀渡し
loot give @a[tag=tea.role_agent] loot tea_party:weapon/scabbard