#开枪，是实弹

execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.51
#音效

execute at @s anchored eyes run particle crit ^-0.2 ^ ^0.5 0.1 0.1 0.1 0 20 normal
#扣动扳机粒子效果
execute at @s run particle block{block_state: {Name: "minecraft:redstone_block"}} ~ ~1 ~ 0.1 0.5 0.1 0.4 50 force
#死亡粒子效果
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"selector":"@s","color":"gold","bold":true},{"text":"的脑袋被开了瓢。","color":"dark_red"}]
#聊天框提示
scoreboard players reset @s jijifujiji_liar_bar_bullet
#重置子弹数量
clear @s carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}]
#删除身上的枪
execute if entity @s[tag=d_table_1,team=liar_bar_d_table] run bossbar remove minecraft:liar_bar_d_table_time_player1
execute if entity @s[tag=d_table_2,team=liar_bar_d_table] run bossbar remove minecraft:liar_bar_d_table_time_player2
execute if entity @s[tag=d_table_3,team=liar_bar_d_table] run bossbar remove minecraft:liar_bar_d_table_time_player3
execute if entity @s[tag=d_table_4,team=liar_bar_d_table] run bossbar remove minecraft:liar_bar_d_table_time_player4
#根据玩家的编号标签移除BOSS条
team leave @s
tag @s remove d_table_1
tag @s remove d_table_2
tag @s remove d_table_3
tag @s remove d_table_4
tag @s remove d_table_playing
tag @s remove d_table_last
tag @s remove d_table__shoot
#清除玩家的队伍信息和标签
kill @s
#杀死玩家


execute store result score liar_bar_d_table_temp_players jijifujiji_liar_bar_variable if entity @a[team=liar_bar_d_table]
#统计玩家的数量
execute if score liar_bar_d_table_temp_players jijifujiji_liar_bar_variable matches ..1 run function liar_bar:3_d_table/9_win with storage minecraft:jijifujiji_liat_bar d_table_position
#检测玩家人数小于等于1，就运行胜利函数

#每次有玩家死亡都检测剩余玩家数量，每次有玩家出牌的时候都检测玩家数量