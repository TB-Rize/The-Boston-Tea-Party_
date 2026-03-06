# tea_party:game/end/
#
## @within tea_party:game/tick

# ゲーム終了審査
    # 茶葉全部捨てたとき、茶葉勝利を流す
    execute if data storage tea_party: {the_boston_tea_party:1b} run function tea_party:game/end/the_boston_tea_party

    # 1つの船が茶葉を積んだまま脱出したとき、工作員勝利を流す
    execute if score #escaped_ships tea.escaped matches 1.. run function tea_party:game/end/the_party_is_over