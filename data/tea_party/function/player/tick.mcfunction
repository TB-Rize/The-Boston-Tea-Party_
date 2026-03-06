# tea_party:player/tick
#
## @within tea_party:tick

# ダメージ処理を行う
execute if score @s tea.damage_resisted matches 1.. run function tea_party:player/damage/

# サウンド処理
scoreboard players remove @s tea.musket_shot_tick 1
execute at @s if score @s tea.musket_shot_tick matches 1 run function tea_party:item/weapon/muskets/shot/5t

# 弾丸耐性を1下げる
scoreboard players remove @s tea.bullet_resist 1

# 暗殺刀保有可能時間
scoreboard players remove @s tea.knife_down_time 1
execute if score @s tea.knife_down_time matches ..1 run function tea_party:item/weapon/agent_knife/remove




# 左手禁止アイテムの処理
data modify storage tea_party: check_banOffHand.boolean set from entity @s equipment.offhand.components."minecraft:custom_data"."tea.banOffHand"
execute if data storage tea_party: check_banOffHand{boolean:1b} run function tea_party:player/swaphand
data remove storage tea_party: check_banOffHand

# データに両手のアイテムのidを記憶
data modify storage tea_party: itemID.off set from entity @s equipment.offhand.components."minecraft:custom_data"."tea.itemID"
data modify storage tea_party: itemID.main set from entity @s SelectedItem.components."minecraft:custom_data"."tea.itemID"

# それぞれ一つに統一(メインハンドでtea.itemIDを検出できていなければオフハンドのアイテム情報は生き残る)
data modify storage tea_party: itemID.hands set from storage tea_party: itemID.off
data modify storage tea_party: itemID.hands set from storage tea_party: itemID.main

# 使用していないのならば、使用中スコアを0にする
execute if score @s[scores={tea.item_is_using=1..}] tea.item_used matches 0 run function tea_party:item/tools/quit_using
# ↑を次のtickで実行するためusedは消しておく
scoreboard players remove @s tea_debug.int 1
scoreboard players set @s tea.item_used 0


# 各アイテム処理

    # 茶葉掴みロープ
    execute if data storage tea_party: itemID{hands:"tea_bag_rope"} if score @s tea.item_is_using matches 1 run function tea_party:item/tools/tea_bag_rope/used
    # 持ってないなら手元から無くしたときの処理をする
    execute unless data storage tea_party: itemID{hands:"tea_bag_rope"} run function tea_party:item/tools/tea_bag_rope/released

    # タスク荷物掴みロープ
    execute if data storage tea_party: itemID{hands:"task_rope"} if score @s tea.item_is_using matches 1 run function tea_party:item/tools/task_rope/used
    # 持ってないなら手元から無くしたときの処理をする
    scoreboard players operation @s tea_debug.int > #0 tea.int
    execute unless data storage tea_party: itemID{hands:"task_rope"} run function tea_party:item/tools/task_rope/released

    # マスケット銃
    execute if data storage tea_party: itemID{hands:"muskets"} if score @s tea.item_is_using matches 1 run function tea_party:item/weapon/muskets/shot/
    # マスケット銃リロード処理(スニーク時のみ)
    execute unless predicate tbuseful:is_sneaking run scoreboard players set @s tea.musket_reload 0
    execute if predicate tbuseful:is_sneaking if data storage tea_party: itemID{hands:"muskets"} run function tea_party:item/weapon/muskets/reload/





# 1秒のtick処理
execute if entity @s[scores={tea.for_1sec=20..}] run function tea_party:player/1sec





# ストレージのお掃除
data remove storage tea_party: itemID.off
data remove storage tea_party: itemID.main
data remove storage tea_party: itemID.hands



