# tea_party:install/
#
## 手動インストール

# tellrawを流す
tellraw @a ["",{text:"The Boston Tea Party",bold:true,italic:true,color:"gold"},{text:"はインストールされました",color:"white"}]

# インストール済みフラグを立てる
data modify storage tea_party: Installed set value 1b

# score宣言
# 1~100 工作員　101~200 サンズオブリバティ
scoreboard objectives add tea.role_num dummy "紅茶：役職番号"
scoreboard objectives add tea.int dummy "紅茶：整数"
scoreboard objectives add tea.setting dummy "紅茶：設定"
scoreboard objectives add tea.info dummy {text:"紅茶 : 情報",bold:true,italic:true,color:"red"}
scoreboard objectives add tea.time_limit dummy "紅茶：時間制限"
scoreboard objectives add tea.use_role dummy "紅茶：使う役職"
scoreboard objectives add tea.escaped dummy "紅茶：脱出した船の数"
scoreboard objectives add tea.ship_plundered dummy "紅茶 : 茶葉を完全に落とされた船の数"
scoreboard objectives add tea.operator dummy "紅茶：ゲームマスター識別スコア"
scoreboard objectives add tea.tea_bag_number dummy "紅茶：茶葉を捨てる最低数"
scoreboard objectives add tea.tea_bag_having_id dummy "紅茶：茶葉所有者の茶葉id"
scoreboard objectives add tea.tea_bag_id dummy "紅茶：茶葉id"
scoreboard objectives add tea.tea_bag_is_carrying dummy "紅茶：茶葉もっているかどうか"
scoreboard objectives add tea.tea_bag_quantity dummy "紅茶：茶葉の残量"
scoreboard objectives add tea.trader_offers_num dummy "紅茶：配列番号"
scoreboard objectives add tea.dead dummy "紅茶 : 死んだかどうか"
scoreboard objectives add tea.damage_resisted minecraft.custom:minecraft.damage_resisted "紅茶 : 防いだダメージ数(10倍計上)"
scoreboard objectives add tea.stored_damage dummy "紅茶 : 防いだダメージ数のコピー"
scoreboard objectives add tea.health_amount health "紅茶 : HP残量"
scoreboard objectives add tea.stored_health dummy "紅茶 : HP残量のコピー"
scoreboard objectives add tea.task_id dummy "紅茶 : タスク関連処理ID"
scoreboard objectives add tea.task_is_carrying dummy "紅茶 : タスク荷物の担ぎ確認"
scoreboard objectives add tea.task_num dummy "紅茶 : タスク番号"
scoreboard objectives add tea.task_reward_amount dummy "紅茶 : 与える10UKポンドの数"
scoreboard objectives add tea_debug.p_num dummy "紅茶 : デバッグ用プレイヤー番号"
scoreboard objectives add tea_debug.int dummy "紅茶 : デバッグ用整数"
scoreboard objectives add tea.musket_shot_tick dummy "紅茶 : 発射時の遅延のためだけのスコア"
scoreboard objectives add tea.musket_reload dummy "紅茶 : リロードtick"
scoreboard objectives add tea.bullet_speed dummy "紅茶 : 弾速"
scoreboard objectives add tea.bullet_range dummy "紅茶 : 飛距離"
scoreboard objectives add tea.bullet_Recursion dummy "紅茶 : 再帰処理"
scoreboard objectives add tea.bullet_resist dummy "紅茶 : 弾丸耐性"
scoreboard objectives add tea.item_is_using dummy "紅茶：使用中"
scoreboard objectives add tea.item_used dummy "紅茶：使用済み"
scoreboard objectives add tea.for_1sec dummy "紅茶 : 1秒計測用tick"
scoreboard objectives add tea.knife_down_time dummy "紅茶 : ナイフを手に持てる時間"





# score設定
scoreboard players set #0 tea.int 0
scoreboard players set #10 tea.int 10
scoreboard players set #20 tea.int 20
scoreboard players set #60 tea.int 60
scoreboard players set #600 tea.int 600
scoreboard players set #1200 tea.int 1200

# 役職数設定
#scoreboard players set #agent tea.use_role 0
#scoreboard players set #special_agent tea.use_role 0
#scoreboard players set #sons_of_liberty tea.use_role 0
#scoreboard players set #sam tea.use_role 0

# effect 処理
    # 無駄な回復をすることでtea.health_amountにhpを検知させる(これをしないとスコアが空になってしまう)
    effect give @a minecraft:instant_health 1 1