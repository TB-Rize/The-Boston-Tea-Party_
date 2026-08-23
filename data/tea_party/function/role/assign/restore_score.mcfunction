# tea_party:role/assign/restore_score
# ロールアサインの下処理を行う
## @within tea_party:role/assign/


    # ロールアサインのためのスコアボードを用意する
    scoreboard objectives remove tea.temp_int
    scoreboard objectives add tea.temp_int dummy "紅茶：一時整数"

    # 役職数を一時的に保存するスコアを一時整数に保存する
    # 工作員
    execute store result score #role_agent tea.temp_int run scoreboard players get #agent tea.use_role
    # 特殊工作員
    execute store result score #role_special_agent tea.temp_int run scoreboard players get #special_agent tea.use_role
    # サム(現在没案) サンズオブリバティの特殊役職の一つ
    execute store result score #role_sam tea.temp_int run scoreboard players get #sam tea.use_role
    # APEXオルター
    execute store result score #role_alter tea.temp_int run scoreboard players get #alter tea.use_role
    # ドパガキ
    execute store result score #role_dopagaki tea.temp_int run scoreboard players get #dopagaki tea.use_role