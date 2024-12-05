#开始游戏的按钮，这将用于后续的传参

scoreboard objectives add jijifujiji_liar_bar_a_table_click trigger ["A桌的按键检测"]
#新建一个按键检测系统
scoreboard players set liar_bar_a_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set a_table_mode jijifujiji_liar_bar_variable 1
#先设置模式为模式1
$scoreboard players enable @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] jijifujiji_liar_bar_a_table_click

$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] run say 1
#解放区域的点击功能


say 开始啦



#tp @n[tag=sit] -2955.5 105.5 2094.5

#-2956 105 2094

#summon minecraft:interaction -2955.50 105.50 2094.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 0b, Fire: 0s, width: 1.0f, interaction: {player: [I; -910524479, -1599391953, -2040731477, -1176594605], timestamp: 802825986L}, AABB: [-2956.0d, 105.5d, 2094.0d, -2955.0d, 106.5d, 2095.0d], Tags: ["sit"], height: 1.0f}




#scoreboard objectives add gamble_size trigger ["赌大小"]
#scoreboard objectives add gamble_size_amount trigger ["赌大小下注数额"]
#scoreboard objectives add gamble_size_join dummy ["是否参与赌大小下注"]
#scoreboard objectives add size_reward dummy ["最终发放数额"]
#设置赌场系统的计分板

#scoreboard players enable @a gamble_size
#scoreboard players enable @a gamble_size_amount
#启用触发器
#scoreboard players set @a gamble_size_amount 0
#scoreboard players set @a gamble_size 0
#scoreboard players set @a gamble_size_join 0
#scoreboard players set @a size_reward 0
#scoreboard players set size_player gamble_variable 0
#设置选择初始值都为0
#tp @e[limit=1,type=cat,tag=size_cat] -450 48 -775
#setblock -451 50 -774 minecraft:air
#setblock -451 51 -774 minecraft:lever[face=floor,facing=west,powered=true]
#停止闪烁

#bossbar set minecraft:size_time color yellow
#bossbar set minecraft:size_time name "下注时间"
#execute store result bossbar minecraft:size_time max run scoreboard players get gamble_time gamble_variable
#execute store result bossbar minecraft:size_time value run scoreboard players get gamble_time gamble_variable
#设置boss条初始状态

#tellraw @a[x=-475,y=52,z=-785,dx=29,dy=9,dz=29] [{"text":"----------------\n","color":"red","bold":true},{"text":"【赌大小·开始下注】\n","color":"red","bold":true},{"text":"  [押大]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger gamble_size set 2"},"hoverEvent":{"action":"show_text","value":"点击下注，赔率为1:1"}},{"text":" ","color":"red"},{"text":"[押小]\n","color":"gold","clickEvent":{"action":"run_command","value":"/trigger gamble_size set 1"},"hoverEvent":{"action":"show_text","value":"点击下注，赔率为1:1"}},{"text":"----------------\n","color":"red","bold":true}]
#聊天框选择大小