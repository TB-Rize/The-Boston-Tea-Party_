# tea_party:game/ships/ready_bossbar
#
## @within

# 念のためボスバーをすべて削除
bossbar remove dartmouth
bossbar remove eleanor
bossbar remove beaver

# ボスバーを作成
bossbar add dartmouth {text:"ダートマス号 : 出港までの時間",bold:true,italic:true,color:"green"}
bossbar add eleanor {text:"エレノア号 : 出港までの時間",bold:true,italic:true,color:"green"}
bossbar add beaver {text:"ビーバー号 : 出港までの時間",bold:true,italic:true,color:"green"}

# 最大値を制限時間にする
function tea_party:game/ships/r_bossbar_macro with storage tea_party: Ingame_ships

