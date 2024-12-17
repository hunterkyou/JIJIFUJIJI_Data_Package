#赌博模式
give @s minecraft:heart_of_the_sea[minecraft:custom_name='{"text":"\\u00A7c坤坤币"}',minecraft:lore=['{"text":"用于兑换服务器特供物品的货币。"}']] 64
give @s minecraft:prize_pottery_sherd[unbreakable={},minecraft:enchantments={levels:{unbreaking:99}},minecraft:custom_model_data=9999301,minecraft:custom_name='{"text":"\\u00A74饭团币"}',minecraft:lore=['{"text":"\\u00A7f搏一搏，\\u00A7e单车变"}']] 64


tellraw @s [{"text":"每种货币各发一组！","color":"yellow"}]

function liar_bar:0_op