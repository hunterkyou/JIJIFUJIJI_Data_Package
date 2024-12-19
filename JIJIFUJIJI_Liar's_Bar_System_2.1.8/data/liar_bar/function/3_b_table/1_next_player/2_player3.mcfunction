#下一个玩家检测


execute if entity @a[team=liar_bar_b_table,tag=b_table_4] as @a[team=liar_bar_b_table,tag=b_table_4] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add b_table_playing
execute if entity @a[team=liar_bar_b_table,tag=b_table_1] as @a[team=liar_bar_b_table,tag=b_table_1] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add b_table_playing
execute if entity @a[team=liar_bar_b_table,tag=b_table_2] as @a[team=liar_bar_b_table,tag=b_table_2] if score @s jijifujiji_liar_bar_variable matches 1.. run return run tag @s add b_table_playing




############测试
#tellraw @a [{"text":"b_table_playing ","color":"red"},{"selector":"@a[tag=b_table_playing]","color":"red"},\
#{"text":"b_table_last   ","color":"gold"},{"selector":"@a[tag=b_table_last]","color":"gold"},\
#{"text":"   【【这是2-player3后】】","color":"green"}]

############测试


#execute if entity @a[team=liar_bar_b_table,tag=b_table_4] run return run tag @a[team=liar_bar_b_table,tag=b_table_4] add b_table_playing
#execute if entity @a[team=liar_bar_b_table,tag=b_table_1] run return run tag @a[team=liar_bar_b_table,tag=b_table_1] add b_table_playing
#execute if entity @a[team=liar_bar_b_table,tag=b_table_2] run return run tag @a[team=liar_bar_b_table,tag=b_table_2] add b_table_playing



#如果下一个号玩家存在就给下一个号玩家加一个正在玩的标签，否则运行下面的函数
#如果下下个玩家存在就给下下个玩家加标签  2不行就3 3不行就4 
