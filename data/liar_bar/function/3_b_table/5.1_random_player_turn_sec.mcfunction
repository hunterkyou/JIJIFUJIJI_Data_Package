#4阶段每秒一次
scoreboard players set liar_bar_b_table_temp jijifujiji_liar_bar_variable 75
#临时变量=45
execute store result bossbar minecraft:jijifujiji_liar_bar_b_table_time value run scoreboard players operation liar_bar_b_table_temp jijifujiji_liar_bar_variable -= liar_bar_b_table_time jijifujiji_liar_bar_variable
#45-time=temp  ，并录入
bossbar set jijifujiji_liar_bar_b_table_time name [{"selector":"@a[team=liar_bar_b_table,tag=b_table_playing]]","color":"gold","bold":true},{"text":"的回合...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_b_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
$bossbar set jijifujiji_liar_bar_b_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#更新boss条初始状态   liar_bar_b_table_number为已加入游戏的人数

#execute if score liar_bar_b_table_time jijifujiji_liar_bar_variable matches 75 run ######say 1
#execute if score liar_bar_b_table_time jijifujiji_liar_bar_variable matches 75 as @a[team=liar_bar_b_table,tag=b_table_playing] run function liar_bar:3_b_table/6.3_select_deal_time_over with storage minecraft:jijifujiji_liat_bar b_table_position
execute if score liar_bar_b_table_time jijifujiji_liar_bar_variable matches 75 if entity @a[team=liar_bar_b_table,tag=b_table_playing] as @a[team=liar_bar_b_table,tag=b_table_playing] run return run function liar_bar:3_b_table/6.3_select_deal_time_over with storage minecraft:jijifujiji_liat_bar b_table_position
#如果当前玩家存在，时间到了，自动给你随机出牌
execute if score liar_bar_b_table_time jijifujiji_liar_bar_variable matches 75 unless entity @a[team=liar_bar_b_table,tag=b_table_playing] run function liar_bar:3_b_table/96_offline_reset with storage minecraft:jijifujiji_liat_bar b_table_position
#如果时间到了，当前玩家也不存在，就运行重新开始对局的函数

