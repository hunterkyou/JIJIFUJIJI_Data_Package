#选择模式
execute if score @s jijifujiji_liar_bar_a_table_click matches 101 run scoreboard players set a_table_mode jijifujiji_liar_bar_variable 1
execute if score @s jijifujiji_liar_bar_a_table_click matches 102 run scoreboard players set a_table_mode jijifujiji_liar_bar_variable 2
execute if score @s jijifujiji_liar_bar_a_table_click matches 103 run scoreboard players set a_table_mode jijifujiji_liar_bar_variable 3
#根据选择的模式来修改参数
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"模式已被选定！","color":"yellow"}]
$execute if score @s jijifujiji_liar_bar_a_table_click matches 101 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"点击加入","color":"yellow"},{"text":"【赌命模式】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 100"},"hoverEvent":{"action":"show_text","value":"点我加入赌命模式对局"}},{"text":"骗子酒馆","color":"yellow"}]
$execute if score @s jijifujiji_liar_bar_a_table_click matches 102 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"点击加入","color":"yellow"},{"text":"【赌饭团币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 100"},"hoverEvent":{"action":"show_text","value":"点我加入赌饭团币模式对局"}},{"text":"骗子酒馆","color":"yellow"}]
$execute if score @s jijifujiji_liar_bar_a_table_click matches 103 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"点击加入","color":"yellow"},{"text":"【赌坤坤币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 100"},"hoverEvent":{"action":"show_text","value":"点我加入赌坤坤币模式对局"}},{"text":"骗子酒馆","color":"yellow"}]
#发送不同的对话
scoreboard players reset @s jijifujiji_liar_bar_a_table_click
#重置掉按了模式按钮玩家的按键计分板
scoreboard players enable @a jijifujiji_liar_bar_a_table_click
#让范围玩家可以选择加入

scoreboard players set liar_bar_a_table_stage jijifujiji_liar_bar_variable 2
#到2阶段
scoreboard players set liar_bar_a_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_a_table_time jijifujiji_liar_bar_variable 21
#秒为0




#$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18,scores={jijifujiji_liar_bar_a_table_click=101..103}] run function liar_bar:3_a_table/2_mode
#检测按选择模式101赌命 、102饭团币、103坤坤币
#scoreboard players reset a_table_mode jijifujiji_liar_bar_variable
#先设置模式为模式0




#scoreboard players set a_table_mode jijifujiji_liar_bar_variable 1
#a_table_mode jijifujiji_liar_bar_variable  1为赌命  2是赌饭团币 3是赌坤坤币  也象征着开始了活动
#liar_bar_main_switch jijifujiji_liar_bar_variable 1  代表时间开始了




#tp @n[tag=sit] -2955.5 105.5 2094.5

#-2956 105 2094

#summon minecraft:interaction -2955.50 105.50 2094.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 0b, Fire: 0s, width: 1.0f, interaction: {player: [I; -910524479, -1599391953, -2040731477, -1176594605], timestamp: 802825986L}, AABB: [-2956.0d, 105.5d, 2094.0d, -2955.0d, 106.5d, 2095.0d], Tags: ["sit"], height: 1.0f}

