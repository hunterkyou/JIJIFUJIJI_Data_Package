#OP指令初次使用该数据包建议使用


tellraw @s [{"text":"《骗子酒馆OP配置页面》","color":"yellow"}]
tellraw @s [{"text":"配置第一桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar a_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/a_2_table_generate with storage minecraft:jijifujiji_liat_bar a_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/a_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]
tellraw @s [{"text":"配置第二桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar b_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/b_2_table_generate with storage minecraft:jijifujiji_liat_bar b_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/b_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]
tellraw @s [{"text":"配置第三桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar c_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/c_2_table_generate with storage minecraft:jijifujiji_liat_bar c_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/c_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]
tellraw @s [{"text":"配置第四桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar d_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/d_2_table_generate with storage minecraft:jijifujiji_liat_bar d_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/d_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]
tellraw @s [{"text":"配置第五桌：","color":"yellow"},{"text":"【设置坐标】","color":"gold","bold":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage jijifujiji_liat_bar e_table_position set value {x:整数,y:整数,z:整数}"},"hoverEvent":{"action":"show_text","value":"请把里面的数字改成对应的XYZ坐标"}},{"text":"【生成结构】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/e_2_table_generate with storage minecraft:jijifujiji_liat_bar e_table_position"},"hoverEvent":{"action":"show_text","value":"在前面确定的坐标生成桌子结构，这会破坏已有方块，请设置坐标后慎用。"}},{"text":"【获取命令方块】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/e_3_table_command_block"},"hoverEvent":{"action":"show_text","value":"获得开始游戏和结束游戏的命令方块"}}]

execute if score gambling_mode jijifujiji_liar_bar_variable matches 1 run return run tellraw @s [{"text":"【关闭赌博模式】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/2_gambling_mode_off"},"hoverEvent":{"action":"show_text","value":"关闭赌货币的选项"}},{"text":"【获得货币】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/3_gambling_mode_give"},"hoverEvent":{"action":"show_text","value":"给你发放用于赌博的货币。"}}]
return run tellraw @s [{"text":"【开启赌博模式】","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function liar_bar:1_op_command/1_gambling_mode_on"},"hoverEvent":{"action":"show_text","value":"允许玩家赌命的同时可以赌货币，目前不支持录入其他货币。"}}]






#玩家输入指令后呼出提示框


#：本数据包可以布置五桌“赌局”同时运行,请按按钮设置每桌的坐标。
#	配置1-5桌
#		仅设置坐标
#			为第一桌存入坐标点
#		设置坐标并生成结构
#（这会破坏已有方块，慎用）
#			使用place生成结构并存入坐标点
#			给两个塞了命令的命令方块，让使用者自己放
#	设置可赌货币A
#	货币A名称
#	货币B名称