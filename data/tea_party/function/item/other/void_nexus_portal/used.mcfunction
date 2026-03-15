# tea_party:item/other/void_nexus_portal/used
#
## @within tea_party:player/tick

# tellraw
tellraw @s {text:"ヴォイドネクサスへ移動する！",bold:true,italic:true,color:"light_purple"}

# とりあえず雑テレポート
tp @e[tag=tea.void_nexus_body,limit=1]

# 使ったので没収
clear @s minecraft:golden_horse_armor[minecraft:custom_data~{tea.itemID:"voidNexusPortal"}] 1