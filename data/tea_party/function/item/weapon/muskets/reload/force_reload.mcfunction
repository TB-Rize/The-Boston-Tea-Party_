# tea_party:item/weapon/muskets/reload/force_reload
#
## @within 手動


# 状態変更
    # リロード完了状態にする
    item modify entity @s weapon.mainhand tea_party:musket/reload7

    # シャルルヴィルかブラウンベスか調べる
    data modify storage tea_party: muskets.type set from entity @s SelectedItem.components."minecraft:custom_data"."tea.gunType"
    # それぞれに応じて状態変更
    execute if data storage tea_party: muskets{type:"Bess"} run item modify entity @s weapon.mainhand tea_party:musket/bess_reloaded
    execute if data storage tea_party: muskets{type:"Charleville"} run item modify entity @s weapon.mainhand tea_party:musket/char_reloaded

    # ストレージのお掃除
    data remove storage tea_party: muskets.type
