# tea_party:entity/tick
#
## @within tea_party:tick

# 各種エンティティに関するtick処理を行う

    # tea_bag
    execute as @e[tag=tea.tea_bag_body] at @s run function tea_party:entity/tea_bag/movement/tp

    # tasks
    execute as @e[tag=tea.task_body] at @s run function tea_party:entity/tasks/box/movement/tp

    # tea_bag_waste_point
    execute as @e[tag=tea.waste_marker] at @s run function tea_party:entity/tea_bag_waste_point/

    # task_waste_point
    execute as @e[tag=tea.task_waste_point] at @s run function tea_party:entity/tasks/waste/

    # 商人取引設置樽設置アマスタ
    execute as @e[tag=tea.trader_setting_unallowed] at @s run function tea_party:entity/trader_setting/
    execute as @e[tag=tea.trader_setting_allowed] at @s run function tea_party:entity/trader_setting/set_brank
    execute as @e[tag=tea.trader_setting_marker] at @s run function tea_party:entity/trader_setting/death

    # bullet
    execute as @e[tag=tea.bullet] at @s run function tea_party:entity/bullet/move