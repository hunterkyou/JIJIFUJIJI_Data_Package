#第一桌生成
#function liar_bar:1_op_command/e_table_generate with storage minecraft:jijifujiji_liat_bar e_table_position
#
#data modify storage jijifujiji_liat_bar e_table_position set value {x:整字,y:整字,z:整字}
#建议输入的
#say 生成结构

$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ minecraft:ochre_froglight[axis=y]
#/setblock -2931 ~ 2127 minecraft:ochre_froglight[axis=y]


$execute positioned $(x) $(y) $(z) run setblock ~-2 ~ ~ minecraft:oak_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
#一号座位
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~2 minecraft:oak_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
#二号座位
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~-2 minecraft:oak_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
#四号座位
$execute positioned $(x) $(y) $(z) run setblock ~2 ~ ~ minecraft:oak_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
#三号座位

$execute positioned $(x) $(y) $(z) run setblock ~-1 ~ ~1 minecraft:oak_stairs[facing=north,half=top,shape=outer_right,waterlogged=false]
$execute positioned $(x) $(y) $(z) run setblock ~-1 ~ ~ minecraft:oak_stairs[facing=east,half=top,shape=straight,waterlogged=false]
#一号面前
$execute positioned $(x) $(y) $(z) run setblock ~-1 ~ ~-1 minecraft:oak_stairs[facing=east,half=top,shape=outer_right,waterlogged=false]
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~1 minecraft:oak_stairs[facing=north,half=top,shape=straight,waterlogged=false]
#二号面前
$execute positioned $(x) $(y) $(z) run setblock ~ ~ ~-1 minecraft:oak_stairs[facing=south,half=top,shape=straight,waterlogged=false]
#四号面前
$execute positioned $(x) $(y) $(z) run setblock ~1 ~ ~1 minecraft:oak_stairs[facing=north,half=top,shape=outer_left,waterlogged=false]
$execute positioned $(x) $(y) $(z) run setblock ~1 ~ ~ minecraft:oak_stairs[facing=west,half=top,shape=straight,waterlogged=false]
#三号面前
$execute positioned $(x) $(y) $(z) run setblock ~1 ~ ~-1 minecraft:oak_stairs[facing=south,half=top,shape=outer_right,waterlogged=false]

tellraw @s [{"text":"结构生成完毕！","color":"yellow"}]

function liar_bar:0_op

#$setblock $(x) $(y) $(z) minecraft:ochre_froglight[axis=y]
#哇明灯



#data get storage minecraft:jijifujiji_liat_bar e_table_position.x
#data get storage minecraft:jijifujiji_liat_bar e_table_position.y
#data get storage minecraft:jijifujiji_liat_bar e_table_position.z

#data modify storage jijifujiji_liat_bar e_table_position set value "-2931 103 2121"

#	配置1-5桌
#		仅设置坐标
#			为第一桌存入坐标点
#		设置坐标并生成结构
#（这会破坏已有方块，慎用）
#			使用place生成结构并存入坐标点
#			给两个塞了命令的命令方块，让使用者自己放