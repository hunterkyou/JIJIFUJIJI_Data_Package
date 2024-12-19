#开
scoreboard objectives setdisplay below_name jijifujiji_liar_bar_bullet
#在名字上显示剩余子弹
$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] run tellraw @s [{"selector":"@a[team=liar_bar_d_table,tag=d_table_playing]","color":"gold","bold":true},{"text":"选择了质疑","color":"yellow"},{"selector":"@a[team=liar_bar_d_table,tag=d_table_last]","color":"red","bold":true}]
#聊天框显示谁质疑了谁
title @a[team=liar_bar_d_table,tag=d_table_last] title [{"text":">>>你被质疑<<<","color":"gold","bold":true}]
#显示先被质疑
execute as @a[team=liar_bar_d_table] run clear @s carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}]
#清理玩家身上的枪
function liar_bar:97_offline_check with storage minecraft:jijifujiji_liat_bar d_table_position
#运行掉线检测，清除掉掉线的玩家
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_select,tag=d_table_card_on_center] remove d_table_card_on_center
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_select] remove d_table_card_select
#先把刚选的标签取消掉
function liar_bar:3_d_table/8.1_open_turn_result with storage minecraft:jijifujiji_liat_bar d_table_position
#运行翻面检测函数，根据牌的结果加标签
execute as @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_on_center,tag=card_a] run data merge entity @s {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999450, "minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui",Tags:["liar_bar_d_table_card","card_gaming","card_a","d_table_card_on_center"]}
#对桌子上所有的A翻过来
execute as @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_on_center,tag=card_q] run data merge entity @s {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999451, "minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui",Tags:["liar_bar_d_table_card","card_gaming","card_q","d_table_card_on_center"]}
#对桌子上所有的Q翻过来
execute as @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_on_center,tag=card_k] run data merge entity @s {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999452, "minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui",Tags:["liar_bar_d_table_card","card_gaming","card_k","d_table_card_on_center"]}
#对桌子上所有的K翻过来
execute as @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_on_center,tag=card_kun] run data merge entity @s {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999453, "minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui",Tags:["liar_bar_d_table_card","card_gaming","card_kun","d_table_card_on_center"]}
#对桌子上所有的kun翻过来
execute as @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_d_table_card,tag=d_table_card_on_center,tag=card_demon] run data merge entity @s {teleport_duration:20,interpolation_duration:20,start_interpolation:0,item: {components: {"minecraft:custom_model_data": 9999454, "minecraft:custom_name": '{"color":"yellow","text":"card"}'}, count: 1, id: "minecraft:music_disc_relic"}, item_display: "gui",Tags:["liar_bar_d_table_card","card_gaming","card_demon","d_table_card_on_center"]}
#对桌子上所有的demon翻过来
scoreboard players reset @a jijifujiji_liar_bar_d_table_click
scoreboard players reset @a jijifujiji_liar_bar_d_table_join
#重置掉按了模式按钮玩家的按键计分板






#启动下个玩家函数，这会给新的玩家增加标签，删除上一个玩家的标签  d_table_playing
scoreboard players set liar_bar_d_table_stage jijifujiji_liar_bar_variable 6
#到6阶段
scoreboard players set liar_bar_d_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_d_table_time jijifujiji_liar_bar_variable 105
scoreboard players set liar_bar_d_table_temp jijifujiji_liar_bar_variable 5
#临时变量和当前时间
bossbar set jijifujiji_liar_bar_d_table_time max 5
bossbar set jijifujiji_liar_bar_d_table_time value 5
bossbar set jijifujiji_liar_bar_d_table_time name [{"selector":"@a[team=liar_bar_d_table,tag=d_table__shoot]]","color":"gold","bold":true},{"text":"的开枪回合...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_d_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
#立刻更新进度条#新的boss条

schedule function liar_bar:3_d_table/8.1.9_open_shoot_ex 2s append
#运行开枪函数(前)
