# tea_party:role/assign/tellraw_and_titles/alter
#
## @within tea_party:role/assign

# titleを流す
title @s times 20 40 20
title @s subtitle {text:"\"破滅\"大好き！",bold:true,italic:true,color:"yellow"}
title @s title {text:"APEXオルター",bold:true,italic:true,color:"red"}

# tellrawを流す
tellraw @s ["　 ",{text:"\n"},{text:"　"},{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]
tellraw @s ["　　 ",{text:"あなたは...",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"APEXオルター",bold:true,italic:true,color:"red"},{text:"です",bold:true,italic:true,color:"green"}]
tellraw @s ["　　 ",{text:"\"ヴォイドネクサス\"を駆使し、隠密に殺害せよ",bold:true,italic:true,color:"yellow"}]
tellraw @s ["　　 ",{text:"工作員陣営 : ",bold:true,italic:true,color:"red"},{selector:"@a[tag=tea.role_agent]",bold:true,italic:true,color:"red"}]
tellraw @s ["　",{text:"＊ーーー＊ーーー＊ーーー＊ーーー＊ーーー＊",bold:true,italic:true,color:"aqua"}]