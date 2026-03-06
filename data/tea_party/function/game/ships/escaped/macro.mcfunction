# tea_party:game/ships/escaped/macro
#
## @within tea_party:game/ingame/bossbar/ships/reduce



# tellrawするだけ
$tellraw @a {text:"$(name)号が港から逃走しました...",bold:true,italic:true,color:"red"}

# なんとなく勝利判定を2秒後に行わせる
schedule function tea_party:game/ships/escaped/s1 2s