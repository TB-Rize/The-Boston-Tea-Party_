# tea_party:load
#
## default

# tellrawを流す
tellraw @a ["",{text:"  "},{text:"The Boston Tea Party",bold:true,italic:true,underlined:true,color:"gold"},{text:"  "},{text:"VoidNexus",bold:true,italic:true,underlined:true,color:"light_purple"},{text:"  "},{translate:"%s",with:[{text:"がロードされました"}],bold:true,italic:true,color:"green"}]

# データパックのバージョン値を設定
data modify storage tea_party: Version set value "1.1.0"


# とある遠い地点を常に読み込みする
forceload add 1000000 1000001

# 音を鳴らす
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.5

# titleを流す
title @s times 20 40 20
title @a subtitle {text:"Version 1.1.0",bold:true,italic:true,color:"green"}
title @a title {text:"The Boston Tea Party",bold:true,italic:true,color:"gold"}

# サイドバー情報を映す
scoreboard objectives setdisplay sidebar tea.info

# 一応ヘイローのロード処理
function halo:load