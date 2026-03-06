# tea_party:game/times/sidebar/ready_time/set_min
#
## @within tea_party:game/tick

# 分数を1減らし、秒数に60加算
scoreboard players remove #sidebar_ready_time_min tea.time_limit 1
scoreboard players add #sidebar_ready_time_sec tea.time_limit 60
