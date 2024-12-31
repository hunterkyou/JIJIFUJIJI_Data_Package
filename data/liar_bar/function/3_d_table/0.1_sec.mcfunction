#a每秒运行一次



scoreboard players set liar_bar_d_table_tick jijifujiji_liar_bar_variable 0
#给tick归零



scoreboard players add liar_bar_d_table_time jijifujiji_liar_bar_variable 1
#增加一秒
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 1 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 1..20 run function liar_bar:3_d_table/1.2_start_game_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#一阶段秒函数  选择模式
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 2 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 20..40 run function liar_bar:3_d_table/2.1_mode_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#2阶段秒函数   加入游戏
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 3 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 40..45 run function liar_bar:3_d_table/4.1_deal_cards_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#3阶段秒函数   提示真牌+发牌
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 4 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 45..75 run function liar_bar:3_d_table/5.1_random_player_turn_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#4阶段秒函数   随机玩家首次30秒
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 5 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 75..105 run function liar_bar:3_d_table/7.1_standard_turn_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#5阶段秒函数   标准回合30秒
execute if score liar_bar_d_table_stage jijifujiji_liar_bar_variable matches 6 if score liar_bar_d_table_time jijifujiji_liar_bar_variable matches 105..110 run function liar_bar:3_d_table/8.3_open_shoot_sec with storage minecraft:jijifujiji_liat_bar d_table_position
#6阶段秒函数  质疑了 开枪


#以下时间都是第N秒的起始点

#20秒 选择模式，如果没有就直接跳过       stage1  1到20秒初  20秒初会结束活动  如果点击了按钮会跳到20秒初并在1秒后运行21秒
#20秒 加入游戏（如果4个人就直接跳过）    stage2   20秒初到40秒初   40秒初会跳到p3  统计满足4人也会跳到P3  p3会跳到40秒初 然后运行到41秒
#5秒 显示本局真牌并发牌                 stage3   40秒初到45秒初
#30秒 随机选一个玩家30秒出牌            stage4   45秒初到75秒初
#30秒 标准回合                         stage5   75-105
#5秒  展示+开枪+检测死亡               stage6   105-110
                                     #如果被质疑的玩家没死    设置新一轮的玩家为被质疑玩家 
                                     #如果被质疑的玩家死了    设置新一轮的玩家为下家
#5秒  显示本局真牌并发牌                stage3    110-115
#30秒  选定玩家出牌                     stage4    115-145



#scoreboard objectives add jijifujiji_liar_bar_variable dummy ["骗子酒馆变量"]

#标签集 
# tag=d_table_playing  正在玩的a桌玩家
# tag=d_table_1、tag=d_table_2 、tag=d_table_3 、tag=d_table_4    a桌1/2/3/4玩家
# tag=d_table_card_select  玩家选择出的牌
# tag=d_table_card_on_center 玩家出了得牌
# tag=d_table_last  a桌上一个玩家
# tag=d_table__shoot 应该被枪毙的人
#队伍集
# team=liar_bar_d_table  a桌队伍
