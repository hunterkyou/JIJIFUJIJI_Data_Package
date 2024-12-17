#开枪， 这里延迟运行



#say 对符合要求的玩家开枪！
#execute at @s run summon item ~ ~1 ~ {Item:{id:stone,count:1},Tags:["jijifujiji_liar_bar_temp_gun"]}
#先创造一个物品
#item replace entity @n[tag=jijifujiji_liar_bar_temp_gun,type=minecraft:item] container.0 from entity @s weapon.mainhand
#把玩家主手的物品换成这个物品
#item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}] 1
#让玩家举枪



execute store result storage minecraft:jijifujiji_liat_bar a_table_position.bullet int 1 run scoreboard players get @s jijifujiji_liar_bar_bullet
#把剩余子弹数的计分板传入储存命令
$execute store result score jijifujiji_liar_bar_temp_gun jijifujiji_liar_bar_variable run random value 1..$(bullet)
#判定死亡，运行随机数（当子弹只有1的时候会运行无效）
function liar_bar:3_a_table/8.4_open_shoot_random with storage minecraft:jijifujiji_liat_bar a_table_position
#判定空弹和实弹
scoreboard players remove @s jijifujiji_liar_bar_bullet 1
#更新子弹数量





