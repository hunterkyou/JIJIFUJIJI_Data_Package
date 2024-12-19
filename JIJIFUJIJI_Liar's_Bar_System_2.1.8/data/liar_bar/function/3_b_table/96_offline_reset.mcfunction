#w离线重置

$execute as @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] run tellraw @s [{"text":"出牌玩家掉线，重新开局，随机玩家出牌。","color":"yellow"}]
#聊天框显示出牌玩家掉线，重置对局，随机玩家开局


execute as @a[tag=b_table_1,team=liar_bar_b_table] at @s run tp @s ~ ~ ~ 90 0
execute as @a[tag=b_table_2,team=liar_bar_b_table] at @s run tp @s ~ ~ ~ 180 0
execute as @a[tag=b_table_3,team=liar_bar_b_table] at @s run tp @s ~ ~ ~ -90 0
execute as @a[tag=b_table_4,team=liar_bar_b_table] at @s run tp @s ~ ~ ~ 0 0
#调整玩家的面向
execute as @a[tag=b_table_1,team=liar_bar_b_table] run ride @s mount @n[type=minecraft:interaction,tag=b_table_1]
execute as @a[tag=b_table_2,team=liar_bar_b_table] run ride @s mount @n[type=minecraft:interaction,tag=b_table_2]
execute as @a[tag=b_table_3,team=liar_bar_b_table] run ride @s mount @n[type=minecraft:interaction,tag=b_table_3]
execute as @a[tag=b_table_4,team=liar_bar_b_table] run ride @s mount @n[type=minecraft:interaction,tag=b_table_4]
#将玩家传送到座位
execute as @a[team=liar_bar_b_table] run clear @s carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}]
#清理玩家身上的枪
kill @e[type=minecraft:item_display,tag=liar_bar_b_table_card]
#删除实体牌和枪
function liar_bar:97_offline_check with storage minecraft:jijifujiji_liat_bar b_table_position
#清除掉线玩家
function liar_bar:3_b_table/4.0_deal_cards.exe with storage minecraft:jijifujiji_liat_bar b_table_position
#重新运行发牌函数