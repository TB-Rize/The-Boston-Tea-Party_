# tea_party:role/assign/sam
#
## @within tea_party:role/assign/


# スコア減算
scoreboard players remove #role_dopagaki tea.temp_int 1

# スコア設定
scoreboard players set @s tea.role_num 167
# dopagakiはロールidが167

# タグ処理 role_sol_sp_assignedはサンズオブリバティの特殊役職割り当て済みのタグ
tag @s add tea.role_sol_sp_assigned

# ドパガキの初期化をここで行う
scoreboard players set @s tea.dopagaki_value 60
tag @s add tea.role_dopagaki

# 別の奴に割り振り
execute unless score #role_dopagaki tea.temp_int matches 0 as @r[tag=tea.role_sol,tag=!tea.role_sol_sp_assigned] run function tea_party:role/assign/dopagaki
