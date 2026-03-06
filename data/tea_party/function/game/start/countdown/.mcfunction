# tea_party:game/start/countdown/
#
## @within tea_party:admin/game

# インストールされていないなら実行しない
execute unless data storage tea_party: Installed run tellraw @s [" ",{text:"ゲームがインストールされていません",bold:true,italic:true,color:"red"}]
execute unless data storage tea_party: Installed run return fail
execute if data storage tea_party: {Installed:0b} run tellraw @s [" ",{text:"ゲームがインストールされていません",bold:true,italic:true,color:"red"}]
execute if data storage tea_party: {Installed:0b} run return fail

# ゲーム中にゲーム始めるん...?
execute if data storage tea_party: {Ingame:1b} run return fail

# ヘイローを外す
function halo:remove_halo

# scheduleで関数を呼び出し scheduleで因数渡しができないの謎過ぎる
function tea_party:game/start/countdown/10
schedule function tea_party:game/start/countdown/9 1s append
schedule function tea_party:game/start/countdown/8 2s append
schedule function tea_party:game/start/countdown/7 3s append
schedule function tea_party:game/start/countdown/6 4s append
schedule function tea_party:game/start/countdown/5 5s append
schedule function tea_party:game/start/countdown/4 6s append
schedule function tea_party:game/start/countdown/3 7s append
schedule function tea_party:game/start/countdown/2 8s append
schedule function tea_party:game/start/countdown/1 9s append
schedule function tea_party:game/start/ 10s append