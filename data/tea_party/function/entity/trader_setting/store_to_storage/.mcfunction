# tea_party:entity/trader_setting/store_to_storage/
#
## @within tea_party:entity/trader_setting/death // tea_party:game/start/

# 古い情報を消す
data remove storage tea_party_trader: OfferItems

# データを保存 既存の横順ではなく縦順で割り振りしているので数字がキモイ
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:0b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:9b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:4b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:5b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:14b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:6b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:15b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:7b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:16b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:8b}]
data modify storage tea_party_trader: OfferItems append from block ~ ~ ~ Items[{Slot:17b}]

# Slotの情報のみ削除
data remove storage tea_party_trader: OfferItems[].Slot