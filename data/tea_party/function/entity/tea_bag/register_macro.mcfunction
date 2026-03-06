# tea_party:entity/tea_bag/register_macro
#
## @within tea_party:entity/tea_bag/register


# 音鳴らし
playsound minecraft:item.armor.equip_leather master @a[tag=tea.temp] ~ ~ ~ 2

# 既に持っている奴から奪い取る
$execute as @a[scores={tea.tea_bag_having_id=$(id)}] run function tea_party:item/tools/tea_bag_rope/released
# ロープ実行者と茶葉をidで紐づける　ロープだけに（笑）
$scoreboard players set @a[tag=tea.temp] tea.tea_bag_having_id $(id)

execute if entity @s[tag=tea.tea_bag_beaver] run function tea_party:game/ships/raid_start/beaver
execute if entity @s[tag=tea.tea_bag_eleanor] run function tea_party:game/ships/raid_start/eleanor
execute if entity @s[tag=tea.tea_bag_dartmouth] run function tea_party:game/ships/raid_start/dartmouth