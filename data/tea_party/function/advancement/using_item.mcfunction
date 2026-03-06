# tea_party:advancement/using_item
#
## 正確なこの関数の名前tea_party:function/using_item
## advancementの報酬関数
## @within tea_party:advancement

# まず、進捗のリセット
advancement revoke @s only tea_party:using_item

# スコア付与(それぞれ継続使用と使用した事実のみを記録)
scoreboard players add @s tea.item_is_using 1
scoreboard players set @s tea.item_used 1
