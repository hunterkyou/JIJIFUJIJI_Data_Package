#开枪，检测随机数


$execute store result score jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable run random value 1..$(bullet)
#判定死亡，运行随机数（当子弹只有1的时候会运行无效）
execute if score @s jijifujiji_liar_bar_bullet matches 1 run scoreboard players set jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable 1
#如果子弹只有1了，就设置临时值为1
execute if score jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable matches 1 run return run function liar_bar:3_a_table/8.4.2_open_shoot_real with storage minecraft:jijifujiji_liat_bar a_table_position
#如果是实弹
execute unless score jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable matches 1 run return run function liar_bar:3_a_table/8.4.1_open_shoot_empty with storage minecraft:jijifujiji_liat_bar a_table_position
#如果是空弹
#execute if score jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable matches 2..6 run return run function liar_bar:3_a_table/8.4.1_open_shoot_empty with storage minecraft:jijifujiji_liat_bar a_table_position
#如果是空弹
