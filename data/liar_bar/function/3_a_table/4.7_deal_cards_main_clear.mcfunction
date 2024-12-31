
kill @e[type=minecraft:item_display,tag=card_main,tag=liar_bar_a_table_card]
#删除主牌

kill @e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=!card_player1,tag=!card_player2,tag=!card_player3,tag=!card_player4]
#删除桌子上多余的牌
scoreboard players set @a[tag=a_table_1] jijifujiji_liar_bar_bullet 6
scoreboard players set @a[tag=a_table_2] jijifujiji_liar_bar_bullet 6
scoreboard players set @a[tag=a_table_3] jijifujiji_liar_bar_bullet 6
scoreboard players set @a[tag=a_table_4] jijifujiji_liar_bar_bullet 6
#设置玩家的子弹数量为6
execute if entity @a[tag=a_table_1] run bossbar add liar_bar_a_table_time_player1 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true}]
execute if entity @a[tag=a_table_2] run bossbar add liar_bar_a_table_time_player2 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true}]
execute if entity @a[tag=a_table_3] run bossbar add liar_bar_a_table_time_player3 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true}]
execute if entity @a[tag=a_table_4] run bossbar add liar_bar_a_table_time_player4 [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[tag=a_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_a_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true}]

execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 color red
execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player2 color red
execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player3 color red
execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player4 color red

execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 max 6
execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 value 6
execute if entity @a[tag=a_table_1] run bossbar set liar_bar_a_table_time_player1 players @a[tag=a_table_1]

execute if entity @a[tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 max 6
execute if entity @a[tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 value 6
execute if entity @a[tag=a_table_2] run bossbar set liar_bar_a_table_time_player2 players @a[tag=a_table_2]

execute if entity @a[tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 max 6
execute if entity @a[tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 value 6
execute if entity @a[tag=a_table_3] run bossbar set liar_bar_a_table_time_player3 players @a[tag=a_table_3]

execute if entity @a[tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 max 6
execute if entity @a[tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 value 6
execute if entity @a[tag=a_table_4] run bossbar set liar_bar_a_table_time_player4 players @a[tag=a_table_4]
#设置boss条初始状态
