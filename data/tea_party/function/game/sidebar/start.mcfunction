# tea_party:game/sidebar/start
#
## @within tea_party:game/start

# サイドバーリセット
# 表示順は名前解決される 簡潔に言えば、Excelと同じ基準で処理されるため、1の次は2ではなく1からはじまる2桁の10になる
scoreboard players reset string1
scoreboard players reset string10
scoreboard players reset string12
scoreboard players reset string13
scoreboard players reset string14


# ゲーム状態
scoreboard players display name string1 tea.info ["",{text:"ゲーム : ",bold:true,italic:true,color:"white"},{text:"突撃準備中",bold:true,italic:true,color:"green"}]
scoreboard players display numberformat string1 tea.info blank


# 制限時間
scoreboard players display name string12 tea.info ["",{text:"制限時間 : ",bold:true,italic:true,color:"white"},{nbt:"time_limit.min",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"time_limit.sec",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string12 tea.info blank
execute store result score #sidebar_time_limit_min tea.time_limit run scoreboard players get #setting_time_limit_min tea.time_limit
execute store result score #sidebar_time_limit_sec tea.time_limit run scoreboard players get #setting_time_limit_sec tea.time_limit

# 突撃準備時間
scoreboard players display name string13 tea.info ["",{text:"準備時間 : ",bold:true,italic:true,color:"white"},{nbt:"visible_tea_bag_time.min",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"分",bold:true,italic:true,color:"gray"},{text:" "},{nbt:"visible_tea_bag_time.sec",storage:"tea_party:",bold:true,italic:true,color:"aqua"},{text:"秒",bold:true,italic:true,color:"gray"}]
scoreboard players display numberformat string13 tea.info blank
execute store result score #sidebar_ready_time_min tea.time_limit run scoreboard players get #setting_visible_tea_bag_time_min tea.time_limit
execute store result score #sidebar_ready_time_sec tea.time_limit run scoreboard players get #setting_visible_tea_bag_time_sec tea.time_limit

# 特殊値表示 (別コマンドに移譲)
# 一時的に全員に表示 SOLID原則とか関係なさ過ぎて拡張が面倒すぎる
# 特殊値表示はstring14~99を用いる
function tea_party:game/sidebar/unique_type/display


# サイドバー情報を映す
scoreboard objectives setdisplay sidebar tea.info