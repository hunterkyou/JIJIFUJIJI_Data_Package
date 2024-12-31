#点了按钮2

$execute if score @s jijifujiji_liar_bar_e_table_click matches 1..5 run tag @n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_e_table_card,tag=card_$(card_select)] add e_table_card_select
$execute if score @s jijifujiji_liar_bar_e_table_click matches 1..5 run tag @n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_e_table_card,tag=card_$(card_select)] add e_table_card_on_center
#如果是1到5，就给牌加标签
$execute if score @s jijifujiji_liar_bar_e_table_click matches 6..10 run tag @n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_e_table_card,tag=card_$(card_select)] remove e_table_card_select
$execute if score @s jijifujiji_liar_bar_e_table_click matches 6..10 run tag @n[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_e_table_card,tag=card_$(card_select)] remove e_table_card_on_center
#如果是6到10，就给牌删除标签