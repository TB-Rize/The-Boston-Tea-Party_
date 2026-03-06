# tea_party:game/start/
#
## @within tea_party:game/start/countdown/


# ゲーム中にゲーム始めるん...?
execute if data storage tea_party: {Ingame:1b} run return fail


# リセット処理をする
function tea_party:game/reset/

# ゲーム開始をシステムで設定
data modify storage tea_party: Ingame set value 1b


# ロールアサイン
    # 観戦者は役職割り振り済みとしてタグを付与
    tag @a[gamemode=spectator] add tea.role_assigned
    tag @a remove tea.spectator
    tag @a[gamemode=spectator] add tea.spectator

    # ロールアサインのためのスコアボードを用意する
    scoreboard objectives remove tea.temp_int
    scoreboard objectives add tea.temp_int dummy "紅茶：一時整数"

    # 役職数を一時的に保存するスコアを一時整数に保存する
    execute store result score #role_agent tea.temp_int run scoreboard players get #agent tea.use_role
    execute store result score #role_special_agent tea.temp_int run scoreboard players get #special_agent tea.use_role
    execute store result score #role_sam tea.temp_int run scoreboard players get #sam tea.use_role

    # 役職割り振り(観戦者には行われない)
    function tea_party:role/assign/


# プレイヤー関連処理
    # ゲームモード変更
    gamemode adventure @a[gamemode=!spectator]

    # アイテムクリア
    clear @a[gamemode=!spectator]

    # effec付与
    effect give @a minecraft:resistance infinite 4 true

    # 音鳴らし
    execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.5 1.6

    # タスクロープ渡し
    loot give @a[gamemode=!spectator] loot tea_party:task_rope


# 各種貨物のスポーン位置を隠す
function tea_party:entity/tea_bag_spawn_point/hide
function tea_party:entity/tasks/spawn/hide

# 設定用樽にロックをかける
execute as @e[tag=tea.trader_setting_marker] at @s run data merge block ~ ~ ~ {lock:{predicates:{custom_data:{LockID:1}}}}

# 商人を召喚
function tea_party:entity/villager/trader/summon

# スコア設定
function tea_party:game/start/scores

# 時間制限
function tea_party:game/times/set_time/

# ボスバー系
function tea_party:game/ships/ready_bossbar

# サイドバー更新
function tea_party:game/times/sidebar/start

# わざわざ2tickぐらい遅らせてミニヒールをする すべてはスコアボード作成時直後から動作しないtea.health_amountのせい
schedule function tea_party:game/start/mini_heal 2t

# 観戦者にtitleを流す
title @a[tag=tea.spectator] times 20 40 20
title @a[tag=tea.spectator] subtitle {text:"見て楽しもう",bold:true,italic:true,color:"yellow"}
title @a[tag=tea.spectator] title {text:"観戦",bold:true,italic:true,color:"green"}


