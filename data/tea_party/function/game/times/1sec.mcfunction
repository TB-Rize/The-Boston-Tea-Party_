# tea_party:game/times/1sec
#
## @within tea_party:game/tick
# 必ず1秒ごとに実行される


# 0tickに戻す
scoreboard players set #game_1sec tea.time_limit 0

#say oh!

# それぞれの時間をサイドバーに反映
function tea_party:game/times/sidebar/ready_time/
function tea_party:game/times/sidebar/time_limit/

