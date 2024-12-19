#配置第一桌的坐标

tellraw @s [{"text":"配置第一桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar e_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/e_2_table_generate with storage minecraft:jijifujiji_liat_bar e_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/e_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]

function liar_bar:0_op

