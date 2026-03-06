# tea_party:entity/villager/trader/set_offer/
#
## tea_party:entity/villager/trader/summon

# スコア作成
scoreboard objectives add tea.set_offer_temp_int dummy "紅茶: 取引設定用の一時整数"


# 規定スコア
scoreboard players set #tea.set_offer_temp_int1 tea.set_offer_temp_int 0
scoreboard players set #tea.set_offer_temp_int2 tea.set_offer_temp_int 1
execute store result storage tea_party_trader: set_offer_temp_int.x1 int 1 run scoreboard players get #tea.set_offer_temp_int1 tea.set_offer_temp_int
execute store result storage tea_party_trader: set_offer_temp_int.x2 int 1 run scoreboard players get #tea.set_offer_temp_int2 tea.set_offer_temp_int
function tea_party:entity/villager/trader/set_offer/macro with storage tea_party_trader: set_offer_temp_int

# ストレージのお掃除
data remove storage tea_party_trader: set_offer_temp_int
# スコア消し
scoreboard objectives remove tea.set_offer_temp_int

