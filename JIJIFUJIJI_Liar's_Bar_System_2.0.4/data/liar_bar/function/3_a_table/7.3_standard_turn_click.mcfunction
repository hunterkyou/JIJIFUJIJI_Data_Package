#点了按钮
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1.34
#音效
execute if score @s jijifujiji_liar_bar_a_table_click matches 1 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select1 set value '✔]","color":"green","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 6'
execute if score @s jijifujiji_liar_bar_a_table_click matches 2 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select2 set value '✔]","color":"green","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 7'
execute if score @s jijifujiji_liar_bar_a_table_click matches 3 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select3 set value '✔]","color":"green","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 8'
execute if score @s jijifujiji_liar_bar_a_table_click matches 4 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select4 set value '✔]","color":"green","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 9'
execute if score @s jijifujiji_liar_bar_a_table_click matches 5 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select5 set value '✔]","color":"green","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 10'
#上面1到5 下面6到10
execute if score @s jijifujiji_liar_bar_a_table_click matches 6 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select1 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 1'
execute if score @s jijifujiji_liar_bar_a_table_click matches 7 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select2 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 2'
execute if score @s jijifujiji_liar_bar_a_table_click matches 8 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select3 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 3'
execute if score @s jijifujiji_liar_bar_a_table_click matches 9 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select4 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 4'
execute if score @s jijifujiji_liar_bar_a_table_click matches 10 run data modify storage minecraft:jijifujiji_liat_bar a_table_position.select5 set value '✘]","color":"red","clickEvent":{"action":"run_command","value":"/trigger jijifujiji_liar_bar_a_table_click set 5'
#根据不同的选择，更改聊天框的展示
execute if score @s jijifujiji_liar_bar_a_table_click matches 1..5 store result storage minecraft:jijifujiji_liat_bar a_table_position.card_select int 1 run scoreboard players get @s jijifujiji_liar_bar_a_table_click
#如果数值是1到5的按钮，就把这个数字存在 a_table_position.card_select
execute if score @s jijifujiji_liar_bar_a_table_click matches 6..10 run scoreboard players operation liar_bar_a_table_temp jijifujiji_liar_bar_a_table_click = @s jijifujiji_liar_bar_a_table_click
#对于6到10则需要运算，首先设置临时值temp为点击值
execute if score @s jijifujiji_liar_bar_a_table_click matches 6..10 run scoreboard players remove liar_bar_a_table_temp jijifujiji_liar_bar_a_table_click 5
#然后用temp-5
execute if score @s jijifujiji_liar_bar_a_table_click matches 6..10 store result storage minecraft:jijifujiji_liat_bar a_table_position.card_select int 1 run scoreboard players get liar_bar_a_table_temp jijifujiji_liar_bar_a_table_click
#然后把temp按钮数目储存a_table_position.card_select
function liar_bar:3_a_table/7.4_standard_turn_click2 with storage minecraft:jijifujiji_liat_bar a_table_position
#运行2，将上面的参数传进去，来给选中的牌加标签
scoreboard players reset @s jijifujiji_liar_bar_a_table_click
#重置掉按了模式按钮玩家的按键计分板
execute as @s run function liar_bar:3_a_table/7.2_standard_turn_show with storage minecraft:jijifujiji_liat_bar a_table_position
#给这个玩家发布聊天框按钮
scoreboard players enable @s jijifujiji_liar_bar_a_table_click
#让玩家可以点按钮

