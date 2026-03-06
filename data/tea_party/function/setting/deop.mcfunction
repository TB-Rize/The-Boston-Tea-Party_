# tea_party:setting/deop
#
## 手動実行

# ゲームマスター権限剥奪
scoreboard players set @s tea.operator 0
tag @s remove tea.operator

# tellraw流し
tellraw @s ["　　",{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"の管理者権限を剥奪されました",bold:true,italic:true}]