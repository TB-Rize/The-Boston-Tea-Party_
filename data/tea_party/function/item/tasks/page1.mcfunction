# tea_party:item/tasks/page1
#
## @within tea_party:admin/items

# tellrawの方が都合がいい
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊Task Points Page1＊",bold:true,underlined:true,color:"green"},{text:"\n"}]
tellraw @s ["　　",{text:"Task ID:1",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:1}"}}]
tellraw @s ["　　",{text:"Task ID:2",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:2}"}}]
tellraw @s ["　　",{text:"Task ID:3",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:3}"}}]
tellraw @s ["　　",{text:"Task ID:4",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:4}"}}]
tellraw @s ["　　",{text:"Task ID:5",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:5}"}}]
tellraw @s ["　　",{text:"Task ID:6",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:6}"}}]
tellraw @s ["　　",{text:"Task ID:7",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:7}"}}]
tellraw @s ["　　",{text:"Task ID:8",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:8}"}}]
tellraw @s ["　　",{text:"Task ID:9",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:9}"}}]
tellraw @s ["　　",{text:"Task ID:10",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/function tea_party:item/tasks/loots/ {num:10}"}}]



# 次のページか、それとも戻るか
tellraw @s ["",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,italic:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/items"}},{text:"　　"},{text:"　Page2→　",bold:true,italic:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:item/tasks/page2"}}]
# 元の画面に戻る
# tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/items"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5