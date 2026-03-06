# tea_party:role/ingame/sp_agent/ear2
#
## @within somewhere

# 特殊工作員の持つ機関「耳」の処理2
# セレクターも変数で受ける
#{Selector}に対象セレクターを、{done}に文字列を入力する
#例 : {Selector:"@a[scores={tea.role_num=1}]",done:"抜刀しました"}
# 現在セレクターに変数を使ってもうまくいかないためお蔵入り
$tellraw @s ["",{text:"「耳」構成員: ",bold:true,italic:true,color:"red"},{text:"「",bold:true,italic:true,color:"white"},{selector:$(Selector),bold:true,italic:true,color:"gold"},{text:"が",bold:true,italic:true,color:"aqua"},{text:"$(done)",color:"green"},{text:"」",bold:true,italic:true,color:"white"}]