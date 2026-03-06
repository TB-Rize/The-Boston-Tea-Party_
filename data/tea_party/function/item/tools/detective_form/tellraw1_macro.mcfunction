# tea_party:item/tools/detective_form/tellraw1_macro
#
## @within tea_party:item/tools/detective_form/someone_used

# 調査メニューのみを展開
$tellraw @a[tag=tea.detective_temp] ["",{text:"$(str)",bold:true,italic:true,color:"green"},{text:"を ",bold:true,italic:true,color:"aqua"},{text:"調査する",bold:true,italic:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"/function tea_party:item/tools/detective_form/tellraw2_macro {name:$(str)}"}}]