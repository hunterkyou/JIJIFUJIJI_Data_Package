#开枪  这里需要一个重新选取玩家

data modify storage minecraft:jijifujiji_liat_bar a_table_position.shoot_uuid set from entity @s UUID
#参入该玩家的UUID

function liar_bar:3_a_table/8.1.9.2_open_shoot_target2 with storage minecraft:jijifujiji_liat_bar a_table_position
#进行传参