# tea_party:setting/role/
#
## @within tea_party:admin/settings

# ゲームマスター以外は役職数設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は役職数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在役職数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# 設定用tellrawを流す　
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]

# 基礎役職数設定
tellraw @s ["　 ",{text:"基礎役職数設定",bold:true,italic:true,color:"yellow"}]
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/agent_decrease"}},{text:"  "},{score:{name:"#agent",objective:"tea.use_role"}},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/agent_increase"}},{text:"　イギリス議会工作員 ",bold:true,italic:true,color:"dark_red"}]
#tellraw @s ["",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/sol_decrease"}},{text:"  "},{score:{name:"#sons_of_liberty",objective:"tea.use_role"}},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/sol_increase"}},{text:"　自由の息子たち: ソンズ・オブ・リバティ",color:"green"}]




# コマンドを少し書き換える withで変数にする "ではなく 'をつかうこと
# function tea_party:setting/role/tellraw/decrease {roleName:'役職名'}
# function tea_party:setting/role/tellraw/increase {roleName:'役職名'}
# 役職名リスト　サンズオブリバティ : sons_of_liberty ,工作員 : agent ,特殊工作員 : special_agent ,サミュエル・アダムズ : sam ,APEXオルター : alter

# 特殊役職数設定
tellraw @s ["　 ",{text:"特殊役職数設定",bold:true,italic:true,color:"red"}]
tellraw @s ["　 ",{text:"特殊役職は基礎役職の範囲内で割り振りされます",bold:true,italic:true,color:"white"}]
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/decrease {roleName:'special_agent'}"}},{text:"  "},{score:{name:"#special_agent",objective:"tea.use_role"}},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/increase {roleName:'special_agent'}"}},{text:"　マサチューセッツ植民地総督直属工作員",bold:true,italic:true,color:"dark_red"}]
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/decrease {roleName:'sam'}"}},{text:"  "},{score:{name:"#sam",objective:"tea.use_role"}},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/increase {roleName:'sam'}"}},{text:"　(未実装)サミュエル・アダムズ(占い師)",bold:true,italic:true,color:"green"}]
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/decrease {roleName:'alter'}"}},{text:"  "},{score:{name:"#alter",objective:"tea.use_role"}},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/role/tellraw/increase {roleName:'alter'}"}},{text:"　APEXオルター",bold:true,italic:true,color:"light_purple"}]


# すぐゲーム開始にいけるようにする
tellraw @s ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Go Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]

# 元の画面に戻る
tellraw @s ["　 ",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5