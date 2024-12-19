#每刻调用

execute if score a_table_mode jijifujiji_liar_bar_variable matches 1..3 run function liar_bar:3_a_table/0_tick with storage minecraft:jijifujiji_liat_bar a_table_position
execute if score b_table_mode jijifujiji_liar_bar_variable matches 1..3 run function liar_bar:3_b_table/0_tick with storage minecraft:jijifujiji_liat_bar b_table_position
execute if score c_table_mode jijifujiji_liar_bar_variable matches 1..3 run function liar_bar:3_c_table/0_tick with storage minecraft:jijifujiji_liat_bar c_table_position
execute if score d_table_mode jijifujiji_liar_bar_variable matches 1..3 run function liar_bar:3_d_table/0_tick with storage minecraft:jijifujiji_liat_bar d_table_position
execute if score e_table_mode jijifujiji_liar_bar_variable matches 1..3 run function liar_bar:3_e_table/0_tick with storage minecraft:jijifujiji_liat_bar e_table_position
#哪桌开了就开了






#scoreboard players add @a reward1 0
#上线检测
#execute as @a[scores={reward1=0}] run function item:reward
#对上线了的玩家进行奖励






#execute if score gamble_time gamble_variable matches 1.. run function gamble:gamble/0_size_tick
#计时器在大于0运行赌大小主函数

#execute if score gamble_fruit_time gamble_variable matches 1.. run function gamble:gamble_fruit_machine/tick
#计时器在大于0运行老虎机主函数

#execute if score gamble_21_time gamble_variable matches 1.. run function gamble:gamble_blackjack/tick
#计时器在大于0运行21点主函数
#execute as @a if score @s gamble_ticket matches 1.. at @s if items entity @s weapon.mainhand experience_bottle run function gamble:gamble_ticket/ticket

#execute as @a if score @s gamble_ticket matches 1.. at @s if items entity @s weapon.mainhand experience_bottle[minecraft:enchantments={levels:{unbreaking:1}}] run function gamble:gamble_ticket/ticket
#execute as @a if score @s gamble_ticket matches 1.. at @s if data entity @s {SelectedItem:{tag:{display:{Lore:['{"text":"\\u00A7e为社会造福 为生活添彩"}']}}}} run function gamble:gamble_ticket/ticket
#使用彩票
#execute as @a if score @s gamble_ticket matches 1.. at @s run scoreboard players set @s gamble_ticket 0
#使用彩票归零



