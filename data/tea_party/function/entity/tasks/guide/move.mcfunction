# tea_party:entity/tasks/guide/move
#
## @within tea_party:entity/tasks/guide/summon_macro

#再帰処理のスコアが0なら弾速の値を代入
execute unless entity @s[scores={tea.bullet_Recursion=1..,tea.bullet_range=1..}] run scoreboard players operation @s tea.bullet_Recursion = @s tea.bullet_speed

#前方へtp(何故かat @sが必要)
execute at @s if entity @s[scores={tea.bullet_range=1..}] run tp @s ^ ^ ^0.5 ~ ~

#パーティクル
#execute at @s run function lunar_flare:projectile/attack/particle
$execute at @s run particle dust_color_transition{from_color:[0.04,0.84,1.0],to_color:[0.07,0.99,0.68],scale:1} ~ ~ ~ 0 0 0 0 1 normal @a[tag=tea.task_guide_temp,scores={tea.task_num=$(num)}]
#スコアを1減らす
scoreboard players remove @s tea.bullet_range 1
scoreboard players remove @s tea.bullet_Recursion 1

#再帰処理
$execute if entity @s[scores={tea.bullet_Recursion=1..,tea.bullet_range=1..}] run function tea_party:entity/tasks/guide/move {num:$(num)}

#飛距離限界に達したとき(銃と同じコマンドを再利用)
execute if entity @s[scores={tea.bullet_range=0}] run function tea_party:entity/bullet/land

