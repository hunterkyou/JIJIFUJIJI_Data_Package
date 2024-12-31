#下一个玩家检测


#下一个玩家检测
#对于一号玩家


execute if entity @a[team=liar_bar_a_table,tag=a_table_3] as @a[team=liar_bar_a_table,tag=a_table_3] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add a_table_playing
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] as @a[team=liar_bar_a_table,tag=a_table_4] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add a_table_playing
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] as @a[team=liar_bar_a_table,tag=a_table_1] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add a_table_playing

############测试
#tellraw @a [{"text":"a_table_playing ","color":"red"},{"selector":"@a[tag=a_table_playing]","color":"red"},\
#{"text":"a_table_last   ","color":"gold"},{"selector":"@a[tag=a_table_last]","color":"gold"},\
#{"text":"   【【这是2-player2后】】","color":"green"}]

############测试







#execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run return run tag @a[team=liar_bar_a_table,tag=a_table_3] add a_table_playing
#execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run return run tag @a[team=liar_bar_a_table,tag=a_table_4] add a_table_playing
#execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run return run tag @a[team=liar_bar_a_table,tag=a_table_1] add a_table_playing
#如果下一个号玩家存在就给下一个号玩家加一个正在玩的标签，否则运行下面的函数
#如果下下个玩家存在就给下下个玩家加标签  2不行就3 3不行就4 
