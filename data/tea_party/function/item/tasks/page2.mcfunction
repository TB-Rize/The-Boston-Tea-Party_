# tea_party:item/tasks/page2
#
## @within tea_party:item/tasks/page1

# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊Task Points Page2＊",bold:true,underlined:true,color:"green"},{text:"\n"}]


# 戻るか
#tellraw @s ["",{text:"　　"},{text:"　←Back　",bold:true,italic:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:item/tasks/page1"}},{text:"　　"},{text:"　Page2→　",bold:true,italic:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:item/tasks/page2"}}]
# 元の画面に戻る
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:item/tasks/page1"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5