# tea_party:game/ships/r_bossbar_macro
#
## @within tea_party:game/ships/ready_bossbar

# 最大値をストレージに保存された値に変更
$bossbar set dartmouth max $(x)
$bossbar set eleanor max $(x)
$bossbar set beaver max $(x)

# 中身も最大値に引き上げる
$bossbar set dartmouth value $(x)
$bossbar set eleanor value $(x)
$bossbar set beaver value $(x)