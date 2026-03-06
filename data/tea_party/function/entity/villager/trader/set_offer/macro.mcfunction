# tea_party:entity/villager/trader/set_offer/macro
#
## tea_party:entity/villager/trader/set_offer/

# 取引を作成するためストレージからデータを保存する
$data modify storage tea_party_trader: OfferItems_temp.s1 set from storage tea_party_trader: OfferItems[$(x1)]
$data modify storage tea_party_trader: OfferItems_temp.s2 set from storage tea_party_trader: OfferItems[$(x2)]
function tea_party:entity/villager/trader/set_offer/macro2 with storage tea_party_trader: OfferItems_temp
# 使ったのでリセット
data remove storage tea_party_trader: OfferItems_temp

# 配列番号が16以上なら帰っていいよ
execute if score #tea.set_offer_temp_int1 tea.set_offer_temp_int matches 16.. run return fail

# ストレージのお掃除
data remove storage tea_party_trader: set_offer_temp_int

# 再帰
scoreboard players add #tea.set_offer_temp_int1 tea.set_offer_temp_int 2
scoreboard players add #tea.set_offer_temp_int2 tea.set_offer_temp_int 2
execute store result storage tea_party_trader: set_offer_temp_int.x1 int 1 run scoreboard players get #tea.set_offer_temp_int1 tea.set_offer_temp_int
execute store result storage tea_party_trader: set_offer_temp_int.x2 int 1 run scoreboard players get #tea.set_offer_temp_int2 tea.set_offer_temp_int
function tea_party:entity/villager/trader/set_offer/macro with storage tea_party_trader: set_offer_temp_int
