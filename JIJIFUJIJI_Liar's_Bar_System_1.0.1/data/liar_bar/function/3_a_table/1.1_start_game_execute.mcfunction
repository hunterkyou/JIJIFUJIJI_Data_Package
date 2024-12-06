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


bossbar add jijifujiji_liar_bar_a_table_time [{"text":"请选择模式（任意玩家）","color":"yellow"}]
bossbar set jijifujiji_liar_bar_a_table_time color yellow
bossbar set jijifujiji_liar_bar_a_table_time max 20
bossbar set jijifujiji_liar_bar_a_table_time value 20
bossbar set jijifujiji_liar_bar_a_table_time visible true
$bossbar set jijifujiji_liar_bar_a_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#设置boss条初始状态





#tp @n[tag=sit] -2955.5 105.5 2094.5

#-2956 105 2094

#summon minecraft:interaction -2955.50 105.50 2094.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 0b, Fire: 0s, width: 1.0f, interaction: {player: [I; -910524479, -1599391953, -2040731477, -1176594605], timestamp: 802825986L}, AABB: [-2956.0d, 105.5d, 2094.0d, -2955.0d, 106.5d, 2095.0d], Tags: ["sit"], height: 1.0f}


