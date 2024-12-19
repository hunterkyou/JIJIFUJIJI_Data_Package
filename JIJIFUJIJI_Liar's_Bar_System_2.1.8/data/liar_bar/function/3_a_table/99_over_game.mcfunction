#结束活动

execute if score a_table_mode jijifujiji_liar_bar_variable matches 1 run return run function liar_bar:3_a_table/98_kill_all with storage minecraft:jijifujiji_liat_bar a_table_position
#如果是模式1就结束游戏

execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run tag @a[team=liar_bar_a_table,limit=1,sort=random] add liar_bar_a_table_online
#给队伍随机人加标签
execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run team leave @a[team=liar_bar_a_table]
#给队伍所有人退队
execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run team join liar_bar_a_table @a[tag=liar_bar_a_table_online]
#把标签玩家加回队伍
execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run tag @a remove liar_bar_a_table_online
#所有人删除标签
$execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"有人拉了结束按钮，将会导致随机玩家成为胜者！","color":"yellow"}]
#游戏被结束辣
execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run return run function liar_bar:3_a_table/9_win with storage minecraft:jijifujiji_liat_bar a_table_position
#直接运行胜利函数

#$execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"赌了货币，无法结束。","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]