# tea_party:item/loot_tables/page1
#
## @within tea_party:admin/items

# tellrawを流すだけ
# manymany改行
tellraw @s ["",{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"},{text:"\n"}]
# タイトル
tellraw @s ["　 ",{text:"＊Loot Tables＊",bold:true,underlined:true,color:"green"},{text:"　"},{text:"Page1",bold:true,italic:true,underlined:true,color:"green"},{text:"\n"}]
tellraw @s ["　　",{text:"10 UK Pound",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:10uk_pound"}}]
tellraw @s ["　　",{text:"Antique crossbow",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:antique_crossbow"}}]
tellraw @s ["　　",{text:"24K Pure Gold",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:pure_gold"}}]
tellraw @s ["　　",{text:"Tea Bag Rope",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:tea_bag_rope"}}]
tellraw @s ["　　",{text:"Task Rope",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:task_rope"}}]
tellraw @s ["　　",{text:"Costume Kit",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:costume_kit"}}]
tellraw @s ["　　",{text:"Brown Bess",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:weapon/brown_bess"}}]
tellraw @s ["　　",{text:"Charleville Musket",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:weapon/charleville_musket"}}]
tellraw @s ["　　",{text:"Cartridge",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:weapon/cartridge"}}]
tellraw @s ["　　",{text:"Juicy Steak",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:steak"}}]
tellraw @s ["　　",{text:"Knife Scabbard",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/loot give @s loot tea_party:weapon/scabbard"}}]
tellraw @s ["　　",{text:"Detective Form",bold:true,underlined:true,color:"aqua",click_event:{action:"run_command",command:"/loot give @s loot tea_party:detective_form"}}]
tellraw @s ["　　",{text:"Void Nexus",bold:true,underlined:true,color:"light_purple",click_event:{action:"run_command",command:"/loot give @s loot tea_party:other/void_nexus"}}]


# 元の画面に戻る
tellraw @s ["　　",{text:"\n"},{text:"　　"},{text:"　←Back　",bold:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function tea_party:admin/items"}}]

# 音鳴らし
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5