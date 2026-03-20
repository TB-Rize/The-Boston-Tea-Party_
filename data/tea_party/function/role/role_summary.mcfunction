# tea_party:game/end/role_summary
#
## @within tea_party:game/end/game_summary


    # 役職の発表を実際に行う処理
    # ロール関係はroleファイルに集めたほうがよい

    # 特殊工作員
    execute as @r[scores={tea.role_num=7}] run tellraw @a ["　 ",{text:"特殊工作員",bold:true,italic:true,underlined:true,color:"red"},{text:"\n"},{text:"　　"},{selector:"@a[scores={tea.role_num=7}]",bold:true,italic:true,color:"aqua"}]

    # オルター
    execute as @r[scores={tea.role_num=24}] run tellraw @a ["　 ",{text:"APEXオルター",bold:true,italic:true,underlined:true,color:"red"},{text:"\n"},{text:"　　"},{selector:"@a[scores={tea.role_num=24}]",bold:true,italic:true,color:"aqua"}]

    # 工作員
    execute as @r[scores={tea.role_num=1}] run tellraw @a ["　 ",{text:"工作員",bold:true,italic:true,underlined:true,color:"red"},{text:"\n"},{text:"　　"},{selector:"@a[scores={tea.role_num=1}]",bold:true,italic:true,color:"aqua"}]

    # サミュエルアダムズ
    execute as @r[scores={tea.role_num=124}] run tellraw @a ["　 ",{text:"サミュエルアダムズ",bold:true,italic:true,underlined:true,color:"blue"},{text:"\n"},{text:"　　"},{selector:"@a[scores={tea.role_num=124}]",bold:true,italic:true,color:"aqua"}]

    # サンズオブリバティ
    execute as @r[scores={tea.role_num=101}] run tellraw @a ["　 ",{text:"サンズオブリバティ",bold:true,italic:true,underlined:true,color:"green"},{text:"\n"},{text:"　　"},{selector:"@a[scores={tea.role_num=101}]",bold:true,italic:true,color:"aqua"}]

