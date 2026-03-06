# tea_party:advancement/scabbard
#
## @within advancement

# 進捗処理
advancement revoke @s only tea_party:scabbard

# タグ付け
tag @s add scabbard_temp


# 30秒スコアを設定
scoreboard players set @s tea.knife_down_time 603

# 周囲の人間をスタンさせる
execute as @a[distance=..15,tag=!scabbard_temp,tag=!tea.spectator,gamemode=adventure] at @s run function tea_party:item/weapon/agent_knife/fear

# なんとなく観戦者用tellraw
tellraw @a[tag=tea.spectator] ["",{selector:"@s",bold:true,italic:true,color:"green"},{text:"が",bold:true,italic:true,color:"aqua"},{text:"工作員用暗殺刀を抜刀しました",bold:true,italic:true,color:"red"}]

# 自分だけ強化
effect give @s minecraft:invisibility 20 1 true
effect give @s minecraft:speed 20 3 true

# ヘイローを外す
scoreboard players set @s halo.duration 2

# 音も鳴らす
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.2 1
# 「耳」の処理
function tea_party:role/ingame/sp_agent/ear1 {done:"抜刀しました"}
# アイテム処理(なぜかアドベンチャーモードでは使えないので独立させる)
schedule function tea_party:item/weapon/agent_knife/schedule_get 2t
#loot give @s loot tea_party:weapon/knife
