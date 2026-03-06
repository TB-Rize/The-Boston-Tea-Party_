# tea_party:player/death
#
## @within tea_party:player/tick


# スコアリセット
scoreboard players set @s tea.dead 0
scoreboard players set @s tea.damage_resisted 0
scoreboard players set @s tea.stored_damage 0
scoreboard players set @s tea.stored_health 20

# 死んだので茶葉などは手放している
function tea_party:item/tools/tea_bag_rope/released
function tea_party:item/tools/task_rope/released

# HPが1のままなので回復しといてあげる
effect give @s minecraft:instant_health 1 5
effect give @s minecraft:saturation 1 100
#say "グエー死んだンゴ"

# 自分に音を鳴らす
playsound minecraft:item.mace.smash_ground_heavy master @s ~ ~ ~ 0.3 0.5
playsound minecraft:block.honey_block.step master @a[distance=0.2..10] ~ ~ ~ 1 1.6 0.5

# 血しぶきを出す
particle block{block_state:{Name:redstone_block}} ~ ~1.1 ~ 0 0 0 1 30
# スぺクにする
gamemode spectator @s

# 「耳」の処理
function tea_party:role/ingame/sp_agent/ear1 {done:"死亡"}
# エフェクト削除
effect clear @s minecraft:blindness
effect clear @s minecraft:slowness