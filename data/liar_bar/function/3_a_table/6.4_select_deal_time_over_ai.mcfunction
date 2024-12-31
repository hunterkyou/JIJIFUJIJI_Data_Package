#时间到了  模拟ai选牌

$execute as @e[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_a_table_card,tag=card_1] if entity @s unless entity @e[tag=a_table_card_select] run return run tag @s add a_table_card_select
$execute as @e[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_a_table_card,tag=card_2] if entity @s unless entity @e[tag=a_table_card_select] run return run tag @s add a_table_card_select
$execute as @e[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_a_table_card,tag=card_3] if entity @s unless entity @e[tag=a_table_card_select] run return run tag @s add a_table_card_select
$execute as @e[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_a_table_card,tag=card_4] if entity @s unless entity @e[tag=a_table_card_select] run return run tag @s add a_table_card_select
$execute as @e[type=minecraft:item_display,tag=card_gaming,tag=card_player$(player_turn),tag=liar_bar_a_table_card,tag=card_5] if entity @s unless entity @e[tag=a_table_card_select] run return run tag @s add a_table_card_select

#say ai选牌
#哪个在就给哪个加标签




