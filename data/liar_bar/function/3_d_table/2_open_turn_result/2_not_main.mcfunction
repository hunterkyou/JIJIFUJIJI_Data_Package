#开


tag @a[team=liar_bar_d_table,tag=d_table_last] add d_table__shoot
#如果存在tag=!card_main_gaming,tag=d_table_card_on_center （非主牌、中心牌）就开枪函数

tag @a[team=liar_bar_d_table,tag=d_table_playing] add d_table_after_gun
#对于非恶魔牌的情况，开出来非主牌，则是上家d_table_last受罚，因此给当前玩家一个标签
tag @a[team=liar_bar_d_table] remove d_table_playing
#清除正在玩的标签
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"哦！不是","color":"yellow"},{"text":"主牌","color":"red","bold":true},{"text":"，","color":"yellow"},{"selector":"@a[team=liar_bar_d_table,tag=d_table_last]","color":"gold","bold":true},{"text":"冲着自己来一枪吧！","color":"yellow"}]
#语句显示


