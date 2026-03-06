# tea_party:item/tools/detective_form/tellraw2_macro
#
## @within tea_party:item/tools/detective_form/someone_used

#$say $(name)は占われた
#$execute as $(name) run say うお（笑）

# 押し間違いでないかを確認
$tellraw @s ["",{text:"本当に",bold:true,italic:true,color:"gold"},{text:"$(name)",bold:true,italic:true,color:"green"},{text:"を",bold:true,italic:true,color:"aqua"},{text:"調査",bold:true,italic:true,color:"gold"},{text:"しますか？",bold:true,italic:true,color:"aqua"}]