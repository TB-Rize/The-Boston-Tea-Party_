# tea_party:common/confirm
#
## @within anywhere

# 確認tellraw
$tellraw @s ["",{text:"本当に",bold:true,italic:true,color:"red"},{text:"$(func_name)",bold:true,italic:true,color:"yellow"},{text:"を実行しますか？",bold:true,italic:true,color:"green"}]
$tellraw @s ["",{text:"　　"},{text:"　←Back　",bold:true,italic:true,underlined:true,color:"red",click_event:{action:"run_command",command:"/function $(pre_func)"}},{text:"　　"},{text:"　Accept→　",bold:true,italic:true,underlined:true,color:"green",click_event:{action:"run_command",command:"/function $(func)"}}]

# 使い方
#   /function tea_party:common/confirm {pre_func:'temp:temp/temp1',func:'temp:temp/temp2',func_name:'s t:r i/n g'}
# 基本的にメニュー型で使用するもの
# pre_funcには前のメニュー画面へ戻るコマンドを、　funcは実際に実行すコマンドを、　func_nameは「本当に」で出てくる文字列のこと　例:「全防具立ての削除」
# 使用する際は必ず例のように単一引用符 ' を用いること　使用しなかった場合コマンド構文エラーとなる　\" を用いてもなぜかエラーが発生するため"は使用できない