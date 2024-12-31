#下一个玩家检测


############测试
#tellraw @a [{"text":"e_table_playing ","color":"red"},{"selector":"@a[tag=e_table_playing]","color":"red"},\
#{"text":"e_table_last   ","color":"gold"},{"selector":"@a[tag=e_table_last]","color":"gold"},\
#{"text":"   【【这是1-player前】】","color":"green"}]

############测试

tag @a remove e_table_last
#删除上一个玩家的标签
tag @s add e_table_last
#设置当前玩家变成上一个玩家
tag @a remove e_table_playing
#给所有玩家清除正在玩的标签

execute if entity @a[team=liar_bar_e_table,tag=e_table_1] as @a[team=liar_bar_e_table,tag=e_table_1] store result score @s jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player1]
execute if entity @a[team=liar_bar_e_table,tag=e_table_2] as @a[team=liar_bar_e_table,tag=e_table_2] store result score @s jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player2]
execute if entity @a[team=liar_bar_e_table,tag=e_table_3] as @a[team=liar_bar_e_table,tag=e_table_3] store result score @s jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player3]
execute if entity @a[team=liar_bar_e_table,tag=e_table_4] as @a[team=liar_bar_e_table,tag=e_table_4] store result score @s jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player4]
#录入玩家剩余手牌数量
execute if entity @s[team=liar_bar_e_table,tag=e_table_1] run return run function liar_bar:3_e_table/1_next_player/2_player1 with storage minecraft:jijifujiji_liat_bar e_table_position
execute if entity @s[team=liar_bar_e_table,tag=e_table_2] run return run function liar_bar:3_e_table/1_next_player/2_player2 with storage minecraft:jijifujiji_liat_bar e_table_position
execute if entity @s[team=liar_bar_e_table,tag=e_table_3] run return run function liar_bar:3_e_table/1_next_player/2_player3 with storage minecraft:jijifujiji_liat_bar e_table_position
execute if entity @s[team=liar_bar_e_table,tag=e_table_4] run return run function liar_bar:3_e_table/1_next_player/2_player4 with storage minecraft:jijifujiji_liat_bar e_table_position
#根据不同的玩家进行不同的动作


############测试
#tellraw @a [{"text":"e_table_playing ","color":"red"},{"selector":"@a[tag=e_table_playing]","color":"red"},\
#{"text":"e_table_last   ","color":"gold"},{"selector":"@a[tag=e_table_last]","color":"gold"},\
#{"text":"   【【这是1-player后】】","color":"green"}]
############测试