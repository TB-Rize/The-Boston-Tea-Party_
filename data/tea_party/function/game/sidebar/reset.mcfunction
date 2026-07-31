# tea_party:game/sidebar/reset
#
## @within tea_party:game/end/common

# サイドバーリセット

# ゲーム状態初期化
scoreboard players reset string1
scoreboard players display name string1 tea.info ["",{text:"ゲーム : ",bold:true,italic:true,color:"white"},{text:"待機中",bold:true,italic:true,color:"green"}]
scoreboard players display numberformat string1 tea.info blank

# 勝利陣営表示を初期化
scoreboard players reset string10



# 時間表記を初期化
scoreboard players reset string12
scoreboard players reset string13
scoreboard players display name string12 tea.info ["",{text:"制限時間 : ",bold:true,italic:true,color:"white"},{nbt:"time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string12 tea.info blank
scoreboard players display name string13 tea.info ["",{text:"準備時間 : ",bold:true,italic:true,color:"white"},{nbt:"visible_tea_bag_time.min",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"visible_tea_bag_time.sec",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string13 tea.info blank