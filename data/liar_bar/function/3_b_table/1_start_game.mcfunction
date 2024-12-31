#开始游戏的按钮，这将用于后续的传参


execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.x
#读取x坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 9
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.x1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给x1坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.y
#读取y坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 1
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.y1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给y1坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.z
#读取z坐标到临时值
scoreboard players remove liar_bar_temp jijifujiji_liar_bar_variable 9
#给临时值-9
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.z1 int 1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给z1坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.x 10
#读取x坐标到临时值并*10
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 5
#给临时值+5
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.x2 double 0.1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给x2坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.y 10000
#读取y坐标到临时值并*10000
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 10625
#给临时值+10625
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.y2 double 0.0001 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给y2坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar b_table_position.z 10
#读取z坐标到临时值并*10
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 5
#给临时值+5
execute store result storage minecraft:jijifujiji_liat_bar b_table_position.z2 double 0.1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给z2坐标进行赋值

function liar_bar:3_b_table/1.1_start_game_exe with storage minecraft:jijifujiji_liat_bar b_table_position

