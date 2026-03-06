# tea_party:item/tools/detective_form/get_name
#
## @within tea_party:item/tools/detective_form/someone_used


# 自分の頭を調査実行者に送る
loot replace entity @a[tag=tea.detective_temp,limit=1] weapon.mainhand loot tea_party:head
# その頭には自分の名前が文字列として含まれているのでそこから名前を抽出する
data modify storage tea_party: detective_names.str set from entity @a[tag=tea.detective_temp,limit=1] SelectedItem.components."minecraft:profile".name