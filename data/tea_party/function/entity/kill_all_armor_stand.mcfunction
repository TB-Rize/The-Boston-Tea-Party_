# tea_party:entity/kill_all_armor_stand
#
## @within tea_party:common/confirm from tea_party:admin/settings

# すべてのBoston Tea Party関連の防具盾を削除
execute as @e[tag=tea.armor_stand] run kill @s

# 全員にtellrawする
tellraw @a ["",{text:"The Boston Tea Party",bold:true,italic:true,underlined:true,color:"gold"},{text:" に関わる全ての防具立てが削除されました",bold:true,italic:true,color:"red"}]