#开


execute if entity @e[tag=liar_bar_e_table_card,type=minecraft:item_display,tag=card_demon,tag=e_table_card_on_center,tag=card_gaming] run return run function liar_bar:3_e_table/2_open_turn_result/1_demon with storage minecraft:jijifujiji_liat_bar e_table_position
#如果出了恶魔牌
execute if entity @e[tag=liar_bar_e_table_card,type=minecraft:item_display,tag=!card_main_gaming,tag=e_table_card_on_center,tag=card_gaming] run return run function liar_bar:3_e_table/2_open_turn_result/2_not_main with storage minecraft:jijifujiji_liat_bar e_table_position
#如果存在tag=!card_main_gaming,tag=e_table_card_on_center （非主牌、中心牌）就开枪函数
return run function liar_bar:3_e_table/2_open_turn_result/3_main with storage minecraft:jijifujiji_liat_bar e_table_position
#如果以上都不是就给正在玩的当前玩家设置标签


