# tea_party:role/assign/agent
#
## @within tea_party:role/assign/


# スコア減算
scoreboard players remove #role_agent tea.temp_int 1

# タグ付け
tag @s add tea.role_assigned
tag @s add tea.role_agent

# スコア設定
scoreboard players set @s tea.role_num 1
#agentはロールidが1

# 別の奴に割り振り
execute unless score #role_agent tea.temp_int matches 0 as @r[tag=!tea.role_assigned] run function tea_party:role/assign/agent

