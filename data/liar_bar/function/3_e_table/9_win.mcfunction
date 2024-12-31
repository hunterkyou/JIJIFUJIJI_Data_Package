#胜利函数


$tellraw @a [{"text":"恭喜","color":"yellow"},{"selector":"@a[team=liar_bar_e_table]","color":"gold","bold":true},{"text":"获得了本局骗子酒馆的胜利！赢得了","color":"yellow"},{"score":{"objective":"jijifujiji_liar_bar_variable","name":"liar_bar_e_table_number"},"color":"gold","bold":true},{"text":"个$(mode)！","color":"gold","bold":true}]
#夸奖胜利的玩家
$execute positioned $(x) $(y) $(z) run summon firework_rocket ~ ~2 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{has_twinkle:1b,has_trail:1b,shape:small_ball,colors:[I;16351261],fade_colors:[I;16701501]}]}}}}
#放个烟花
$execute if score e_table_mode jijifujiji_liar_bar_variable matches 1 run give @a[team=liar_bar_e_table] bread[custom_name='[{"text":"胜利者的面包","italic":false,"color":"red"}]',lore=['[{"text":"赢得了命和面包。"}]'],food={can_always_eat:1b,eat_seconds:0.1,nutrition:1,saturation:1,effects:[{effect:{id:luck,duration:6000,amplifier:10},probability:1f}]}] $(number)
$execute if score e_table_mode jijifujiji_liar_bar_variable matches 2 run give @a[team=liar_bar_e_table] minecraft:prize_pottery_sherd[unbreakable={},minecraft:enchantments={levels:{unbreaking:99}},minecraft:custom_model_data=9999301,minecraft:custom_name='{"text":"\\u00A74饭团币"}',minecraft:lore=['{"text":"\\u00A7f搏一搏，\\u00A7e单车变"}']] $(number)
$execute if score e_table_mode jijifujiji_liar_bar_variable matches 3 run give @a[team=liar_bar_e_table] minecraft:heart_of_the_sea[minecraft:custom_name='{"text":"\\u00A7c坤坤币"}',minecraft:lore=['{"text":"用于兑换服务器特供物品的货币。"}']] $(number)
#发放奖励
function liar_bar:3_e_table/98_kill_all with storage minecraft:jijifujiji_liat_bar e_table_position
#启动结束




