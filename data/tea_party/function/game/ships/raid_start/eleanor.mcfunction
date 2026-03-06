# tea_party:game/ships/raid_start/eleanor
#
## @within tea_party:entity/tea_bag/register_macro


# 既に実行済みならもうしなくていい
execute if data storage tea_party: {game_state:{e:1b}} run return fail

# 状態を変更
data modify storage tea_party: game_state.e set value 1b

# ボスバーを表示
bossbar set minecraft:eleanor players @a

# tellraw
tellraw @a {text:"エレノア号への襲撃が始まりました！",bold:true,italic:true,color:"red"}

# 「耳」の処理 tea_party:item/tools/tea_bag_rope/usedからここまで伸びてきているため、tea.tempをここで使える
execute as @a[tag=tea.temp] run function tea_party:role/ingame/sp_agent/ear1 {done:"エレノア号への襲撃を開始"}

