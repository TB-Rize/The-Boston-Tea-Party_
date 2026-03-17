# tea_party:item/other/void_nexus/used
#
## @within tea_party:player/tick

# 使用者のタグを取得し、チームごとに使うようにしたいが、その機能は今実装しない

# ヴォイドネクサスを召喚
function tea_party:item/other/void_nexus/summon

# 工作員陣営にPortalを配る　本来は座標データを刻む
loot give @a[tag=tea.role_agent] loot tea_party:other/void_nexus_portal

# 使ったので没収
clear @s minecraft:golden_horse_armor[minecraft:custom_data~{tea.itemID:"voidNexus"}] 1