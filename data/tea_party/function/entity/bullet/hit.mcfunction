# tea_party:entity/bullet/hit
#
## @within tea_party:entity/bullet/move

# ダメージを与える(エンティティを検知しないとこれは発動しないので最も近いエンティティを対象とする)
damage @e[gamemode=!spectator,type=!marker,limit=1,sort=nearest,scores={tea.bullet_resist=..0}] 18 minecraft:generic
# 弾の役割はもう終わった
kill @s
