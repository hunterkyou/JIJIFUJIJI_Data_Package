#质疑或者继续
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.34
#音效
execute if score @s jijifujiji_liar_bar_a_table_join matches 99 run return run function liar_bar:3_a_table/8_open with storage minecraft:jijifujiji_liat_bar a_table_position
#如果质疑
execute if score @s jijifujiji_liar_bar_a_table_join matches 100 run return run function liar_bar:3_a_table/6_select_deal with storage minecraft:jijifujiji_liat_bar a_table_position
#如果出牌
