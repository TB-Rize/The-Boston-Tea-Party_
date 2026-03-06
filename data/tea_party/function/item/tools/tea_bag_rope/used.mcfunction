# tea_party:item/tools/tea_bag_rope/used
#
## @within tea_party:player/tick

# 自分にタグ付け
tag @s add tea.temp


# スコア設定←半径2以内に茶葉が見つからなかった場合このスコアがそのままになっているが、直すのがだるいので無視
scoreboard players set @s tea.tea_bag_is_carrying 1
# 半径2以内の茶葉の本体に自分を登録する
execute as @n[tag=tea.tea_bag_body,distance=..2,sort=nearest,limit=1] at @s run function tea_party:entity/tea_bag/register

# タグ掃除
tag @s remove tea.temp

