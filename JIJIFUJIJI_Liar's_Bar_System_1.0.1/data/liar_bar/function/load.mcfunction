#重载时调用
tellraw @a [{"text": "item","color": "yellow"},{"text": "《骗子酒馆系统》","color": "gold"},{"text": "","color": "gold"},{"text": " 数据包正在加载中...","color": "yellow"}]


scoreboard objectives add jijifujiji_liar_bar_variable dummy ["骗子酒馆变量"]
scoreboard objectives add jijifujiji_liar_bar_bullet dummy ["骗子酒馆子弹数"]
#scoreboard players set jijifujiji_liar_bar_20 jijifujiji_liar_bar_variable 20





#scoreboard objectives add gamble_ticket minecraft.used:minecraft.experience_bottle ["使用彩票"]

#设置号角的计分板

#scoreboard objectives add gamble_size trigger ["赌大小"]
#scoreboard objectives add gamble_size_amount trigger ["赌大小下注数额"]
#scoreboard objectives add gamble_size_join trigger ["是否参与赌大小下注"]
#scoreboard objectives add gamble_variable dummy ["赌博变量"]

#scoreboard players set size_ten gamble_variable 10
#scoreboard players set size_five gamble_variable 5
#scoreboard players set size_two gamble_variable 2
#scoreboard players set size_zero gamble_variable 0
#scoreboard players set size_minus gamble_variable -1
#scoreboard players set gamble_time gamble_variable 0
#scoreboard players set gamble_fruit_time gamble_variable 0
#scoreboard players set gamble_21_time gamble_variable 0

#scoreboard players set 21_input_player0 gamble_variable 10
#scoreboard players set 21_input_player11 gamble_variable 10
#scoreboard players set 21_input_player12 gamble_variable 10
#设置赌场系统的计分板


tellraw @a [{"text": "item","color": "yellow"},{"text": "《骗子酒馆系统》","color": "gold"},{"text": "","color": "gold"},{"text": " 数据包加载成功!","color": "yellow"}]
