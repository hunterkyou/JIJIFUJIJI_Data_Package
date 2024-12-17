#时间到了

#say 运行时间到了出牌
tag @e[tag=card_on_center,tag=card_select] remove card_on_center
tag @e remove card_select
#清除前面加的标签
function liar_bar:3_a_table/6.4_select_deal_time_over_ai with storage minecraft:jijifujiji_liat_bar a_table_position
#运行AI选牌函数
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_a_table_card,tag=card_select] add card_on_center
#给选中的加另一个标签
execute store result score liar_bar_a_table_temp jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_a_table_card,tag=card_select]
#计算本轮出牌数量
function liar_bar:3_a_table/6.2_select_deal_success with storage minecraft:jijifujiji_liat_bar a_table_position
#运行出牌

#出牌