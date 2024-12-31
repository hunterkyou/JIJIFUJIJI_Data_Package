#a桌主函数
say a


#scoreboard players add liar_bar_a_table_tick jijifujiji_liar_bar_variable 1
#给tick+1
#execute if score liar_bar_a_table_tick jijifujiji_liar_bar_variable matches 20.. run function liar_bar:3_a_table/0.1_sec
#如果tick函数到了20以上就运行



#execute if score gamble_time gamble_variable matches 1..400 run scoreboard players remove gamble_time gamble_variable 1
#每时刻倒计时减1
#execute if score gamble_time gamble_variable matches 301..400 run scoreboard players operation gamble_time_A gamble_variable = gamble_time gamble_variable
#execute if score gamble_time gamble_variable matches 301..400 run scoreboard players remove gamble_time_A gamble_variable 300
#execute if score gamble_time gamble_variable matches 301..400 run execute store result bossbar minecraft:size_time value run scoreboard players get gamble_time_A gamble_variable
#让第一波boss条同步倒计时

#execute if score gamble_time gamble_variable matches 0..300 run execute store result bossbar minecraft:size_time value run scoreboard players get gamble_time gamble_variable
#让第二波boss条同步倒计时


#execute if score gamble_time gamble_variable matches 301 run function gamble:gamble/1_size
#10秒摇骰子
#execute if score gamble_time gamble_variable matches 0 run function gamble:gamble/4_result
#20秒下注

#execute as @a[x=-475,y=52,z=-785,dx=29,dy=9,dz=29,scores={gamble_size=1..2,gamble_size_join=0}] if entity @a[x=-475,y=52,z=-785,dx=29,dy=9,dz=29,scores={gamble_size=1..2,gamble_size_join=0}] run function gamble:gamble/2_size_amount
#检测按了大小，开启数值选择

#execute as @a[x=-475,y=52,z=-785,dx=29,dy=9,dz=29,scores={gamble_size_amount=1..2368,gamble_size_join=1}] if entity @a[x=-475,y=52,z=-785,dx=29,dy=9,dz=29,scores={gamble_size_amount=1..2368,gamble_size_join=1}] run function gamble:gamble/3_complete_betting
#检测按了数额大小，通报下注结果



