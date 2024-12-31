#a每秒运行一次



scoreboard players set liar_bar_a_table_tick jijifujiji_liar_bar_variable 0
#给tick归零



scoreboard players add liar_bar_a_table_time jijifujiji_liar_bar_variable 1
#增加一秒
execute if score liar_bar_a_table_stage jijifujiji_liar_bar_variable matches 1 if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 1..20 run function liar_bar:3_a_table/1.2_start_game_sec with storage minecraft:jijifujiji_liat_bar a_table_position
#一阶段秒函数
execute if score liar_bar_a_table_stage jijifujiji_liar_bar_variable matches 2 if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 20..40 run function liar_bar:3_a_table/2.1_mode_sec with storage minecraft:jijifujiji_liat_bar a_table_position
#2阶段秒函数
execute if score liar_bar_a_table_stage jijifujiji_liar_bar_variable matches 3 if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 40..45 run function liar_bar:3_a_table/4.1_deal_cards_sec with storage minecraft:jijifujiji_liat_bar a_table_position
#3阶段秒函数
execute if score liar_bar_a_table_stage jijifujiji_liar_bar_variable matches 4 if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 45..75 run function liar_bar:3_a_table/5.1_random_player_turn_sec with storage minecraft:jijifujiji_liat_bar a_table_position
#4阶段秒函数



#以下时间都是第N秒的起始点

#20秒 选择模式，如果没有就直接跳过       stage1  1到20秒初  20秒初会结束活动  如果点击了按钮会跳到20秒初并在1秒后运行21秒
#20秒 加入游戏（如果4个人就直接跳过）    stage2   20秒初到40秒初   40秒初会跳到p3  统计满足4人也会跳到P3  p3会跳到40秒初 然后运行到41秒
#5秒 显示本局真牌并发牌                 stage3   40秒初到45秒初
#30秒 随机选一个玩家30秒出牌            stage4   45秒初到75秒初
#30秒 下一个玩家出牌或者开              stage5
#3秒  展示牌                           stage6
#5秒   开枪                            stage7
#5秒  显示本局真牌并发牌                stage8
#30秒 被开的玩家出牌                    stage9
#30秒下一个玩家出牌或者开                stage10

#选择模式20秒   p1  1..20                      
#	加入游戏20秒  p2  21..40
#		提示真牌+发牌5秒  p3   41..45
#			随机玩家出牌30秒 p4    46..75
#				下家选择喊liar或者出牌30秒  p5    76..105
#					展示牌3秒 p6                 106..108
#						开枪5秒 p7                109..113
#							死掉
#								提示真牌+发牌5秒 p81        114..118
#									下家玩家出牌30秒 p91    119..148
#										循环p5
#							没死
#								提示真牌+发牌5秒 p82        114..118
#									被开玩家出牌30秒  p92   119..148
#										循环p5
#					下家选择喊liar或者出牌30秒 p5
#						循环
#如果主控为1，就开始每秒运算
#liar_bar_main_switch jijifujiji_liar_bar_variable 1
#scoreboard objectives add jijifujiji_liar_bar_variable dummy ["骗子酒馆变量"]

