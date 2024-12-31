#结束活动

execute if score a_table_mode jijifujiji_liar_bar_variable matches 1 run function liar_bar:3_a_table/98_kill_all with storage minecraft:jijifujiji_liat_bar a_table_position
#如果是模式1就结束游戏
$execute if score a_table_mode jijifujiji_liar_bar_variable matches 2..3 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"赌了货币，无法结束。","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]