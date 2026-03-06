# tea_party:game/ingame/bossbar/ships/reduce
#
## @within tea_party:game/tick


# 各船の時間を減らし、反映する 船襲撃前は動かない
    # ダートマス号
    execute if data storage tea_party: {game_state:{d:1b}} run scoreboard players remove #game_ship_dartmouth tea.time_limit 1
    execute if score #game_ship_dartmouth tea.time_limit matches 0.. store result bossbar minecraft:dartmouth value run scoreboard players get #game_ship_dartmouth tea.time_limit

    # エレノア号
    execute if data storage tea_party: {game_state:{e:1b}} run scoreboard players remove #game_ship_eleanor tea.time_limit 1
    execute if score #game_ship_eleanor tea.time_limit matches 0.. store result bossbar minecraft:eleanor value run scoreboard players get #game_ship_eleanor tea.time_limit

    # ビーバー号
    execute if data storage tea_party: {game_state:{b:1b}} run scoreboard players remove #game_ship_beaver tea.time_limit 1
    execute if score #game_ship_beaver tea.time_limit matches 0.. store result bossbar minecraft:beaver value run scoreboard players get #game_ship_beaver tea.time_limit

# 船の制限時間が0になったときの処理
execute if score #game_ship_dartmouth tea.time_limit matches 0 run function tea_party:game/ships/escaped/macro {name:"ダートマス",id:"dartmouth"}
execute if score #game_ship_eleanor tea.time_limit matches 0 run function tea_party:game/ships/escaped/macro {name:"エレノア",id:"eleanor"}
execute if score #game_ship_beaver tea.time_limit matches 0 run function tea_party:game/ships/escaped/macro {name:"ビーバー",id:"beaver"}