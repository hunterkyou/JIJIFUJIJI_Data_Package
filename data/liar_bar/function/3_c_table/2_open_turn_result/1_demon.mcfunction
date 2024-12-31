#开


tag @a[team=liar_bar_c_table,tag=!c_table_last] add c_table__shoot
#如果出了恶魔牌
tag @a[team=liar_bar_c_table] remove c_table_playing
#清除正在玩的标签
execute at @a[team=liar_bar_c_table,tag=c_table__shoot,limit=1] run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 0.97
#播放点燃炸药的音效
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"哦！是","color":"yellow"},{"text":"恶魔牌","color":"red","bold":true},{"text":"，","color":"yellow"},{"selector":"@a[team=liar_bar_c_table,tag=!c_table_last]","color":"gold","bold":true},{"text":"要遭殃了~","color":"yellow"}]
#语句显示