# tea_party:item/traders/give
#
## @within tea_party:admin/items

# ゲーム中に実行できないようにする
execute if data storage tea_party: {Ingame:1b} run tellraw @s {text:"ゲーム中にそのアイテムを与えることはできません",color:"red"}
execute if data storage tea_party: {Ingame:1b} run return fail

loot give @s loot tea_party:spawn_trader
loot give @s loot tea_party:trader_setting_barrel