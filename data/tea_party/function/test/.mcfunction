# test
#
#

$execute as @a[tag=test.$(test)] run say oo
$function tea_party:test/$(test)
$scoreboard players get #test$(test) tea.int
$tellraw @s {score:{name:"#test$(test)",objective:"tea.int"},color:"green"}