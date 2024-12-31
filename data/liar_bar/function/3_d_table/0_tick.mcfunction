#a桌主函数



scoreboard players add liar_bar_d_table_tick jijifujiji_liar_bar_variable 1
#给tick+1
execute if score liar_bar_d_table_tick jijifujiji_liar_bar_variable matches 20.. run function liar_bar:3_d_table/0.1_sec
#如果tick函数到了20以上就运行
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_click=101..103}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 1 run function liar_bar:3_d_table/2_mode with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按选择模式101赌命 、102饭团币、103坤坤币
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_join=100}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 2 run function liar_bar:3_d_table/3_join with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按加入游戏的玩家
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_click=1..10}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 4 run function liar_bar:3_d_table/5.3_random_player_turn_click with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按1到5 选择牌
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_join=100}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 4 run function liar_bar:3_d_table/6_select_deal with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按了出牌


$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_click=1..10}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 5 run function liar_bar:3_d_table/7.3_standard_turn_click with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按1到5 选择牌
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_d_table_join=99..100}] if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 5 run function liar_bar:3_d_table/7.5_standard_turn_question with storage minecraft:jijifujiji_liat_bar d_table_position
#检测按了出牌








#trigger jijifujiji_liar_bar_d_table_click set 100


#$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] run tellraw @s [{"text":"选择模式：","color":"yellow"},{"text":"【赌命模式】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_d_table_click set 101"},"hoverEvent":{"action":"show_text","value":"仅仅赌命"}},{"text":"【赌饭团币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_d_table_click set 102"},"hoverEvent":{"action":"show_text","value":"除了赌命还会额外赌一个饭团币"}},{"text":"【赌坤坤币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_d_table_click set 103"},"hoverEvent":{"action":"show_text","value":"除了赌命还会额外赌一个坤坤币"}}]
#解放区域的点击功能



