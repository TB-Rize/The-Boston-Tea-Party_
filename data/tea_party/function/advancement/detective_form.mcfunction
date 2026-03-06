# tea_party:advancement/detective_form
#
## @within advancement

# 進捗処理
advancement revoke @s only tea_party:detective_form

# 実行者の判別タグをつける
tag @s add tea.detective_temp



# 各プレイヤーの名前入手のためにインベントリ操作が行われる　操作対象はメインハンドなのでメインハンドのアイテムを保存して後で渡す
# メインハンドに持っている物をストレージに保存
data modify storage tea_party: detective_main.temp set from entity @s SelectedItem
# メインハンドが空なら空気にしておく
execute unless data entity @s SelectedItem run data modify storage tea_party: detective_main.temp set value {id:"minecraft:air",Count:1b}

# tellraw
    # 一般tellraw
    tellraw @s ["",{text:"探偵への調査依頼書",bold:true,italic:true,color:"gold"},{text:"を使用しました",bold:true,italic:true,color:"aqua"}]

    # 自分以外のプレイヤーから自分に向けてtellrawをさせる(この過程でインベントリ操作が発生)
    execute as @a[tag=!tea.spectator,tag=!tea.detective_temp] run function tea_party:item/tools/detective_form/someone_used




# メインハンドにもともと持っていたアイテムを戻してあげる
function tea_party:item/replace with storage tea_party: detective_main
# ストレージのお掃除
data remove storage tea_party: detective_main

# タグ除去
tag @s remove tea.detective_temp



#data modify storage temp365: names append from entity @s SelectedItem.components."minecraft:profile".name