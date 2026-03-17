# tea_party:role/assign
#
## @within tea_party:game/start/

    # ロールアサインのためのスコアボードを用意する
    scoreboard objectives remove tea.temp_int
    scoreboard objectives add tea.temp_int dummy "紅茶：一時整数"

    # 役職数を一時的に保存するスコアを一時整数に保存する
    execute store result score #role_agent tea.temp_int run scoreboard players get #agent tea.use_role
    execute store result score #role_special_agent tea.temp_int run scoreboard players get #special_agent tea.use_role
    execute store result score #role_sam tea.temp_int run scoreboard players get #sam tea.use_role
    execute store result score #role_alter tea.temp_int run scoreboard players get #alter tea.use_role

# 基礎役職の割り振り
    # 工作員
    execute unless score #role_agent tea.temp_int matches 0 as @r[tag=!tea.role_assigned] run function tea_party:role/assign/agent

    # 第三陣営？
    #execute unless score #role_third_party tea.temp_int matches 0 as @r[tag=!tea.role_assigned] run function tea_party:role/assign/????

    # サンズオブリバティの割り振り(工作員,第三陣営以外)
    execute as @a[tag=!tea.role_assigned] run function tea_party:role/assign/sons_of_liberty

# 特殊役職の割り振り
    # 工作員陣営
    # 特殊工作員
    execute unless score #role_special_agent tea.temp_int matches 0 as @r[tag=tea.role_agent,tag=!tea.role_agent_sp_assigned] run function tea_party:role/assign/special_agent
    # APEXオルター
    execute unless score #role_alter tea.temp_int matches 0 as @r[tag=tea.role_agent,tag=!tea.role_agent_sp_assigned] run function tea_party:role/assign/alter

    # 第三陣営
    # ????(仮)

    # サンズオブリバティ陣営
    execute unless score #role_sam tea.temp_int matches 0 as @r[tag=tea.role_sol,tag=!tea.role_sol_sp_assigned] run function tea_party:role/assign/sam



# 役職割り振りが終わったのでtellrawやtitleを流す
    # オ
    execute as @a[scores={tea.role_num=1}] run function tea_party:role/assign/tellraw_and_titles/agent

    # サンズオブリバティ id 101
    execute as @a[scores={tea.role_num=101}] run function tea_party:role/assign/tellraw_and_titles/sons_of_liberty

    # 特殊工作員 id 7
    execute as @a[scores={tea.role_num=7}] run function tea_party:role/assign/tellraw_and_titles/special_agent

    # サミュエルアダムズ id 124
    execute as @a[scores={tea.role_num=124}] run function tea_party:role/assign/tellraw_and_titles/sam

    # オルター id 24
    execute as @a[scores={tea.role_num=24}] run function tea_party:role/assign/tellraw_and_titles/alter