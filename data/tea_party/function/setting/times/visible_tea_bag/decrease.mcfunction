# tea_party:setting/times/visible_tea_bag/decrease
#
## @within tea_party:setting/times/visible_tea_bag/page2

# 16,20行目の再帰でこちらに帰ってくる
execute if data storage tea_party: {setting_temp:2} run scoreboard players add #setting_visible_tea_bag_time_sec tea.time_limit 60
execute if data storage tea_party: {setting_temp:3} run scoreboard players set #setting_visible_tea_bag_time_sec tea.time_limit 0
execute if data storage tea_party: {setting_temp:3} run scoreboard players set #setting_visible_tea_bag_time_min tea.time_limit 0
execute if data storage tea_party: {setting_temp:2} run data modify storage tea_party: setting_temp set value 1
execute if data storage tea_party: {setting_temp:3} run data modify storage tea_party: setting_temp set value 1
# スコアを指定された値分減らす
$scoreboard players remove #setting_visible_tea_bag_time_$(ms) tea.time_limit $(num)

# もし秒数が0を下回り、かつminが1以上だった時、minの方を1下げたのち負の数となっているsecに60加算する
execute if score #setting_visible_tea_bag_time_sec tea.time_limit matches ..-1 if score #setting_visible_tea_bag_time_min tea.time_limit matches 1.. run data modify storage tea_party: setting_temp set value 2
execute if data storage tea_party: {setting_temp:2} run function tea_party:setting/times/visible_tea_bag/decrease {num:1,ms:min}

# もし分数が0を下回ったとき、全てを0にする(numは適当に1)
execute if score #setting_visible_tea_bag_time_min tea.time_limit matches ..-1 run data modify storage tea_party: setting_temp set value 3
execute if data storage tea_party: {setting_temp:3} run function tea_party:setting/times/visible_tea_bag/decrease {num:0,ms:sec}
#execute if data storage tea_party: {setting_temp:3} run data modify storage tea_party: setting_temp set value 0

# 0を下回らないように
scoreboard players operation #setting_visible_tea_bag_time_min tea.time_limit > #0 tea.int
scoreboard players operation #setting_visible_tea_bag_time_sec tea.time_limit > #0 tea.int


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