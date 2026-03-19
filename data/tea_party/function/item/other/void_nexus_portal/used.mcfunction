# tea_party:item/other/void_nexus_portal/used
#
## @within tea_party:player/tick

# tellraw
tellraw @s {text:"ヴォイドネクサスへ移動する！",bold:true,italic:true,color:"light_purple"}

# とりあえず雑テレポート
tp @s @e[tag=tea.void_nexus_body,limit=1,sort=nearest]

# 音を鳴らす
execute at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 0.5
# 使ったので没収
clear @s minecraft:golden_horse_armor[minecraft:custom_data~{tea.itemID:"voidNexusPortal"}] 1