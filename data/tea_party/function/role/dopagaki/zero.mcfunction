# tea_party:role/dopagaki/zero
#
## @within tea_party:role/dopagaki/1sec


# ドパ値が0になったときの処理
damage @s 1000
# 1000ダメを食らい、死ぬ
tellraw @a ["",{selector:"@s",bold:true,italic:true,color:"aqua"},{text:"はドーパミン不足で死亡した",bold:true,italic:true,color:"gold"}]
#say a