# tea_party:role/ingame/sp_agent/ear1
#
## @within somewhere

# 特殊工作員の持つ機関「耳」の処理1

# 特殊工作員自身は別に言わなくてよい
execute if score @s tea.role_num matches 7 run return fail
#execute if score @s tea.role_num matches 7 run say oh
# セレクターが@sであると自明なものにはこちらの方がよい
$tellraw @a[scores={tea.role_num=7}] ["",{text:"「耳」構成員: ",bold:true,italic:true,color:"red"},{text:"「",bold:true,italic:true,color:"white"},{selector:"@s",bold:true,italic:true,color:"gold"},{text:"が",bold:true,italic:true,color:"aqua"},{text:"$(done)",color:"green"},{text:"」",bold:true,italic:true,color:"white"}]
#$(done)に文字列が入力される