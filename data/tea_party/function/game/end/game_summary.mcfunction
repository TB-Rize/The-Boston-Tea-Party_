# tea_party:game/end/game_summary
#
## @within tea_party:game/end/common

# ゲーム終了
tellraw @a ["",{text:"\n"},{text:"　 ＊ゲーム終了＊",bold:true,italic:true,color:"aqua"}]

# 各種tellraw

    # 役職の発表はこのコマンドで実行
    function tea_party:game/end/role_summary

    # ゲームマスター用
    tellraw @a[tag=tea.operator,scores={tea.operator=1}] ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Next Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]
    tellraw @a[tag=tea.operator,scores={tea.operator=1}] ["　　",{text:"Go Settings →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]


# ついでにここでサイドバー更新
scoreboard players display name string2 tea.info ["",{text:"制限時間 : ",bold:true,italic:true,color:"white"},{nbt:"time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string2 tea.info blank
scoreboard players display name string3 tea.info ["",{text:"準備時間 : ",bold:true,italic:true,color:"white"},{nbt:"visible_tea_bag_time.min",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"visible_tea_bag_time.sec",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string3 tea.info blank