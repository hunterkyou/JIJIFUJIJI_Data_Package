#选择开始的玩家




############测试
#tellraw @a [{"text":"b_table_playing ","color":"red"},{"selector":"@a[tag=b_table_playing]","color":"red"},\
#{"text":"   b_table_last   ","color":"gold"},{"selector":"@a[tag=b_table_last]","color":"gold"},\
#{"text":"   【【   这是5.0_random_player_turn_player前   】】","color":"green"}]
############测试





execute if entity @a[tag=b_table__shoot,team=liar_bar_b_table,tag=b_table_last,limit=1,sort=random] as @a[tag=b_table__shoot,team=liar_bar_b_table,tag=b_table_last,limit=1,sort=random] run return run tag @s add b_table_playing
#如果存在玩家是开枪 但是没死 并且是上家就运行
execute if entity @a[tag=b_table__shoot,team=liar_bar_b_table,limit=1,sort=random] as @a[tag=b_table__shoot,team=liar_bar_b_table,limit=1,sort=random] run return run tag @s add b_table_playing
#如果存在玩家是开枪 但是没死 
execute if entity @a[tag=b_table_after_gun,team=liar_bar_b_table,limit=1,sort=random] as @a[tag=b_table_after_gun,team=liar_bar_b_table,limit=1,sort=random] run return run tag @s add b_table_playing
#如果没有tag=b_table__shoot存活，就选择给b_table_after_gun
return run tag @a[team=liar_bar_b_table,sort=random,limit=1] add b_table_playing
#如果没有满足以上条件的玩家，就给上面随机玩家加个b_table_playing

#tag kyou add b_table_playing

#开枪后新轮发牌 玩家判定逻辑
#有玩家没 那就让其中一个成为成为b_table_playing   （优先b_table_last）
#玩家死亡了——#b_table__shoot 全部死亡，从或者的下家开始设置为b_table_playing

#非恶魔牌
        #没死人        b_table__shoot
        #死人了          b_table_playing的下一个出
#恶魔牌
        #没死人或者没死完        b_table__shoot 选一个    b_table_last优先
        #全死了          判定b_table_last胜利了
 


