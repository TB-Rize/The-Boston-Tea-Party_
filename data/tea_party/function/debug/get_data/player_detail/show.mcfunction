# tea_party:debug/get_data/player_detail/show
#
## @within (´・ω・`)

tag @s[tag=tea.oh_debug_man] add tea.debug_man
#$say $(num)
$tellraw @s[tag=tea.debug_man] ["",{text:"プレイヤー : ",bold:true,italic:true,color:"aqua"},{selector:"@a[scores={tea_debug.p_num=$(num)}]",color:"green",click_event:{action:"run_command",command:"/function tea_party:debug/get_data/player_detail/show {num:1}"}},{text:"のデータを取得しました",bold:true,italic:true,color:"aqua"}]

# 役職表示
$execute as @a[scores={tea_debug.p_num=$(num),tea.role_num=1}] run tellraw @a[tag=tea.debug_man] ["",{text:"役職 : ",bold:true,italic:true,color:"green"},{text:"工作員(通常)",bold:true,italic:true,color:"red"}]
$execute as @a[scores={tea_debug.p_num=$(num),tea.role_num=7}] run tellraw @a[tag=tea.debug_man] ["",{text:"役職 : ",bold:true,italic:true,color:"green"},{text:"特殊工作員",bold:true,italic:true,color:"red"}]
$execute as @a[scores={tea_debug.p_num=$(num),tea.role_num=101}] run tellraw @a[tag=tea.debug_man] ["",{text:"役職 : ",bold:true,italic:true,color:"green"},{text:"サンズオブリバティ",bold:true,italic:true,color:"aqua"}]
$execute as @a[scores={tea_debug.p_num=$(num),tea.role_num=124}] run tellraw @a[tag=tea.debug_man] ["",{text:"役職 : ",bold:true,italic:true,color:"green"},{text:"サミュエルアダムズ",bold:true,italic:true,color:"aqua"}]












tag @s remove tea.debug_man