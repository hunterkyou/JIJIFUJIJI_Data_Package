#w玩家离线检测

tag @a[team=liar_bar_e_table] add liar_bar_e_table_online
#为队伍内的所有玩家增加标签tag=liar_bar_e_table_online
team remove liar_bar_e_table
#删除队伍
team add liar_bar_e_table "参加骗子酒馆A桌"
#重新创建队伍
team join liar_bar_e_table @a[tag=liar_bar_e_table_online]
#将标签tag=liar_bar_e_table_online的玩加进队伍
tag @a remove liar_bar_e_table_online
#删除标签
bossbar remove minecraft:liar_bar_e_table_time_player1
bossbar remove minecraft:liar_bar_e_table_time_player2
bossbar remove minecraft:liar_bar_e_table_time_player3
bossbar remove minecraft:liar_bar_e_table_time_player4
#删除游戏时间boss条
execute if entity @a[team=liar_bar_e_table,tag=e_table_1] run bossbar add liar_bar_e_table_time_player1 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_e_table,tag=e_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_e_table,tag=e_table_2] run bossbar add liar_bar_e_table_time_player2 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_e_table,tag=e_table_2]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player2]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_e_table,tag=e_table_3] run bossbar add liar_bar_e_table_time_player3 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_e_table,tag=e_table_3]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player3]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_e_table,tag=e_table_4] run bossbar add liar_bar_e_table_time_player4 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_e_table,tag=e_table_4]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_gaming,tag=card_player4]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_e_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
#如果玩家存在就重新创建 boss条名字设置为剩余子弹+手牌+主牌




#function liar_bar:3_e_table/97_offline_check with storage minecraft:jijifujiji_liat_bar e_table_position


#今晚新增一点点优化：
#1、玩家掉线判定 
    #1）玩家在出牌阶段掉线   就会随机开启回合
    #2）质疑阶段 判定掉线


#7、单人开始游戏将立刻结束   可以不改
#14、开始后判定随机玩家赢    已改~
#8、没带币 会计数    已改~
#2、按钮样式和位置   已改~
#3、玩家回合音效    已改~
#4、增加被质疑屏幕提示   已改~
#5、增加按下扳机屏幕提示  已改~
#6、增加清除手枪次数   已改~
#9、没死会不显示结果？   已改a
#10、boss条死亡后删除    已改~
#11、air换成其他的    已改~
#12、多人举枪bug 删除了物品  已改~
#13、结果显示时间延长       已改~
#15、没强制质疑  判定在场的玩家数量  已改~





