# tea_party:item/tools/task_rope/used
#
## @within tea_party:player/tick

# 自分にタグ付け
tag @s add tea.temp

# 使った人間を基準とした半径2にタスク荷物があるか確認し、タスク荷物があったらそれを掴む
execute as @n[tag=tea.task_body,distance=..2,sort=nearest,limit=1] at @s run function tea_party:entity/tasks/box/register
# ↑で掴めていたなら掴んでいるスコアが1のはず
# 1でないなら掴めていないので半径2以内のタスクスポーン位置に対して荷物召喚とid割り振りを求める
execute unless score @s tea.task_is_carrying matches 1 as @n[tag=tea.task_spawner,distance=..2,sort=nearest,limit=1] at @s run function tea_party:entity/tasks/box/summon/

# それすらできなかったら空振り


# タグ掃除
tag @s remove tea.temp

