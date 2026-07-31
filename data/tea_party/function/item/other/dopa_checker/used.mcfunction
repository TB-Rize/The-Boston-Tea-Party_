# tea_party:item/other/dopa_checker/used
#
## @within tea_party:player/tick

# tellraw
tellraw @s {text:"ドパチェッカーを使用した！",bold:true,italic:true,color:"light_purple"}

# ドパ値を表示
tellraw @s ["",{text:"現在のドパ値 ",bold:true,italic:true,color:"gold"},{text:":",bold:true,italic:true,color:"white"},{score:{name:"@s",objective:"tea.dopagaki_value"},bold:true,italic:true,color:"gold"}]
# 音を鳴らす
execute at @s run playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 0.2 2
# 使ったので没収
clear @s minecraft:golden_horse_armor[minecraft:custom_data~{tea.itemID:"dopaChecker"}] 1