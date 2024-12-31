#时间到了

#say 运行时间到了出牌
tag @e[tag=d_table_card_on_center,tag=d_table_card_select] remove d_table_card_on_center
tag @e remove d_table_card_select
#清除前面加的标签
function liar_bar:3_d_table/6.4_select_deal_time_over_ai with storage minecraft:jijifujiji_liat_bar d_table_position
#运行AI选牌函数
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_select] add d_table_card_on_center
#给选中的加另一个标签
execute store result score liar_bar_d_table_temp jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_select]
#计算本轮出牌数量
function liar_bar:3_d_table/6.2_select_deal_success with storage minecraft:jijifujiji_liat_bar d_table_position
#运行出牌

#出牌