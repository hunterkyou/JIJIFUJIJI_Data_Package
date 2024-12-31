#开枪  这里需要一个重新选取玩家


$execute at @s run summon item ~ ~1.2 ~ {Item:{id:stone,count:1},Tags:["jijifujiji_liar_bar_temp_gun"],Owner:$(shoot_uuid)}
#execute at @s run summon item ~ ~1 ~ {Item:{id:stone,count:1},Tags:["jijifujiji_liar_bar_temp_gun"]}
#先创造一个物品
item replace entity @n[tag=jijifujiji_liar_bar_temp_gun,type=minecraft:item] container.0 from entity @s weapon.mainhand
#把玩家主手的物品换成这个物品

tag @n[tag=jijifujiji_liar_bar_temp_gun,type=minecraft:item] remove jijifujiji_liar_bar_temp_gun
#删除这个物品的标签
item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='[{"text":"左轮枪","italic":false,"bold":true,"color":"yellow"}]',custom_model_data=9999456,custom_data={liar_bar:1}] 1
#让玩家举枪发枪

title @s title [{"text":">>>你举起了枪<<<","color":"red","bold":true}]
#字幕显示
