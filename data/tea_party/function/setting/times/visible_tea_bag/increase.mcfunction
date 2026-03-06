# tea_party:setting/times/visible_tea_bag/increase
#
## @within tea_party:setting/times/visible_tea_bag/page2

# 13行目の再帰でこちらに帰ってくる
execute if data storage tea_party: {setting_temp:2} run scoreboard players remove #setting_visible_tea_bag_time_sec tea.time_limit 60
execute if data storage tea_party: {setting_temp:2} run data modify storage tea_party: setting_temp set value 1
# スコアを指定された値分増やす
$scoreboard players add #setting_visible_tea_bag_time_$(ms) tea.time_limit $(num)

# もし秒数が60を上回ったらminの方を1上げ、secの方を60減算する
execute if score #setting_visible_tea_bag_time_sec tea.time_limit matches 60.. run data modify storage tea_party: setting_temp set value 2
execute if data storage tea_party: {setting_temp:2} run function tea_party:setting/times/visible_tea_bag/increase {num:1,ms:min}


# データを保存(1桁の時は01のようにしたい)
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches ..0 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "00"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 1 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "01"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 2 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "02"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 3 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "03"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 4 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "04"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 5 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "05"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 6 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "06"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 7 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "07"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 8 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "08"
$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 9 run data modify storage tea_party: visible_tea_bag_time.$(ms) set value "09"

$execute if score #setting_visible_tea_bag_time_$(ms) tea.time_limit matches 10.. store result storage tea_party: visible_tea_bag_time.$(ms) int 1 run scoreboard players get #setting_visible_tea_bag_time_$(ms) tea.time_limit



# 設定の続きをさせる
execute unless data storage tea_party: {setting_temp:1} run function tea_party:setting/times/visible_tea_bag/page2
data modify storage tea_party: setting_temp set value 0