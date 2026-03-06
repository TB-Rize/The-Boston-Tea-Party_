# tea_party:tick
#
## default

# プレイヤーの1秒処理(分離したほうが軽量であると判断)
scoreboard players add @a tea.for_1sec 1
# プレイヤーのtick処理
execute as @a at @s run function tea_party:player/tick

# エンティティのtick処理
function tea_party:entity/tick

# ゲームのtick処理
function tea_party:game/tick

# ヘイローの処理
function halo:tick