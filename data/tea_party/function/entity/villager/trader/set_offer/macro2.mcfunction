# tea_party:entity/villager/trader/set_offer/macro2
#
## tea_party:entity/villager/trader/set_offer/macro

# 取引をセット
$execute as @e[tag=tea.trader] run data modify entity @s Offers.Recipes append value {buy:$(s1),sell:$(s2),maxUses:1024,uses:0}
