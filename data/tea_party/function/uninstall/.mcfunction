# tea_party:uninstall/
#
# 手動アンインストール

# ゲームマスター以外はこの操作を行えないようにする
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run tellraw @s ["",{text:"ゲーム管理者以外はこの操作を行うことはできません",color:"red"},{text:"\n"}]
execute unless entity @s[tag=tea.operator,scores={tea.operator=1}] run return fail

# ゲーム中にアンインストールするな
execute if data storage tea_party: {Ingame:1b} run return fail

# tellrawを流す
tellraw @a ["",{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"はアンインストールされました",color:"white"}]

# アンインストール済みフラグを立てる
data modify storage tea_party: Installed set value 0b
# score削除
scoreboard objectives remove tea.role_num
scoreboard objectives remove tea.int
scoreboard objectives remove tea.setting
scoreboard objectives remove tea.info
#scoreboard objectives remove tea.time_limit
#scoreboard objectives remove tea.use_role
scoreboard objectives remove tea.escaped
#scoreboard objectives remove tea.tea_bag_number
scoreboard objectives remove tea.tea_bag_having_id
scoreboard objectives remove tea.item_is_using
scoreboard objectives remove tea.item_used
scoreboard objectives remove tea.tea_bag_is_carrying
scoreboard objectives remove tea.temp_int
scoreboard objectives remove tea.tea_bag_id
scoreboard objectives remove tea.tea_bag_quantity
scoreboard objectives remove tea.trader_offers_num
scoreboard objectives remove tea.trader_offers_item_amount
scoreboard objectives remove tea.damage_resisted
scoreboard objectives remove tea.health_amount
scoreboard objectives remove tea.stored_health
scoreboard objectives remove tea.stored_damage
scoreboard objectives remove tea.task_id
scoreboard objectives remove tea.task_is_carrying
scoreboard objectives remove tea.task_num
#scoreboard objectives remove tea.task_reward_amount
scoreboard objectives remove tea.musket_shot_tick
scoreboard objectives remove tea.musket_reload
scoreboard objectives remove tea.bullet_speed
scoreboard objectives remove tea.bullet_range
scoreboard objectives remove tea.bullet_Recursion
scoreboard objectives remove tea.bullet_resist