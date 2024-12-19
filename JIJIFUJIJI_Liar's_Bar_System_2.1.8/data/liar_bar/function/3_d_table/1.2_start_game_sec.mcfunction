#1阶段每秒一次
scoreboard players set liar_bar_d_table_temp jijifujiji_liar_bar_variable 20
#临时变量=20
execute store result bossbar minecraft:jijifujiji_liar_bar_d_table_time value run scoreboard players operation liar_bar_d_table_temp jijifujiji_liar_bar_variable -= liar_bar_d_table_time jijifujiji_liar_bar_variable
#20-time=temp  ，并录入


bossbar set jijifujiji_liar_bar_d_table_time name [{"text":"请选择模式（任意玩家）    ","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_d_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
$bossbar set jijifujiji_liar_bar_d_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#更新boss条初始状态

execute if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 20 run function liar_bar:3_d_table/99_over_game with storage minecraft:jijifujiji_liat_bar d_table_position
#如果到了时间就结束



#20秒 选择模式，如果没有就直接跳过       stage1
#20秒 加入游戏（如果4个人就直接跳过）    stage2
#5秒 显示本局真牌并发牌                 stage3
#30秒 随机选一个玩家30秒出牌            stage4
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
