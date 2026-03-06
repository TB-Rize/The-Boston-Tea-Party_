# tea_party:item/weapon/muskets/reload/0
#
## @within tea_party:item/weapon/muskets/reload/




#カートリッジ確認
    # スコアリセット
    scoreboard players reset #reload_temp tea.musket_reload

    # 実際にカートリッジを1クリアし、成功したら継続する　失敗したらtellraw クリエイティブならこの動作は行わない
    execute unless entity @s[gamemode=creative] store success score #reload_temp tea.musket_reload run clear @s minecraft:echo_shard[minecraft:custom_data~{tea.itemID:"cartridge"}] 1
    execute unless entity @s[gamemode=creative] if score #reload_temp tea.musket_reload matches 0 if score @s tea.musket_reload matches 1 run tellraw @s {text:"カートリッジ残量が0です",bold:true,italic:true,color:"dark_red"}
    execute unless entity @s[gamemode=creative] if score #reload_temp tea.musket_reload matches 0 run return fail

    # カートリッジ確認状態にする
    item modify entity @s weapon.mainhand tea_party:musket/reload1

    # 音を鳴らす
    playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2

    # カートリッジ確認ではもうこのスコアを使わないのでリセット
    scoreboard players set @s tea.musket_reload 0