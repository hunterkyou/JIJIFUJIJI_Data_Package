#显示真牌 然后发牌    with storage minecraft:jijifujiji_liat_bar a_table_position


execute if score liar_bar_a_table_number jijifujiji_liar_bar_variable matches ..0 run function liar_bar:3_a_table/99_over_game with storage minecraft:jijifujiji_liat_bar a_table_position
#如果没有玩家就结束
execute store result storage minecraft:jijifujiji_liat_bar a_table_position.number int 1 run scoreboard players get liar_bar_a_table_number jijifujiji_liar_bar_variable
#将玩家数量存进储存

execute store result score liar_bar_a_table_temp_players jijifujiji_liar_bar_variable if entity @a[team=liar_bar_a_table]
#统计玩家的数量
execute if score liar_bar_a_table_temp_players jijifujiji_liar_bar_variable matches ..1 run function liar_bar:3_a_table/9_win with storage minecraft:jijifujiji_liat_bar a_table_position
#检测玩家人数小于等于1，就运行胜利函数

#如果数量为0或1就运行结束函数
$execute positioned $(x) $(y) $(z) run summon minecraft:interaction ~2 ~0.5 ~ {Tags:["jijifujiji_chair","a_table_1"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:interaction ~ ~0.5 ~2 {Tags:["jijifujiji_chair","a_table_2"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:interaction ~-2 ~0.5 ~ {Tags:["jijifujiji_chair","a_table_3"]}
$execute positioned $(x) $(y) $(z) run summon minecraft:interaction ~ ~0.5 ~-2 {Tags:["jijifujiji_chair","a_table_4"]}
#生成椅子
scoreboard players set @a[team=liar_bar_a_table] jijifujiji_liar_bar_bullet 6
#设置玩家的子弹数量为6
execute as @a[team=liar_bar_a_table] run clear @s carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}]
#清理玩家身上的枪
scoreboard objectives setdisplay below_name jijifujiji_liar_bar_bullet
#在名字上显示剩余
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar add liar_bar_a_table_time_player1 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_2] run bossbar add liar_bar_a_table_time_player2 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_2]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player2]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run bossbar add liar_bar_a_table_time_player3 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_3]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player3]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run bossbar add liar_bar_a_table_time_player4 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_4]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player4]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
#boss条名字设置为剩余子弹+手牌+主牌
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 color red
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player2 color red
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player3 color red
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player4 color red
#设置BOSS条颜色为红色
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 max 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 max 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 max 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 max 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 value 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 value 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 value 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 value 6
execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 players @a[team=liar_bar_a_table,tag=a_table_1]
execute if entity @a[team=liar_bar_a_table,tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 players @a[team=liar_bar_a_table,tag=a_table_2]
execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 players @a[team=liar_bar_a_table,tag=a_table_3]
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 players @a[team=liar_bar_a_table,tag=a_table_4]
#设置boss条初始状态,当前值6，最大值6，显示玩家






function liar_bar:3_a_table/4.0_deal_cards.exe with storage minecraft:jijifujiji_liat_bar a_table_position
#运行显示真牌 重新发牌