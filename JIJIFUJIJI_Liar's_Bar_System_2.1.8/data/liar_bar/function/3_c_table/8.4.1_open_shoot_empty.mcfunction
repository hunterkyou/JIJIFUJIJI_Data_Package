#开枪，是空弹

execute at @s run playsound minecraft:block.stone_button.click_off master @a ~ ~ ~ 1 0.97
#音效
execute at @s anchored eyes run particle crit ^-0.2 ^ ^0.5 0.1 0.1 0.1 0 1 normal
#粒子效果
$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"selector":"@s","color":"gold","bold":true},{"text":"运气不错，是一发空弹。","color":"green"}]
#聊天框提示




