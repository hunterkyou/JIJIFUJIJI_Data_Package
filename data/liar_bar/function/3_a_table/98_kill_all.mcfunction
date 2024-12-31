#结束活动



scoreboard players set a_table_mode jijifujiji_liar_bar_variable 0
#设置结束游戏

$tellraw @a[x=$(x1),y=$(y1),z=$(z1),dx=18,dy=6,dz=18] [{"text":"本局活动结束辣！","color":"yellow"}]
#游戏被结束辣



scoreboard objectives remove jijifujiji_liar_bar_a_table_join
scoreboard objectives remove jijifujiji_liar_bar_a_table_click
scoreboard objectives setdisplay below_name
#删除计分板
bossbar remove minecraft:jijifujiji_liar_bar_a_table_time
bossbar remove minecraft:liar_bar_a_table_time_player1
bossbar remove minecraft:liar_bar_a_table_time_player2
bossbar remove minecraft:liar_bar_a_table_time_player3
bossbar remove minecraft:liar_bar_a_table_time_player4
#删除游戏时间boss条

kill @e[type=minecraft:interaction,tag=a_table_1]
kill @e[type=minecraft:interaction,tag=a_table_2]
kill @e[type=minecraft:interaction,tag=a_table_3]
kill @e[type=minecraft:interaction,tag=a_table_4]
kill @e[type=minecraft:item_display,tag=liar_bar_a_table_card]
#删除实体
tag @a remove a_table_1
tag @a remove a_table_2
tag @a remove a_table_3
tag @a remove a_table_4
tag @a remove a_table_playing
tag @a[team=liar_bar_a_table] remove a_table_last
tag @a[team=liar_bar_a_table] remove liar_bar_shoot
tag @a[team=liar_bar_a_table] remove a_table_after_gun
tag @e[type=minecraft:item_display,tag=liar_bar_a_table_card] remove card_select
tag @e[type=minecraft:item_display,tag=liar_bar_a_table_card] remove card_on_center
#删除标签


team remove liar_bar_a_table
#删除队伍

#tp @n[tag=sit] -2955.5 105.5 2094.5

#-2956 105 2094

#summon minecraft:interaction -2955.50 105.50 2094.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 0b, Fire: 0s, width: 1.0f, interaction: {player: [I; -910524479, -1599391953, -2040731477, -1176594605], timestamp: 802825986L}, AABB: [-2956.0d, 105.5d, 2094.0d, -2955.0d, 106.5d, 2095.0d], Tags: ["sit"], height: 1.0f}


