# tea_party:entity/void_nexus/summon
#
# @within tea_party:item/other/void_nexus/summon

# ヴォイドネクサスを設置　タグアサインは今実装しない
summon minecraft:armor_stand ~ ~ ~ {Tags:["tea.id_unassigned","tea.void_nexus_body","tea.void_nexus"],attributes:[{base:0.4d,id:"minecraft:scale"}],Invisible:1b}
summon minecraft:block_display ~ ~0.4 ~ {Tags:["tea.bdisplay","tea.void_nexus_box","tea.id_unassigned"],brightness:{sky:15,block:15},teleport_duration:1,block_state:{Name:"minecraft:calibrated_sculk_sensor"},billboard:"fixed",transformation:{left_rotation:{angle:0,axis:[0,0,0]},translation:[-0.4f, -0.4f, -0.4f],right_rotation:{angle:0,axis:[0,0,0]},scale: [1.1f, 1.1f, 1.1f]}}