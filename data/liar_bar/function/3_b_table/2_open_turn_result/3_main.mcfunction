#开


tag @a[team=liar_bar_b_table,tag=b_table_playing] add b_table__shoot
#如果以上都不是就给正在玩的当前玩家设置标签

#如果非恶魔牌的情况下，是主牌，则是b_table_playing受罚，可能会出现b_table_playing死亡的情况，因此需要在他死前把b_table_after_gun给下一个玩家

function liar_bar:3_b_table/1_next_player/1_player with storage minecraft:jijifujiji_liat_bar b_table_position
#运行找下家的函数，找到下家，让下家有tag=b_table_playing
tag @a[team=liar_bar_b_table,tag=b_table_playing] add b_table_after_gun
#给新的下家一个b_table_after_gun标签
tag @a[team=liar_bar_b_table] remove b_table_playing
#清除正在玩的标签


$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"哇！是","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"主牌","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"，","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[team=liar_bar_b_table,tag=b_table_playing]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"按下扳机吧！","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
#语句显示