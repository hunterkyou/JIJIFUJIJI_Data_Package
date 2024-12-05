#开始游戏的按钮，这将用于后续的传参


execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.x
#读取x坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 9
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.x1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给x1坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.y
#读取y坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 1
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.y1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给y1坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.z
#读取z坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 9
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.z1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给z1坐标进行赋值

function liar_bar:3_a_table/1.1_start_game_execute with storage minecraft:jijifujiji_liat_bar a_table_position
#使用新的赋值坐标去运行开始函数

#$scoreboard players enable @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] jijifujiji_liar_bar_a_table_click



#中心点位置是x y z
#  x1=x-9
#  y1=y-1
#  z1=z-9

# X data get storage minecraft:jijifujiji_liat_bar a_table_position.x

#



