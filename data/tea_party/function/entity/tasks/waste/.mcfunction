# tea_party:entity/tasks/waste/
# 実行者 : 荷物回収アマスタ
## @within tea_party:entity/tick

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# タグ付け
#tag @s add tea.task_waste_point.temp

# 荷物を持っていてかつしゃがんでいてかつ回収地点半径2以内にいるプレイヤーがいたら関数を実行
execute if entity @s[tag=tea.task1] as @a[scores={tea.task_is_carrying=1,tea.task_num=1},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task2] as @a[scores={tea.task_is_carrying=1,tea.task_num=2},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task3] as @a[scores={tea.task_is_carrying=1,tea.task_num=3},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task4] as @a[scores={tea.task_is_carrying=1,tea.task_num=4},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task5] as @a[scores={tea.task_is_carrying=1,tea.task_num=5},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task6] as @a[scores={tea.task_is_carrying=1,tea.task_num=6},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task7] as @a[scores={tea.task_is_carrying=1,tea.task_num=7},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task8] as @a[scores={tea.task_is_carrying=1,tea.task_num=8},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task9] as @a[scores={tea.task_is_carrying=1,tea.task_num=9},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste
execute if entity @s[tag=tea.task10] as @a[scores={tea.task_is_carrying=1,tea.task_num=10},predicate=tea_party:is_sneaking,distance=..2] at @s run function tea_party:entity/tasks/waste/waste




# タグ外し
#tag @s remove tea.task_waste_point.temp