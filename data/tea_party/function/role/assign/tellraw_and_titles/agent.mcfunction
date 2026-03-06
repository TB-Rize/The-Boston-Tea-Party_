# tea_party:role/assign/tellraw_and_titles/agent
#
## @within tea_party:role/assign

# titleを流す
title @s times 20 40 20
title @s subtitle {text:"組織に潜み、作戦を失敗させろ",bold:true,italic:true,color:"yellow"}
title @s title {text:"工作員",bold:true,italic:true,color:"red"}

# tellrawを流す
tellraw @s ["",{text:"\n"},{text:"　"},{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]
tellraw @s ["　　 ",{text:"あなたの役職は...",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"工作員(イギリス議会工作員)",bold:true,italic:true,color:"red"},{text:"です",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"我らが大英帝国に対する脅威をすべて退けろ",bold:true,italic:true,color:"yellow"}]
tellraw @s ["　　 ",{text:"工作員陣営 : ",bold:true,italic:true,color:"red"},{selector:"@a[tag=tea.role_agent]",bold:true,italic:true,color:"red"}]
tellraw @s ["　",{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]