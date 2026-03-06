# tea_party:game/times/sidebar/time_limit/set_min
#
## @within tea_party:game/times/sidebar/time_limit/

# 分数を1減らし、秒数に60加算
scoreboard players remove #sidebar_time_limit_min tea.time_limit 1
scoreboard players add #sidebar_time_limit_sec tea.time_limit 60


