# tea_party:item/tools/tea_bag_rope/released
# ロープを手から放した時の処理
## @within tea_party:player/tick

# スコア剥奪
scoreboard players set @s tea.tea_bag_is_carrying -1
scoreboard players set @s tea.tea_bag_having_id -1

