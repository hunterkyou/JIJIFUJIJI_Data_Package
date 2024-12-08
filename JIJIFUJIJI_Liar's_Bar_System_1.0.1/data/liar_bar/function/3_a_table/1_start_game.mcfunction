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

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.x 10
#读取x坐标到临时值并*10
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 5
#给临时值+5
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.x2 double 0.1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给x2坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.y 10000
#读取y坐标到临时值并*10000
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 10625
#给临时值+10625
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.y2 double 0.0001 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给y2坐标进行赋值

execute store result score liar_bar_temp jijifujiji_liar_bar_variable run data get storage minecraft:jijifujiji_liat_bar a_table_position.z 10
#读取z坐标到临时值并*10
scoreboard players add liar_bar_temp jijifujiji_liar_bar_variable 5
#给临时值+5
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.z2 double 0.1 run scoreboard players get liar_bar_temp jijifujiji_liar_bar_variable
#给z2坐标进行赋值


#开始游戏的按钮，这将用于后续的传参
scoreboard objectives add jijifujiji_liar_bar_a_table_click trigger ["A桌的按键检测"]
#新建一个按键检测系统
scoreboard players set liar_bar_a_table_stage jijifujiji_liar_bar_variable 1
#到1阶段
scoreboard players set liar_bar_a_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_a_table_time jijifujiji_liar_bar_variable 0
#秒为0
scoreboard players set a_table_mode jijifujiji_liar_bar_variable 1
#先设置模式为模式1
$scoreboard players enable @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] jijifujiji_liar_bar_a_table_click
#让范围内的玩家可以点按钮
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] run tellraw @s [{"text":"选择模式：","color":"yellow"},{"text":"【赌命模式】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 101"},"hoverEvent":{"action":"show_text","value":"仅仅赌命"}},{"text":"【赌饭团币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 102"},"hoverEvent":{"action":"show_text","value":"除了赌命还会额外赌一个饭团币"}},{"text":"【赌坤坤币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 103"},"hoverEvent":{"action":"show_text","value":"除了赌命还会额外赌一个坤坤币"}}]
#对范围内的玩家显示选择选项
team remove liar_bar_a_table
#删除队伍
team add liar_bar_a_table "参加骗子酒馆A桌"
#创建队伍
kill @e[type=minecraft:interaction,tag=a_table_1]
kill @e[type=minecraft:interaction,tag=a_table_2]
kill @e[type=minecraft:interaction,tag=a_table_3]
kill @e[type=minecraft:interaction,tag=a_table_4]
#删除实体
tag @a remove a_table_1
tag @a remove a_table_2
tag @a remove a_table_3
tag @a remove a_table_4
#删除标签

bossbar add jijifujiji_liar_bar_a_table_time [{"text":"请选择模式","color":"yellow"}]
bossbar set jijifujiji_liar_bar_a_table_time color yellow
bossbar set jijifujiji_liar_bar_a_table_time max 20
bossbar set jijifujiji_liar_bar_a_table_time value 20
bossbar set jijifujiji_liar_bar_a_table_time visible true
$bossbar set jijifujiji_liar_bar_a_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#设置boss条初始状态





#tp @n[tag=sit] -2955.5 105.5 2094.5

#-2956 105 2094

#summon minecraft:interaction -2955.50 105.50 2094.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 0b, Fire: 0s, width: 1.0f, interaction: {player: [I; -910524479, -1599391953, -2040731477, -1176594605], timestamp: 802825986L}, AABB: [-2956.0d, 105.5d, 2094.0d, -2955.0d, 106.5d, 2095.0d], Tags: ["sit"], height: 1.0f}



#function liar_bar:3_a_table/1.1_start_game_execute with storage minecraft:jijifujiji_liat_bar a_table_position
#使用新的赋值坐标去运行开始函数

#中心点位置是x y z
#  x1=x-9
#  y1=y-1
#  z1=z-9
# X data get storage minecraft:jijifujiji_liat_bar a_table_position.x



