# tea_party:setting/times/ship_time_limit/decrease
#
## @within tea_party:setting/times/ship_time_limit/page3

# 16,20行目の再帰でこちらに帰ってくる
execute if data storage tea_party: {setting_temp:2} run scoreboard players add #setting_ship_time_limit_sec tea.time_limit 60
execute if data storage tea_party: {setting_temp:3} run scoreboard players set #setting_ship_time_limit_sec tea.time_limit 0
execute if data storage tea_party: {setting_temp:3} run scoreboard players set #setting_ship_time_limit_min tea.time_limit 0
execute if data storage tea_party: {setting_temp:2} run data modify storage tea_party: setting_temp set value 1
execute if data storage tea_party: {setting_temp:3} run data modify storage tea_party: setting_temp set value 1
# スコアを指定された値分減らす
$scoreboard players remove #setting_ship_time_limit_$(ms) tea.time_limit $(num)

# もし秒数が0を下回り、かつminが1以上だった時、minの方を1下げたのち負の数となっているsecに60加算する
execute if score #setting_ship_time_limit_sec tea.time_limit matches ..-1 if score #setting_ship_time_limit_min tea.time_limit matches 1.. run data modify storage tea_party: setting_temp set value 2
execute if data storage tea_party: {setting_temp:2} run function tea_party:setting/times/ship_time_limit/decrease {num:1,ms:min}

# もし分数が0を下回ったとき、全てを0にする(numは適当に1)
execute if score #setting_ship_time_limit_min tea.time_limit matches ..-1 run data modify storage tea_party: setting_temp set value 3
execute if data storage tea_party: {setting_temp:3} run function tea_party:setting/times/ship_time_limit/decrease {num:0,ms:sec}
#execute if data storage tea_party: {setting_temp:3} run data modify storage tea_party: setting_temp set value 0

# 0を下回らないように
scoreboard players operation #setting_ship_time_limit_min tea.time_limit > #0 tea.int
scoreboard players operation #setting_ship_time_limit_sec tea.time_limit > #0 tea.int


# データを保存(1桁の時は01のようにしたい)
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches ..0 run data modify storage tea_party: ship_time_limit.$(ms) set value "00"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 1 run data modify storage tea_party: ship_time_limit.$(ms) set value "01"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 2 run data modify storage tea_party: ship_time_limit.$(ms) set value "02"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 3 run data modify storage tea_party: ship_time_limit.$(ms) set value "03"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 4 run data modify storage tea_party: ship_time_limit.$(ms) set value "04"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 5 run data modify storage tea_party: ship_time_limit.$(ms) set value "05"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 6 run data modify storage tea_party: ship_time_limit.$(ms) set value "06"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 7 run data modify storage tea_party: ship_time_limit.$(ms) set value "07"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 8 run data modify storage tea_party: ship_time_limit.$(ms) set value "08"
$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 9 run data modify storage tea_party: ship_time_limit.$(ms) set value "09"

$execute if score #setting_ship_time_limit_$(ms) tea.time_limit matches 10.. store result storage tea_party: ship_time_limit.$(ms) int 1 run scoreboard players get #setting_ship_time_limit_$(ms) tea.time_limit




# 設定の続きをさせる
execute unless data storage tea_party: {setting_temp:1} run function tea_party:setting/times/ship_time_limit/page3
data modify storage tea_party: setting_temp set value 0