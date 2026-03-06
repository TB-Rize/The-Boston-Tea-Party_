# tea_party:role/assign/sons_of_liberty
#
## @within tea_party:role/assign/


# タグ付け
tag @s add tea.role_assigned
tag @s add tea.role_sol

# スコア設定
scoreboard players set @s tea.role_num 101
# sons_of_libertyはロールidが101


# 別の奴に割り振り
#execute as @r[tag=!tea.role_assigned] run function tea_party:role/assign/

