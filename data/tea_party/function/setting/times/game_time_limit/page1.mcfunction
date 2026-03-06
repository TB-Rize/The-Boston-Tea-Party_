# tea_party:setting/times/game_time_limit/page1
#
## @within tea_party:admin/settings

# ゲームマスター以外は時間設定を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中は設定できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"現在この操作を行うことはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

# 設定用tellrawを流す
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
#tellraw @s ["　 ",{text:"＊タイムリミット設定＊",bold:true,underlined:true,color:"green"}]
tellraw @s ["　 ",{text:"\n"},{text:"　 "},{text:"＊制限時間＊",bold:true,underlined:true,color:"aqua"}]
tellraw @s ["",{text:"  "},{text:"    ",bold:true,italic:true},{nbt:"time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"秒",bold:true,italic:true,color:"gray"}]
tellraw @s ["　   ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/decrease {num:10,ms:min}"}},{text:"　"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/increase {num:10,ms:min}"}},{text:"　10分",color:"white"}]
tellraw @s ["　   ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/decrease {num:1,ms:min}"}},{text:"　"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/increase {num:1,ms:min}"}},{text:"　1分",color:"white"}]
tellraw @s ["　   ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/decrease {num:10,ms:sec}"}},{text:"　"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/increase {num:10,ms:sec}"}},{text:"　10秒",color:"white"}]
tellraw @s ["　   ",{text:" －",color:"dark_red",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/decrease {num:1,ms:sec}"}},{text:"　"},{text:"　＋",color:"aqua",click_event:{action:"run_command",command:"/function tea_party:setting/times/game_time_limit/increase {num:1,ms:sec}"}},{text:"　1秒",color:"white"}]

# すぐゲーム開始にいけるようにする
tellraw @s ["　　",{text:"\n"},{text:"\n"},{text:"　　"},{text:"Go Game →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/game"}}]

# 元の画面に戻る
tellraw @s ["　 ",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/times"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

# sidebar更新
scoreboard players display name string2 tea.info ["",{text:"制限時間 : ",bold:true,italic:true,color:"white"},{nbt:"time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"green"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string2 tea.info blank