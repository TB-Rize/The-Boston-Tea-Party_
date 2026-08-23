# tea_party:role/assign/show_role_result
#
## @within tea_party:role/assign/


# 役職割り振りが終わったのでtellrawやtitleを流す
# 既に百の位を除いた値が重複している(1,101),(124,24)を除き、以降の実装では下二桁の重複を避けるようにする
# ドパガキである167はいずれ67としても扱うことになる
    # 工作員 id 1
    execute as @a[scores={tea.role_num=1}] run function tea_party:role/assign/tellraw_and_titles/agent

    # サンズオブリバティ id 101
    execute as @a[scores={tea.role_num=101}] run function tea_party:role/assign/tellraw_and_titles/sons_of_liberty

    # 特殊工作員 id 7
    execute as @a[scores={tea.role_num=7}] run function tea_party:role/assign/tellraw_and_titles/special_agent

    # サミュエルアダムズ id 124
    execute as @a[scores={tea.role_num=124}] run function tea_party:role/assign/tellraw_and_titles/sam

    # オルター id 24
    execute as @a[scores={tea.role_num=24}] run function tea_party:role/assign/tellraw_and_titles/alter

    # ドパガキ id 167
    execute as @a[scores={tea.role_num=167}] run function tea_party:role/assign/tellraw_and_titles/dopagaki