#下一个玩家检测
#下一个玩家检测
#对于一号玩家


execute if entity @a[team=liar_bar_e_table,tag=e_table_1] as @a[team=liar_bar_e_table,tag=e_table_1] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add e_table_playing
execute if entity @a[team=liar_bar_e_table,tag=e_table_2] as @a[team=liar_bar_e_table,tag=e_table_2] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add e_table_playing
execute if entity @a[team=liar_bar_e_table,tag=e_table_3] as @a[team=liar_bar_e_table,tag=e_table_3] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add e_table_playing



############测试
#tellraw @a [{"text":"e_table_playing ","color":"red"},{"selector":"@a[tag=e_table_playing]","color":"red"},\
#{"text":"e_table_last   ","color":"gold"},{"selector":"@a[tag=e_table_last]","color":"gold"},\
#{"text":"   【【这是2-player4后】】","color":"green"}]

############测试





#execute if entity @a[team=liar_bar_e_table,tag=e_table_1] run return run tag @a[team=liar_bar_e_table,tag=e_table_1] add e_table_playing
#execute if entity @a[team=liar_bar_e_table,tag=e_table_2] run return run tag @a[team=liar_bar_e_table,tag=e_table_2] add e_table_playing
#execute if entity @a[team=liar_bar_e_table,tag=e_table_3] run return run tag @a[team=liar_bar_e_table,tag=e_table_3] add e_table_playing


#如果下一个号玩家存在就给下一个号玩家加一个正在玩的标签，否则运行下面的函数
#如果下下个玩家存在就给下下个玩家加标签  2不行就3 3不行就4 
