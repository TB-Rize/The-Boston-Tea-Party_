# tea_party:item/other/void_nexus/summon
#
## @within tea_party:null

# Void Nexusを召喚する関数

# tellraw
tellraw @s {text:"美しいヴォイドネクサスを設置",bold:true,italic:true,color:"light_purple"}

# 直接的な召喚処理はentityフォルダに一任
function tea_party:entity/void_nexus/summon

