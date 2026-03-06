# tea_party:game/end/the_boston_tea_party
#
## @within tea_party:game/end/

# 茶葉がすべて捨てられた時の処理
#tellraw @a ["",{text:"[デバックメッセージ: 仮定]",color:"yellow"},{text:"ゲーム終了: 茶葉が必要最低数捨てられました"}]


# 音鳴らし
execute as @a[tag=tea.role_sol] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.4 1.5
execute as @a[tag=tea.role_agent] at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 0.8 0.7

# タイトル
title @a times 20 40 20
title @a[tag=tea.role_sol] subtitle {text:"これこそアメリカ式紅茶の淹れ方",color:"green"}
title @a[tag=tea.role_agent] subtitle {text:"魚に紅茶の味が分かるとでも？",color:"red"}
title @a title ["",{text:"～The Boston Tea Party～",bold:true,italic:true,color:"gold"},{text:"",bold:true,italic:true,underlined:true,color:"gold"}]





# 共通処理
function tea_party:game/end/common

# サイドバー更新
scoreboard players reset string10
scoreboard players display name string10 tea.info ["",{text:"勝利陣営 : ",bold:true,italic:true,color:"white"},{text:"Sons Of Liberty",bold:true,italic:true,color:"green"}]
scoreboard players display numberformat string10 tea.info blank


