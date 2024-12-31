#点了按钮2
tellraw @s [{"text":"你的本轮出牌为：","color":"green"},{"selector":"@e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select]","color":"dark_green","bold":true}]
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"selector":"@s","color":"gold","bold":true},{"text":"出了","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_c_table_temp"},"color":"gold","bold":true},{"text":"张牌。","color":"yellow"}]
#聊天框显示
scoreboard players reset @a jijifujiji_liar_bar_c_table_join
scoreboard players reset @a jijifujiji_liar_bar_c_table_click
#重置掉按了模式按钮玩家的按键计分板
#c_table_card_on_center 中心的牌
kill @e[tag=c_table_card_on_center,tag=!c_table_card_select]
#此时，新选中的牌有俩个标签c_table_card_select和c_table_card_on_center，只有一个标签的是老牌。此时删除老牌
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select] remove card_player1
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select] remove card_player2
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select] remove card_player3
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select] remove card_player4
tag @e[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select] remove card_player5
#清除要去中间的牌
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=!card_temp] add card_temp
$data merge entity @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] {Pos:[$(x2)d,$(y2)d,$(z2)d],teleport_duration:20,interpolation_duration:20,start_interpolation:0, transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]}}
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] remove c_table_card_select
tag @e remove card_temp
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=!card_temp] add card_temp
$data merge entity @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] {Pos:[$(x2)d,$(y2)d,$(z2)d],teleport_duration:20,interpolation_duration:20,start_interpolation:0, transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.35f]}}
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] remove c_table_card_select
tag @e remove card_temp
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=!card_temp] add card_temp
$data merge entity @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] {Pos:[$(x2)d,$(y2)d,$(z2)d],teleport_duration:20,interpolation_duration:20,start_interpolation:0, transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, -0.35f]}}
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] remove c_table_card_select
tag @e remove card_temp
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=!card_temp] add card_temp
$data merge entity @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] {Pos:[$(x2)d,$(y2)d,$(z2)d],teleport_duration:20,interpolation_duration:20,start_interpolation:0, transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.7f]}}
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] remove c_table_card_select
tag @e remove card_temp
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=!card_temp] add card_temp
$data merge entity @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] {Pos:[$(x2)d,$(y2)d,$(z2)d],teleport_duration:20,interpolation_duration:20,start_interpolation:0, transformation: {left_rotation: [0.5f, -0.5f, 0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, -0.7f]}}
tag @n[type=minecraft:item_display,tag=card_gaming,tag=liar_bar_c_table_card,tag=c_table_card_select,tag=card_temp] remove c_table_card_select
tag @e remove card_temp

#把选中的牌搞到中间去

execute if entity @a[team=liar_bar_c_table,tag=c_table_1] run bossbar set liar_bar_c_table_time_player1 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_1]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player1]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_2] run bossbar set liar_bar_c_table_time_player2 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_2]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player2]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_3] run bossbar set liar_bar_c_table_time_player3 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_3]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player3]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_4] run bossbar set liar_bar_c_table_time_player4 name [{"text":"剩余子弹","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_bullet","name":"@a[team=liar_bar_c_table,tag=c_table_4]"},"color":"gold","bold":true},{"text":"/6    ","color":"gold","bold":true},{"text":"手牌：","color":"yellow"},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_gaming,tag=card_player4]","color":"gold","bold":true},{"text":"   本局主牌：【","color":"yellow","bold":true},{"selector":"@e[type=minecraft:item_display,tag=liar_bar_c_table_card,tag=card_main]","color":"gold","bold":true},{"text":"】","color":"yellow","bold":true}]
execute if entity @a[team=liar_bar_c_table,tag=c_table_1] run bossbar set liar_bar_c_table_time_player1 players @a[team=liar_bar_c_table,tag=c_table_1]
execute if entity @a[team=liar_bar_c_table,tag=c_table_2] run bossbar set liar_bar_c_table_time_player2 players @a[team=liar_bar_c_table,tag=c_table_2]
execute if entity @a[team=liar_bar_c_table,tag=c_table_3] run bossbar set liar_bar_c_table_time_player3 players @a[team=liar_bar_c_table,tag=c_table_3]
execute if entity @a[team=liar_bar_c_table,tag=c_table_4] run bossbar set liar_bar_c_table_time_player4 players @a[team=liar_bar_c_table,tag=c_table_4]
#boss条名字设置为剩余子弹+手牌+主牌，更新显示目标




function liar_bar:3_c_table/7_standard_turn with storage minecraft:jijifujiji_liat_bar c_table_position
#启动正式标准回合