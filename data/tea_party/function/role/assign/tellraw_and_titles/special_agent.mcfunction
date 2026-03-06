# tea_party:role/assign/tellraw_and_titles/special_agent
#
## @within tea_party:role/assign

# titleを流す
title @s times 20 40 20
title @s subtitle {text:"ただの工作員とは\"格\"が違う",bold:true,italic:true,color:"yellow"}
title @s title {text:"特殊工作員",bold:true,italic:true,color:"red"}

# tellrawを流す
tellraw @s ["　 ",{text:"\n"},{text:"　"},{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]
tellraw @s ["　　 ",{text:"あなたの役職は...",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"マサチューセッツ植民地総督直属工作員",bold:true,italic:true,color:"red"},{text:"です",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"\"耳\"が何もかも教えてくれる ここは貴方の庭だ",bold:true,italic:true,color:"yellow"}]
tellraw @s ["　　 ",{text:"工作員陣営 : ",bold:true,italic:true,color:"red"},{selector:"@a[tag=tea.role_agent]",bold:true,italic:true,color:"red"}]
tellraw @s ["　",{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]