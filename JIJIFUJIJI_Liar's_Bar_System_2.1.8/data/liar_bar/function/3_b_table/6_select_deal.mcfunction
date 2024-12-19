#点了按钮
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.34
#音效


execute store result score liar_bar_b_table_temp jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_b_table_card,tag=b_table_card_select]
#计算本轮出牌数量
execute if entity @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_b_table_card,tag=b_table_card_select,tag=card_demon] if score liar_bar_b_table_temp jijifujiji_liar_bar_variable matches 2.. run tellraw @s [{"text":"恶魔牌只可以单出！！请重新出牌！","color":"green"}]
#如果出的牌里有恶魔牌demon，并且总数大于等于2，就选语言提示
execute if entity @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_b_table_card,tag=b_table_card_select,tag=card_demon] if score liar_bar_b_table_temp jijifujiji_liar_bar_variable matches 2.. run return run function liar_bar:3_b_table/6.1_select_deal_fail with storage minecraft:jijifujiji_liat_bar b_table_position
#如果出的牌里有恶魔牌demon，并且总数大于等于2，就运行失败函数，否则就继续


execute unless score liar_bar_b_table_temp jijifujiji_liar_bar_variable matches 1..3 run tellraw @s [{"text":"出牌数量应为1到3张！请重新出牌！","color":"green"}]
#如果出牌不是在1..3就失败，否则就
execute unless score liar_bar_b_table_temp jijifujiji_liar_bar_variable matches 1..3 run return run function liar_bar:3_b_table/6.1_select_deal_fail with storage minecraft:jijifujiji_liat_bar b_table_position
#如果出牌不是在1..3就失败，否则就
return run function liar_bar:3_b_table/6.2_select_deal_success with storage minecraft:jijifujiji_liat_bar b_table_position
#否则就成功了

