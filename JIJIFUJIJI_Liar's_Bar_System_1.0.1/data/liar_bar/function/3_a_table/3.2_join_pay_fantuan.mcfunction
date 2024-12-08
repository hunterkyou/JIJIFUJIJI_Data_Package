#扣除饭团币




execute store result score liar_bar_a_table_receive jijifujiji_liar_bar_variable run clear @s minecraft:prize_pottery_sherd[minecraft:custom_model_data=9999301] 1
#如果扣除饭团币成功了就储存一个1  liar_bar_a_table_receive jijifujiji_liar_bar_variable
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 0 run tellraw @s [{"text":"你的饭团币不足，请拿去饭团币后重新加入！","color":"green","bold":true}]
#没钱，没加入成功，提示重新加入
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 0 run tellraw @s [{"text":"点击加入","color":"yellow"},{"text":"【赌饭团币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_join set 100"},"hoverEvent":{"action":"show_text","value":"点我加入赌饭团币模式对局"}},{"text":"骗子酒馆","color":"yellow"}]
#重新提示加入信息
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 0 run scoreboard players enable @s jijifujiji_liar_bar_a_table_join
#让玩家可以重新加入
scoreboard players add liar_bar_a_table_number jijifujiji_liar_bar_variable 1
#加入玩家数目+1

$execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"selector":"@s","color":"dark_green","bold":true},{"text":"支付了一个饭团币，加入对局！","color":"green","bold":true}]
#如果扣除成功
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 run team join liar_bar_a_table @s
#给玩家加入队伍

execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 1 run tag @s add a_table_1
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 2 run tag @s add a_table_2
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 3 run tag @s add a_table_3
execute if score liar_bar_a_table_receive jijifujiji_liar_bar_variable matches 1 if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 4 run tag @s add a_table_4
#加队伍
scoreboard players reset liar_bar_a_table_receive jijifujiji_liar_bar_variable
#重置临时变量

execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches 4 run function liar_bar:3_a_table/4_deal_cards with storage minecraft:jijifujiji_liat_bar a_table_position
#满人后启动发牌

