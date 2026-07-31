# tea_party:game/end/game_summary
#
## @within tea_party:game/end/common

# ゲーム終了
tellraw @a ["",{text:"\n"},{text:"　 ＊ゲーム終了＊",bold:true,italic:true,color:"aqua"}]

# 各種tellraw

    # 役職の発表はこのコマンドで実行
    function tea_party:role/role_summary

    # ゲームマスター用
    tellraw @a[tag=tea.operator,scores={tea.operator=1}] ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Next Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]
    tellraw @a[tag=tea.operator,scores={tea.operator=1}] ["　　",{text:"Go Settings →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]


# ここにあったサイドバー更新はtea_party:game/sidebar/resetに移動