# tea_party:item/weapon/muskets/reload/6
#
## @within tea_party:item/weapon/muskets/reload/

# 込め矢の収納及びコック引きの担当
# スコアに応じて音を鳴らすだけ

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 4 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2
execute if score @s tea.musket_reload matches 8 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 込め矢を持った音
execute if score @s tea.musket_reload matches 12 run playsound minecraft:item.armor.equip_generic master @s ~ ~ ~ 0.8 1

# 銃を動かしたりしたときの音
execute if score @s tea.musket_reload matches 16 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2
execute if score @s tea.musket_reload matches 20 run playsound minecraft:block.chain.step master @s ~ ~ ~ 1 2

# 持ち変える
execute if score @s tea.musket_reload matches 28 run playsound minecraft:block.wood.place master @s ~ ~ ~ 0.8 1
execute if score @s tea.musket_reload matches 32 run playsound minecraft:block.wood.place master @s ~ ~ ~ 0.8 1

# コックを引く
execute if score @s tea.musket_reload matches 38 run playsound minecraft:block.piston.extend master @s ~ ~ ~ 1 2

# 2秒立って無いなら以下の操作は不要
execute unless score @s tea.musket_reload matches 40.. run return fail

# スコアリセット
scoreboard players set @s tea.musket_reload 0

# 状態変更
    # リロード完了状態にする
    item modify entity @s weapon.mainhand tea_party:musket/reload7

    # シャルルヴィルかブラウンベスか調べる
    data modify storage tea_party: muskets.type set from entity @s SelectedItem.components."minecraft:custom_data"."tea.gunType"
    # それぞれに応じて状態変更
    execute if data storage tea_party: muskets{type:"Bess"} run item modify entity @s weapon.mainhand tea_party:musket/bess_reloaded
    execute if data storage tea_party: muskets{type:"Charleville"} run item modify entity @s weapon.mainhand tea_party:musket/char_reloaded

    # 「耳」の処理
    function tea_party:role/ingame/sp_agent/ear1 {done:"銃をリロードしました"}


    # ストレージのお掃除
    data remove storage tea_party: muskets.type
