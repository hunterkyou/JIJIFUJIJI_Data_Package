#选择开始的玩家




############测试
#tellraw @a [{"text":"e_table_playing ","color":"red"},{"selector":"@a[tag=e_table_playing]","color":"red"},\
#{"text":"   e_table_last   ","color":"gold"},{"selector":"@a[tag=e_table_last]","color":"gold"},\
#{"text":"   【【   这是5.0_random_player_turn_player前   】】","color":"green"}]
############测试





execute if entity @a[tag=e_table__shoot,team=liar_bar_e_table,tag=e_table_last,limit=1,sort=random] as @a[tag=e_table__shoot,team=liar_bar_e_table,tag=e_table_last,limit=1,sort=random] run return run tag @s add e_table_playing
#如果存在玩家是开枪 但是没死 并且是上家就运行
execute if entity @a[tag=e_table__shoot,team=liar_bar_e_table,limit=1,sort=random] as @a[tag=e_table__shoot,team=liar_bar_e_table,limit=1,sort=random] run return run tag @s add e_table_playing
#如果存在玩家是开枪 但是没死 
execute if entity @a[tag=e_table_after_gun,team=liar_bar_e_table,limit=1,sort=random] as @a[tag=e_table_after_gun,team=liar_bar_e_table,limit=1,sort=random] run return run tag @s add e_table_playing
#如果没有tag=e_table__shoot存活，就选择给e_table_after_gun
return run tag @a[team=liar_bar_e_table,sort=random,limit=1] add e_table_playing
#如果没有满足以上条件的玩家，就给上面随机玩家加个e_table_playing

#tag kyou add e_table_playing

#开枪后新轮发牌 玩家判定逻辑
#有玩家没 那就让其中一个成为成为e_table_playing   （优先e_table_last）
#玩家死亡了——#e_table__shoot 全部死亡，从或者的下家开始设置为e_table_playing

#非恶魔牌
        #没死人        e_table__shoot
        #死人了          e_table_playing的下一个出
#恶魔牌
        #没死人或者没死完        e_table__shoot 选一个    e_table_last优先
        #全死了          判定e_table_last胜利了
 


