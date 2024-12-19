#开


tag @a[team=liar_bar_e_table,tag=e_table_playing] add e_table__shoot
#如果以上都不是就给正在玩的当前玩家设置标签

#如果非恶魔牌的情况下，是主牌，则是e_table_playing受罚，可能会出现e_table_playing死亡的情况，因此需要在他死前把e_table_after_gun给下一个玩家

function liar_bar:3_e_table/1_next_player/1_player with storage minecraft:jijifujiji_liat_bar e_table_position
#运行找下家的函数，找到下家，让下家有tag=e_table_playing
tag @a[team=liar_bar_e_table,tag=e_table_playing] add e_table_after_gun
#给新的下家一个e_table_after_gun标签
tag @a[team=liar_bar_e_table] remove e_table_playing
#清除正在玩的标签


$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"哇！是","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"主牌","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"，","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[team=liar_bar_e_table,tag=e_table_playing]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"按下扳机吧！","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
#语句显示