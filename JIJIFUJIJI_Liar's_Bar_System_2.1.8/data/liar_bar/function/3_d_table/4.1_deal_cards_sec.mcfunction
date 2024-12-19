#2阶段每秒一次
scoreboard players set liar_bar_d_table_temp jijifujiji_liar_bar_variable 45
#临时变量=45
execute store result bossbar minecraft:jijifujiji_liar_bar_d_table_time value run scoreboard players operation liar_bar_d_table_temp jijifujiji_liar_bar_variable -= liar_bar_d_table_time jijifujiji_liar_bar_variable
#45-time=temp  ，并录入
bossbar set jijifujiji_liar_bar_d_table_time name [{"text":"正在发牌...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_d_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
$bossbar set jijifujiji_liar_bar_d_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#更新boss条初始状态   liar_bar_d_table_number为已加入游戏的人数
execute if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 45 run function liar_bar:3_d_table/5_random_player_turn with storage minecraft:jijifujiji_liat_bar d_table_position
#时间到了后 随机玩家出牌
