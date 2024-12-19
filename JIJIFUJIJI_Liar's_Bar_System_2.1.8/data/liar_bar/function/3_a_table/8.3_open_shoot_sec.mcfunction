#开


#6阶段每秒一次
scoreboard players set liar_bar_a_table_temp jijifujiji_liar_bar_variable 110
#临时变量=110
execute store result bossbar minecraft:jijifujiji_liar_bar_a_table_time value run scoreboard players operation liar_bar_a_table_temp jijifujiji_liar_bar_variable -= liar_bar_a_table_time jijifujiji_liar_bar_variable
#45-time=temp  ，并录入
bossbar set jijifujiji_liar_bar_a_table_time name [{"selector":"@a[team=liar_bar_a_table,tag=a_table__shoot]]","color":"gold","bold":true},{"text":"的开枪回合...","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_a_table_temp"},"color":"gold","bold":true},{"text":"s","color":"gold"}]
$bossbar set jijifujiji_liar_bar_a_table_time players @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18]
#更新boss条初始状态   liar_bar_a_table_number为已加入游戏的人数


#execute if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 110 run say 1
execute if score liar_bar_a_table_time jijifujiji_liar_bar_variable matches 110 run function liar_bar:3_a_table/4.0_deal_cards.exe with storage minecraft:jijifujiji_liat_bar a_table_position
#时间到了 运行重新发牌


#以下时间都是第N秒的起始点

#20秒 选择模式，如果没有就直接跳过       stage1  1到20秒初  20秒初会结束活动  如果点击了按钮会跳到20秒初并在1秒后运行21秒
#20秒 加入游戏（如果4个人就直接跳过）    stage2   20秒初到40秒初   40秒初会跳到p3  统计满足4人也会跳到P3  p3会跳到40秒初 然后运行到41秒
#5秒 显示本局真牌并发牌                 stage3   40秒初到45秒初
#30秒 随机选一个玩家30秒出牌            stage4   45秒初到75秒初
#30秒 标准回合                         stage5   75-105
#5秒  展示+开枪+检测死亡               stage6   105-110
                                     #如果被质疑的玩家死了    设置新一轮的玩家为下家
                                     #如果被质疑的玩家没死    设置新一轮的玩家为被质疑玩家
#5秒  显示本局真牌并发牌                stage7    110-115
#30秒  选定玩家出牌                     stage8    115-145



#scoreboard objectives add jijifujiji_liar_bar_variable dummy ["骗子酒馆变量"]

#标签集 
# tag=a_table_playing  正在玩的a桌玩家
# tag=a_table_1、tag=a_table_2 、tag=a_table_3 、tag=a_table_4    a桌1/2/3/4玩家
# tag=a_table_card_select  玩家选择出的牌
# tag=a_table_card_on_center 玩家出了得牌
# tag=a_table_last  a桌上一个玩家
# tag=a_table__shoot 应该被枪毙的人
#队伍集
# team=liar_bar_a_table  a桌队伍
