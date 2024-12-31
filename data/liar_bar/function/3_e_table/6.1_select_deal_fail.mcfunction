#点了按钮2
#出牌失败重新开始
#tellraw @s [{"text":"恶魔牌只可以单出！！请重新出牌！","color":"green"}]
scoreboard players reset @s jijifujiji_liar_bar_e_table_join
scoreboard players reset @s jijifujiji_liar_bar_e_table_click
#重置掉按了模式按钮玩家的按键计分板
tag @e[tag=e_table_card_on_center,tag=e_table_card_select] remove e_table_card_on_center
tag @e remove e_table_card_select
#清除前面加的标签



data modify storage minecraft:jijifujiji_liat_bar e_table_position.select1 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_e_table_click set 1'
data modify storage minecraft:jijifujiji_liat_bar e_table_position.select2 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_e_table_click set 2'
data modify storage minecraft:jijifujiji_liat_bar e_table_position.select3 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_e_table_click set 3'
data modify storage minecraft:jijifujiji_liat_bar e_table_position.select4 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_e_table_click set 4'
data modify storage minecraft:jijifujiji_liat_bar e_table_position.select5 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_e_table_click set 5'


execute if score liar_bar_e_table_stage jijifujiji_liar_bar_variable matches 4 as @a[team=liar_bar_e_table,tag=e_table_playing] run function liar_bar:3_e_table/5.2_random_player_turn_show with storage minecraft:jijifujiji_liat_bar e_table_position
execute if score liar_bar_e_table_stage jijifujiji_liar_bar_variable matches 5 as @a[team=liar_bar_e_table,tag=e_table_playing] run function liar_bar:3_e_table/7.2_standard_turn_show with storage minecraft:jijifujiji_liat_bar e_table_position

#给这个玩家发布聊天框按钮对于不同阶段不同的显示执行
scoreboard players enable @a[team=liar_bar_e_table,tag=e_table_playing] jijifujiji_liar_bar_e_table_click
#让玩家可以点按钮
scoreboard players enable @a[team=liar_bar_e_table,tag=e_table_playing] jijifujiji_liar_bar_e_table_join
#让玩家可以点按钮

#execute 


