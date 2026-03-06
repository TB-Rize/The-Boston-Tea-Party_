# tea_party:item/tools/detective_form/someone_used
#
## @within tea_party:advancement/detective_form

# 誰かが探偵調査依頼書を使ったのでそいつにUIを送ってあげる
# このコマンドはexecute asで実行されているため実行者は調査依頼書を使っていない方の人
#tea_party: detective_names.str

# 名前をストレージに保存する(インベントリ操作が発生)
function tea_party:item/tools/detective_form/get_name

# tea_party: detective_names.str というストレージに名前が保存されたのでこれらをベースにマクロを実行
function tea_party:item/tools/detective_form/tellraw1_macro with storage tea_party: detective_names

# ストレージのお掃除
data remove storage tea_party: detective_names

