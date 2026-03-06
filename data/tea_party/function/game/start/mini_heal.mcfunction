# tea_party:/game/start/mini_heal
#
## @within tea_party:game/start/

# 無駄な衝撃吸収を与えることでtea.health_amountにhpを検知させる(これをしないとスコアが空になってしまう)
effect give @a minecraft:absorption 1 0 true
# 一応全回復もこれでやっておく
effect give @a minecraft:instant_health 1 5
effect give @a minecraft:saturation 1 100