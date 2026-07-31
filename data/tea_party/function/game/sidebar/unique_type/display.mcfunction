# tea_party:game/sidebar/unique_type/display
#
## @within tea_party:game/sidebar/start

# 特殊タイプのサイドバー表示を一括表示させる

# サイドバー表示はexcel式の名前解決をされるので、1の次は2ではなく1からはじまる2桁の10になる
# 暗黙として、2,3,4などの数字は用いないことにする
# 21と22の間に要素を新規挿入する際は210~219を用いることで挿入が可能

# string14 ドパ値　没 個別表示が不可だったことが判明

#scoreboard players display name string14 tea.info ["",{text:"ドパ値 ",bold:true,italic:true,color:"gold"},{text:":",bold:true,italic:true,color:"white"},{text:" "}]
#scoreboard players display numberformat string14 tea.info blank