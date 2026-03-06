# tea_party:entity/bullet/move
#
## @within tea_party:entity/tick

# 弾丸は自分の位置でこのコマンドを実行している




#再帰処理のスコアが0なら弾速の値を代入
execute unless entity @s[scores={tea.bullet_Recursion=1..,tea.bullet_range=1..}] run scoreboard players operation @s tea.bullet_Recursion = @s tea.bullet_speed

#前方へtp(何故かat @sが必要)
execute at @s if entity @s[scores={tea.bullet_range=1..}] run tp @s ^ ^ ^0.5 ~ ~

#パーティクル
#execute at @s run function lunar_flare:projectile/attack/particle
execute at @s run particle dust_color_transition{from_color:[1.0,0.68,0.0],to_color:[0.98,0.84,0.6],scale:0.6} ~ ~ ~ 0 0 0 0 1 force @a[distance=..120]
#スコアを1減らす
scoreboard players remove @s tea.bullet_range 1
scoreboard players remove @s tea.bullet_Recursion 1

#エンティティ衝突判定
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[gamemode=!spectator,type=!marker,dx=0,scores={tea.bullet_resist=..0}] run function tea_party:entity/bullet/hit


#対物衝突判定
execute at @s unless block ~ ~ ~ air run function tea_party:entity/bullet/land

#再帰処理
execute if entity @s[scores={tea.bullet_Recursion=1..,tea.bullet_range=1..}] run function tea_party:entity/bullet/move

#飛距離限界に達したとき
execute if entity @s[scores={tea.bullet_range=0}] run function tea_party:entity/bullet/land

