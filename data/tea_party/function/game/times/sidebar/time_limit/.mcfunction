# tea_party:game/times/sidebar/time_limit/
#
## @within tea_party:game/times/1sec



# スコアを減らす
scoreboard players remove #sidebar_time_limit_sec tea.time_limit 1

# もし-1秒になったとき、分数が1以上なら分数を1減らし自分は59へ
execute unless score #sidebar_time_limit_min tea.time_limit matches ..0 if score #sidebar_time_limit_sec tea.time_limit matches ..-1 run function tea_party:game/times/sidebar/time_limit/set_min

# 0を下回らないように
scoreboard players operation #sidebar_time_limit_min tea.time_limit > #0 tea.int
scoreboard players operation #sidebar_time_limit_sec tea.time_limit > #0 tea.int


# 秒数データを保存(1桁の時は01のようにしたい)
execute if score #sidebar_time_limit_sec tea.time_limit matches ..0 run data modify storage tea_party: sidebar.time_limit.sec set value "00"
execute if score #sidebar_time_limit_sec tea.time_limit matches 1 run data modify storage tea_party: sidebar.time_limit.sec set value "01"
execute if score #sidebar_time_limit_sec tea.time_limit matches 2 run data modify storage tea_party: sidebar.time_limit.sec set value "02"
execute if score #sidebar_time_limit_sec tea.time_limit matches 3 run data modify storage tea_party: sidebar.time_limit.sec set value "03"
execute if score #sidebar_time_limit_sec tea.time_limit matches 4 run data modify storage tea_party: sidebar.time_limit.sec set value "04"
execute if score #sidebar_time_limit_sec tea.time_limit matches 5 run data modify storage tea_party: sidebar.time_limit.sec set value "05"
execute if score #sidebar_time_limit_sec tea.time_limit matches 6 run data modify storage tea_party: sidebar.time_limit.sec set value "06"
execute if score #sidebar_time_limit_sec tea.time_limit matches 7 run data modify storage tea_party: sidebar.time_limit.sec set value "07"
execute if score #sidebar_time_limit_sec tea.time_limit matches 8 run data modify storage tea_party: sidebar.time_limit.sec set value "08"
execute if score #sidebar_time_limit_sec tea.time_limit matches 9 run data modify storage tea_party: sidebar.time_limit.sec set value "09"

execute if score #sidebar_time_limit_sec tea.time_limit matches 10.. store result storage tea_party: sidebar.time_limit.sec int 1 run scoreboard players get #sidebar_time_limit_sec tea.time_limit

# 分数データを保存(1桁の時は01のようにしたい)
execute if score #sidebar_time_limit_min tea.time_limit matches ..0 run data modify storage tea_party: sidebar.time_limit.min set value "00"
execute if score #sidebar_time_limit_min tea.time_limit matches 1 run data modify storage tea_party: sidebar.time_limit.min set value "01"
execute if score #sidebar_time_limit_min tea.time_limit matches 2 run data modify storage tea_party: sidebar.time_limit.min set value "02"
execute if score #sidebar_time_limit_min tea.time_limit matches 3 run data modify storage tea_party: sidebar.time_limit.min set value "03"
execute if score #sidebar_time_limit_min tea.time_limit matches 4 run data modify storage tea_party: sidebar.time_limit.min set value "04"
execute if score #sidebar_time_limit_min tea.time_limit matches 5 run data modify storage tea_party: sidebar.time_limit.min set value "05"
execute if score #sidebar_time_limit_min tea.time_limit matches 6 run data modify storage tea_party: sidebar.time_limit.min set value "06"
execute if score #sidebar_time_limit_min tea.time_limit matches 7 run data modify storage tea_party: sidebar.time_limit.min set value "07"
execute if score #sidebar_time_limit_min tea.time_limit matches 8 run data modify storage tea_party: sidebar.time_limit.min set value "08"
execute if score #sidebar_time_limit_min tea.time_limit matches 9 run data modify storage tea_party: sidebar.time_limit.min set value "09"

execute if score #sidebar_time_limit_min tea.time_limit matches 10.. store result storage tea_party: sidebar.time_limit.min int 1 run scoreboard players get #sidebar_time_limit_min tea.time_limit


# sidebar表示の上書き
scoreboard players display name string2 tea.info ["",{text:"制限時間 : ",bold:true,italic:true,color:"white"},{nbt:"sidebar.time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"sidebar.time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"秒",bold:true,italic:true,color:"gray"}]



