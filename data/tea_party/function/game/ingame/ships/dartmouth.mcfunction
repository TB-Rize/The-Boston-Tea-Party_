# tea_party:game/ingame/ships/dartmouth
#
## @within tea_party:game/tick

# スコア処理(茶葉数は-1にする)
scoreboard players remove #dartmouth_InGame tea.tea_bag_number 1
scoreboard players add #ships_InGame tea.ship_plundered 1

# 船の時間制限も-1にして止める
scoreboard players set #game_ship_dartmouth tea.time_limit -1

# tellraw
tellraw @a {text:"ダートマス号の茶葉がほとんど捨てられました！(条件達成)",bold:true,italic:true,color:"green"}