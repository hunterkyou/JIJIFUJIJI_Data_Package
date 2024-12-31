#开枪  这里需要一个重新选取玩家




execute as @a[tag=c_table_1,team=liar_bar_c_table] at @s run tp @s ~ ~ ~ 90 0
execute as @a[tag=c_table_2,team=liar_bar_c_table] at @s run tp @s ~ ~ ~ 180 0
execute as @a[tag=c_table_3,team=liar_bar_c_table] at @s run tp @s ~ ~ ~ -90 0
execute as @a[tag=c_table_4,team=liar_bar_c_table] at @s run tp @s ~ ~ ~ 0 0
#调整玩家的面向
execute as @a[tag=c_table_1,team=liar_bar_c_table] run ride @s mount @n[type=minecraft:interaction,tag=c_table_1]
execute as @a[tag=c_table_2,team=liar_bar_c_table] run ride @s mount @n[type=minecraft:interaction,tag=c_table_2]
execute as @a[tag=c_table_3,team=liar_bar_c_table] run ride @s mount @n[type=minecraft:interaction,tag=c_table_3]
execute as @a[tag=c_table_4,team=liar_bar_c_table] run ride @s mount @n[type=minecraft:interaction,tag=c_table_4]
#将玩家传送到座位
execute as @a[team=liar_bar_c_table] run clear @s carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}]
#清理玩家身上的枪
execute as @a[team=liar_bar_c_table,tag=c_table__shoot] run function liar_bar:3_c_table/8.1.9.1_open_shoot_target with storage minecraft:jijifujiji_liat_bar c_table_position
#创造枪然后保存主手物品


schedule function liar_bar:3_c_table/8.2_open_shoot 40t append
#2s选取开枪玩家运行开枪函数

execute if entity @a[team=liar_bar_c_table,tag=c_table_1] run bossbar set liar_bar_c_table_time_player1 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_2] run bossbar set liar_bar_c_table_time_player2 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_2]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player2]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_3] run bossbar set liar_bar_c_table_time_player3 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_3]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player3]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_4] run bossbar set liar_bar_c_table_time_player4 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_4]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player4]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
#在boss条上更新
kill @e[type=minecraft:item_display,tag=liar_bar_c_table_card]
#删除实体牌和枪
schedule function liar_bar:3_c_table/8.4.3_open_shoot_clear_gun 50t append
#延迟3秒后清理枪