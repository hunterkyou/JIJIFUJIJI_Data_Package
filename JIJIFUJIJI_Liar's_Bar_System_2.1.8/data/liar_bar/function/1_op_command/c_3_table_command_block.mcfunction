#第一桌的命令方块

give @s command_block[minecraft:block_entity_data={id:"command_block",Command:"function liar_bar:3_c_table/1_start_game with storage minecraft:jijifujiji_liat_bar c_table_position"},custom_name='[{"text":"第一桌开始游戏","italic":false,"color":"gold"}]',lore=['[{"text":"放置后用红石信号激活，可以启动第一桌的游戏。","italic":false,"color":"yellow"}]']]
give @s command_block[minecraft:block_entity_data={id:"command_block",Command:"function liar_bar:3_c_table/99_over_game with storage minecraft:jijifujiji_liat_bar c_table_position"},custom_name='[{"text":"第一桌结束游戏","italic":false,"color":"red"}]',lore=['[{"text":"放置后用红石信号激活，可以结束第一桌的游戏。","italic":false,"color":"blue"}]']]



tellraw @s [{"text":"命令方块发放完毕！","color":"yellow"}]

function liar_bar:0_op