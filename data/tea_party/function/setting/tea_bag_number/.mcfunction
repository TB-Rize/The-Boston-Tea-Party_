# tea_party:setting/tea_bag_number/
#
## @within tea_party:admin/settings

# ゲームマスター以外は茶葉数設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外は茶葉数設定を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在茶葉数設定を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# スコアをデータから同期させる
execute store result score #beaver tea.tea_bag_number run data get storage tea_party: tea_bags.count.beaver
execute store result score #eleanor tea.tea_bag_number run data get storage tea_party: tea_bags.count.eleanor
execute store result score #dartmouth tea.tea_bag_number run data get storage tea_party: tea_bags.count.dartmouth
# 設定用tellrawを流す
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊茶葉数設定＊",bold:true,underlined:true,color:"green"}]
# ダートマス号
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/dartmouth_decrease"}},{text:"　"},{nbt:"tea_bags.count.dartmouth",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/dartmouth_increase"}},{text:"　ダートマス号で捨てる茶葉数",color:"white"}]
# エレノア号
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/eleanor_decrease"}},{text:"　"},{nbt:"tea_bags.count.eleanor",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/eleanor_increase"}},{text:"　エレノア号で捨てる最小茶葉数",color:"white"}]
# ビーバー号
tellraw @s ["　 ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/beaver_decrease"}},{text:"　"},{nbt:"tea_bags.count.beaver",storage:"tea_party:",color:"white"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/tea_bag_number/tellraw/beaver_increase"}},{text:"　ビーバー号で捨てる最小茶葉数",color:"white"}]
# すぐゲーム開始にいけるようにする
tellraw @s ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Go Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]
# 元の画面に戻る
tellraw @s ["　 ",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/settings"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5