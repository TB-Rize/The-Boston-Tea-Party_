# tea_party:advancement/uo
#
## @within advancement

#tellraw @a {text:"うお（笑）",bold:true,italic:true,color:"aqua"}
advancement revoke @s only tea_party:uo

# ドパガキでないならこちらの処理
execute unless entity @s[tag=tea.role_dopagaki] run tellraw @a {text:"うお（笑）",bold:true,italic:true,color:"aqua"}

# ドパガキならこちらの処理
execute if entity @s[tag=tea.role_dopagaki] run tellraw @a {text:"うおwからのけけっwからのひひっwからのどわーwからの...ったくwからのよせやいwからのあたぼうよwからのあらよっとwからのてやんでいwからの🗿🍷ガチイク！からの「あ」",bold:true,italic:true,color:"aqua"}

function tea_party:role/dopagaki/restore_dopa