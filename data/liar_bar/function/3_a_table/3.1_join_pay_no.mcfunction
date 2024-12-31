#加入游戏




scoreboard players add liar_bar_a_table_number jijifujiji_liar_bar_variable 1
#加入玩家数目+1

$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"selector":"@s","color":"dark_green","bold":true},{"text":"加入对局！","color":"green","bold":true}]
#显示语句
team join liar_bar_a_table @s
#给玩家加入队伍
execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 1 run tag @s add a_table_1
execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 2 run tag @s add a_table_2
execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 3 run tag @s add a_table_3
execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 4 run tag @s add a_table_4
#加队伍

execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 4 run function liar_bar:3_a_table/4_deal_cards with storage minecraft:jijifujiji_liat_bar a_table_position
#满人后启动发牌

