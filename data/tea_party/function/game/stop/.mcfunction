# tea_party:game/stop/
#
## @within tea_party:admin/game

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中でないなら帰れ
execute if data storage tea_party: {Ingame:0b} run return fail

# 終了共通処理を実行
function tea_party:game/end/common

# tellrawを流す
tellraw @a ["　 ",{text:"\n"},{text:"　 "},{text:"ゲームが中断されました",bold:true,italic:true,underlined:true,color:"red"}]

# タイトル
title @a times 20 40 20
title @a subtitle {text:"",color:"red"}
title @a title ["",{text:"ゲーム中断",bold:true,italic:true,color:"red"},{text:"",bold:true,italic:true,underlined:true,color:"gold"}]
