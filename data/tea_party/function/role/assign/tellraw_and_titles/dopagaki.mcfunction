# tea_party:role/assign/tellraw_and_titles/dopagaki
#
## @within tea_party:role/assign

# titleを流す
title @s times 20 40 20
title @s subtitle {text:"ドパガキは文字を読まない",bold:true,italic:true,color:"yellow"}
title @s title {text:"ドパガキ",bold:true,italic:true,color:"gold"}

# tellrawを流す
tellraw @s ["　 ",{text:"\n"},{text:"　"},{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]
tellraw @s ["　　 ",{text:"あなたは...",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"ドパガキ",bold:true,italic:true,color:"gold"},{text:"です",bold:true,italic:true,color:"gold"}]
tellraw @s ["　　 ",{text:"ドパガキすぎて説明文すr",bold:true,italic:true,color:"yellow"}]
tellraw @s ["　",{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]