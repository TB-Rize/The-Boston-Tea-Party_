# tea_party:role/assign/special_agent
#
## @within tea_party:role/assign/


# スコア減算
scoreboard players remove #role_special_agent tea.temp_int 1

# スコア設定
scoreboard players set @s tea.role_num 7
# special_agentはロールidが7

# タグ処理
tag @s add tea.role_agent_sp_assigned

# 別の奴に割り振り
execute unless score #role_special_agent tea.temp_int matches 0 as @r[tag=tea.role_agent,tag=!tea.role_agent_sp_assigned] run function tea_party:role/assign/special_agent
