# tea_party:entity/trader_setting/set_items/set_items
#
## @within tea_party:entity/trader_setting/

# 一回しかしないから帰っていいよ
execute if entity @s[tag=tea.trader_setitem_finished] run return fail
# それぞれにスロットを与える
data modify storage tea_party_trader: OfferItems[0].Slot set value 0b
data modify storage tea_party_trader: OfferItems[1].Slot set value 9b
data modify storage tea_party_trader: OfferItems[2].Slot set value 1b
data modify storage tea_party_trader: OfferItems[3].Slot set value 10b
data modify storage tea_party_trader: OfferItems[4].Slot set value 2b
data modify storage tea_party_trader: OfferItems[5].Slot set value 11b
data modify storage tea_party_trader: OfferItems[6].Slot set value 3b
data modify storage tea_party_trader: OfferItems[7].Slot set value 12b
data modify storage tea_party_trader: OfferItems[8].Slot set value 4b
data modify storage tea_party_trader: OfferItems[9].Slot set value 13b
data modify storage tea_party_trader: OfferItems[10].Slot set value 5b
data modify storage tea_party_trader: OfferItems[11].Slot set value 14b
data modify storage tea_party_trader: OfferItems[12].Slot set value 6b
data modify storage tea_party_trader: OfferItems[13].Slot set value 15b
data modify storage tea_party_trader: OfferItems[14].Slot set value 7b
data modify storage tea_party_trader: OfferItems[15].Slot set value 16b
data modify storage tea_party_trader: OfferItems[16].Slot set value 8b
data modify storage tea_party_trader: OfferItems[17].Slot set value 17b

# タグ処理
tag @s remove tea.trader_setting_unallowed
tag @s add tea.trader_setitem_finished
# 配列番号を0に初期化
scoreboard players set @s tea.trader_offers_num 0
execute store result storage tea_party_trader: list_num_set_items.x int 1 run scoreboard players get @s tea.trader_offers_num
function tea_party:entity/trader_setting/set_items/set_items_macro with storage tea_party_trader: list_num_set_items

