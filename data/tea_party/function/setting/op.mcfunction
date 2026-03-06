# tea_party:setting/op
#
## 手動実行

# ゲームマスター権限付与
scoreboard players set @s tea.operator 1
tag @s add tea.operator

# tellraw流し
tellraw @s ["　　",{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"の管理者権限を得ました　設定が可能です",bold:true,italic:true}]
# 管理tellraw
tellraw @s ["　　",{text:"Admin →",bold:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function tea_party:admin/"}}]
tellraw @s ["　　",{text:"/function tea_party:admin/　",bold:true,underlined:false,color:"blue"},{text:"でAdmin画面を開けます",bold:true,underlined:true,color:"green"}]