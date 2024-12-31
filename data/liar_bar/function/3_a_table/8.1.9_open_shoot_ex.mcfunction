#开枪  这里需要一个重新选取玩家




execute as @a[tag=a_table_1,team=liar_bar_a_table] at @s run tp @s ~ ~ ~ 90 0
execute as @a[tag=a_table_2,team=liar_bar_a_table] at @s run tp @s ~ ~ ~ 180 0
execute as @a[tag=a_table_3,team=liar_bar_a_table] at @s run tp @s ~ ~ ~ -90 0
execute as @a[tag=a_table_4,team=liar_bar_a_table] at @s run tp @s ~ ~ ~ 0 0
#调整玩家的面向
execute as @a[tag=a_table_1,team=liar_bar_a_table] run ride @s mount @n[type=minecraft:interaction,tag=a_table_1]
execute as @a[tag=a_table_2,team=liar_bar_a_table] run ride @s mount @n[type=minecraft:interaction,tag=a_table_2]
execute as @a[tag=a_table_3,team=liar_bar_a_table] run ride @s mount @n[type=minecraft:interaction,tag=a_table_3]
execute as @a[tag=a_table_4,team=liar_bar_a_table] run ride @s mount @n[type=minecraft:interaction,tag=a_table_4]
#将玩家传送到座位


execute as @a[team=liar_bar_a_table,tag=liar_bar_shoot] at @s run summon item ~ ~1 ~ {Item:{id:stone,count:1},Tags:["jijifujiji_liar_bar_temp_gun"]}
#先创造一个物品
execute as @a[team=liar_bar_a_table,tag=liar_bar_shoot] run item replace entity @n[tag=jijifujiji_liar_bar_temp_gun,type=minecraft:item] container.0 from entity @s weapon.mainhand
#把玩家主手的物品换成这个物品
execute as @a[team=liar_bar_a_table,tag=liar_bar_shoot] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}] 1
#让玩家举枪发枪
schedule function liar_bar:3_a_table/8.2_open_shoot 2s append
#2s选取开枪玩家运行开枪函数

execute if entity @a[team=liar_bar_a_table,tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_2]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player2]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_3]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player3]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_a_table,tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_a_table,tag=a_table_4]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player4]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
#在boss条上更新
kill @e[type=minecraft:item_display,tag=liar_bar_a_table_card]
#删除实体牌和枪
schedule function liar_bar:3_a_table/8.4.3_open_shoot_clear_gun 3s append
#延迟3秒后清理枪