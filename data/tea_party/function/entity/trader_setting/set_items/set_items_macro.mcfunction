# tea_party:entity/trader_setting/set_items/set_items_macro
#
## @within tea_party:entity/trader_setting/set_items/set_items

# 樽にアイテムを落とし込む
$data modify block ~ ~ ~ Items append from storage tea_party_trader: OfferItems[$(x)]
#$say $(x)
# 配列番号が16以上なら帰っていいよ
execute if score @s tea.trader_offers_num matches 17.. run return fail

# 配列番号を1上げて再帰
scoreboard players add @s tea.trader_offers_num 1
execute store result storage tea_party_trader: list_num_set_items.x int 1 run scoreboard players get @s tea.trader_offers_num
function tea_party:entity/trader_setting/set_items/set_items_macro with storage tea_party_trader: list_num_set_items
