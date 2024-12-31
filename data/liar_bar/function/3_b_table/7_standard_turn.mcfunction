#这是一个标准回合，此函数的执行玩家应该是上一个回合的玩家
function liar_bar:3_b_table/1_next_player/1_player with storage minecraft:jijifujiji_liat_bar b_table_position
#启动下个玩家函数，这会给新的玩家增加标签，删除上一个玩家的标签  b_table_playing

scoreboard objectives setdisplay below_name jijifujiji_liar_bar_bullet
#在名字上显示剩余子弹
scoreboard players set liar_bar_b_table_stage jijifujiji_liar_bar_variable 5
#到5阶段
scoreboard players set liar_bar_b_table_tick jijifujiji_liar_bar_variable 0
#设置为初始tick0
scoreboard players set liar_bar_b_table_time jijifujiji_liar_bar_variable 75
scoreboard players set liar_bar_b_table_temp jijifujiji_liar_bar_variable 30
#临时变量和当前时间
title @a[team=liar_bar_b_table,tag=b_table_playing] title [{"text":">>>你的回合<<<","color":"green","bold":true}]
tellraw @a[team=liar_bar_b_table,tag=b_table_playing] [{"text":"####请选择要出的手牌：","color":"yellow"}]
#显示聊天
execute as @a[team=liar_bar_b_table,tag=b_table_playing] at @s run playsound block.anvil.place master @s ~ ~ ~ 1 1 0
#提示回合音效
bossbar set jijifujiji_liar_bar_b_table_time max 30
bossbar set jijifujiji_liar_bar_b_table_time value 30
bossbar set jijifujiji_liar_bar_b_table_time name [{"selector":"@a[team=liar_bar_b_table,tag=b_table_playing]]","color":"gold","bold":true},{"text":"的回合...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_b_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
#立刻更新进度条#新的boss条
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_click
#让玩家可以点按钮
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select1 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_b_table_click set 1'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select2 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_b_table_click set 2'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select3 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_b_table_click set 3'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select4 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_b_table_click set 4'
data modify storage minecraft:jijifujiji_liat_bar b_table_position.select5 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_b_table_click set 5'
#设置传参数据为红色XX触发1-5
execute if entity @a[team=liar_bar_b_table,tag=b_table_1,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 1
execute if entity @a[team=liar_bar_b_table,tag=b_table_2,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 2
execute if entity @a[team=liar_bar_b_table,tag=b_table_3,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 3
execute if entity @a[team=liar_bar_b_table,tag=b_table_4,tag=b_table_playing] run data modify storage minecraft:jijifujiji_liat_bar b_table_position.player_turn set value 4
#根据玩家来设定玩家
execute as @a[team=liar_bar_b_table,tag=b_table_playing] run function liar_bar:3_b_table/7.2_standard_turn_show with storage minecraft:jijifujiji_liat_bar b_table_position
#给这个玩家发布聊天框按钮
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_click
#让玩家可以点按钮
scoreboard players enable @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_join
#让玩家可以点按钮

scoreboard players set liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable 0
#归零
execute store success score liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player1]
#检测一号玩家是否有牌，如果有牌liar_bar_b_table_temp_players2为1  没牌就是0
scoreboard players operation liar_bar_b_table_temp_players jijifujiji_liar_bar_variable = liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable
#载入玩家人数
execute store success score liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player2]
#检测二号玩家是否有牌，如果有牌liar_bar_b_table_temp_players2为1  没牌就是0
scoreboard players operation liar_bar_b_table_temp_players jijifujiji_liar_bar_variable += liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable
#加上2号的人数
execute store success score liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player3]
#检测三号玩家是否有牌，如果有牌liar_bar_b_table_temp_players2为1  没牌就是0
scoreboard players operation liar_bar_b_table_temp_players jijifujiji_liar_bar_variable += liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable
#加上3号的人数
execute store success score liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player4]
#检测四号玩家是否有牌，如果有牌liar_bar_b_table_temp_players2为1  没牌就是0
scoreboard players operation liar_bar_b_table_temp_players jijifujiji_liar_bar_variable += liar_bar_b_table_temp_players2 jijifujiji_liar_bar_variable
#加上4号的人数
$execute if score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable matches 1 run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"最后2个玩家，强制质疑！","color":"yellow"}]
execute if score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable matches 1 run scoreboard players set @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_join 99







#
#execute store result score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable if entity @a[team=liar_bar_b_table]
#统计剩余玩家数量，这样统计的是在线玩家而不是手牌数量玩家
#execute if entity @a[team=liar_bar_b_table,tag=b_table_last,tag=b_table_1] store result score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player1]
#execute if entity @a[team=liar_bar_b_table,tag=b_table_last,tag=b_table_2] store result score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player2]
#execute if entity @a[team=liar_bar_b_table,tag=b_table_last,tag=b_table_3] store result score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player3]
#execute if entity @a[team=liar_bar_b_table,tag=b_table_last,tag=b_table_4] store result score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable if entity @e[type=minecraft:item_display,tag=liar_bar_b_table_card,tag=card_gaming,tag=card_player4]
#把上一个人的手牌数量存进去
#$execute if score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable matches 2 unless score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable matches 1.. run tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"最后2个玩家，强制质疑！","color":"yellow"}]
#execute if score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable matches 2 unless score liar_bar_b_table_temp_cards jijifujiji_liar_bar_variable matches 1.. run scoreboard players set @a[team=liar_bar_b_table,tag=b_table_playing] jijifujiji_liar_bar_b_table_join 99
#强制质疑：检测剩余玩家数量是否为2，检测你之外的玩家是否没有手牌，满足一上个条件就直接给他设定jijifujiji_liar_bar_b_table_join为99




execute store result score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable if entity @a[team=liar_bar_b_table]
#统计玩家的数量
execute if score liar_bar_b_table_temp_players jijifujiji_liar_bar_variable matches ..1 run function liar_bar:3_b_table/9_win with storage minecraft:jijifujiji_liat_bar b_table_position
#检测玩家人数小于等于1，就运行胜利函数



