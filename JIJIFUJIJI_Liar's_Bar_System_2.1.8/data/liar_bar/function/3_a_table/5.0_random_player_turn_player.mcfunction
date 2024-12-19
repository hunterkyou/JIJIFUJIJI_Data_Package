#选择开始的玩家




############测试
#tellraw @a [{"text":"a_table_playing ","color":"red"},{"selector":"@a[tag=a_table_playing]","color":"red"},\
#{"text":"   a_table_last   ","color":"gold"},{"selector":"@a[tag=a_table_last]","color":"gold"},\
#{"text":"   【【   这是5.0_random_player_turn_player前   】】","color":"green"}]
############测试





execute if entity @a[tag=a_table__shoot,team=liar_bar_a_table,tag=a_table_last,limit=1,sort=random] as @a[tag=a_table__shoot,team=liar_bar_a_table,tag=a_table_last,limit=1,sort=random] run return run tag @s add a_table_playing
#如果存在玩家是开枪 但是没死 并且是上家就运行
execute if entity @a[tag=a_table__shoot,team=liar_bar_a_table,limit=1,sort=random] as @a[tag=a_table__shoot,team=liar_bar_a_table,limit=1,sort=random] run return run tag @s add a_table_playing
#如果存在玩家是开枪 但是没死 
execute if entity @a[tag=a_table_after_gun,team=liar_bar_a_table,limit=1,sort=random] as @a[tag=a_table_after_gun,team=liar_bar_a_table,limit=1,sort=random] run return run tag @s add a_table_playing
#如果没有tag=a_table__shoot存活，就选择给a_table_after_gun
return run tag @a[team=liar_bar_a_table,sort=random,limit=1] add a_table_playing
#如果没有满足以上条件的玩家，就给上面随机玩家加个a_table_playing

#tag kyou add a_table_playing

#开枪后新轮发牌 玩家判定逻辑
#有玩家没 那就让其中一个成为成为a_table_playing   （优先a_table_last）
#玩家死亡了——#a_table__shoot 全部死亡，从或者的下家开始设置为a_table_playing

#非恶魔牌
        #没死人        a_table__shoot
        #死人了          a_table_playing的下一个出
#恶魔牌
        #没死人或者没死完        a_table__shoot 选一个    a_table_last优先
        #全死了          判定a_table_last胜利了
 


