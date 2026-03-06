# tea_party:game/end/time_limit
#
## @within tea_party:game/tick

# ゲーム終了とする
#tellraw @a ["",{text:"[デバックメッセージ]",color:"yellow"},{text:"ゲームがタイムリミットを迎えました"}]


# 音鳴らし
execute as @a[tag=tea.role_agent] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.4 1.5
execute as @a[tag=tea.role_sol] at @s run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 0.8 0.7

# タイトル
title @a times 20 40 20
title @a[tag=tea.role_sol] subtitle {text:"工作員の妨害を止められなかった",color:"green"}
title @a[tag=tea.role_agent] subtitle {text:"女王陛下万歳",color:"green"}
title @a[tag=tea.role_sol] title ["",{text:"作戦失敗",bold:true,italic:true,color:"gold"},{text:"",bold:true,italic:true,underlined:true,color:"gold"}]
title @a[tag=tea.role_agent] title ["",{text:"妨害成功",bold:true,italic:true,color:"gold"},{text:"",bold:true,italic:true,underlined:true,color:"gold"}]


# 共通処理
function tea_party:game/end/common

# サイドバー更新
scoreboard players reset string10
scoreboard players display name string10 tea.info ["",{text:"勝利陣営 : ",bold:true,italic:true,color:"white"},{text:"イギリス議会工作員",bold:true,italic:true,color:"red"}]
scoreboard players display numberformat string10 tea.info blank