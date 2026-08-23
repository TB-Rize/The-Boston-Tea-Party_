# tea_party:role/assign
# ロールの割り振りと結果表示を行う 基礎的な割縁を具体的に記述し、それ以外の機能は移譲
## @within tea_party:game/start/



    # 役職数を一時的に保存するスコアを一時整数に保存する
    # ロールの追加ごとに改変が必要
    function tea_party:role/assign/restore_score

# 基礎役職の割り振り
    # ニュートラル(特殊陣営)
    #

    # 工作員
    #ニュートラルの処理によっては、この段階で#role_agent tea.temp_intが0になることもあるが、正常動作とする
    # 例: ドパガキは確率で工作員陣営になるが、その際、通常工作員の枠を一つ上書きすることになる
    # メモ: もし、工作員陣営の人数が3、ドパガキが2、オルターが2割り振られたとき、後にアサインが開始されるオルターが１枠消滅する
    execute unless score #role_agent tea.temp_int matches 0 as @r[tag=!tea.role_assigned] run function tea_party:role/assign/agent

    # 第三陣営？ ニュートラルの一部とする方が自然
    #execute unless score #role_third_party tea.temp_int matches 0 as @r[tag=!tea.role_assigned] run function tea_party:role/assign/????



    # サンズオブリバティの割り振り(工作員,ニュートラル以外)
    execute as @a[tag=!tea.role_assigned] run function tea_party:role/assign/sons_of_liberty

# 特殊役職の割り振り
    # 工作員陣営
    # tea.role_agent_sp_assigned は工作員の特殊役職が割り振られたときに付与されるタグ
    # 特殊工作員
    execute unless score #role_special_agent tea.temp_int matches 0 as @r[tag=tea.role_agent,tag=!tea.role_agent_sp_assigned] run function tea_party:role/assign/special_agent
    # APEXオルター
    execute unless score #role_alter tea.temp_int matches 0 as @r[tag=tea.role_agent,tag=!tea.role_agent_sp_assigned] run function tea_party:role/assign/alter

    # 第三陣営
    # ????(仮)

    # サンズオブリバティ陣営
    # tea.role_sol_sp_assigned はサンズオブリバティの特殊役職が割り振られたときに付与されるタグ
    execute unless score #role_sam tea.temp_int matches 0 as @r[tag=tea.role_sol,tag=!tea.role_sol_sp_assigned] run function tea_party:role/assign/sam

    # ドパガキ
    execute unless score #role_dopagaki tea.temp_int matches 0 as @r[tag=tea.role_sol,tag=!tea.role_sol_sp_assigned] run function tea_party:role/assign/dopagaki



# 役職割り振りが終わったのでtellrawやtitleを流す
# 既に百の位を除いた値が重複している(1,101),(124,24)を除き、以降の実装では下二桁の重複を避けるようにする
# ドパガキである167はいずれ67としても扱うことになる
    # ロールの追加ごとに改変が必要
    function tea_party:role/assign/show_role_result
    # 工作員 id 1
    # サンズオブリバティ id 101
    # 特殊工作員 id 7
    # サミュエルアダムズ id 124
    # オルター id 24
    # ドパガキ id 167

