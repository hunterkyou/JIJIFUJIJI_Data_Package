#重载时调用
tellraw @a [{"text": "jijifujiji","color": "yellow"},{"text": "《骗子酒馆系统》","color": "gold"},{"text": "","color": "gold"},{"text": " 数据包正在加载中...","color": "yellow"}]


scoreboard objectives add jijifujiji_liar_bar_variable dummy ["骗子酒馆变量"]
scoreboard objectives add jijifujiji_liar_bar_bullet dummy ["子弹"]
#计分板

tellraw @a [{"text": "jijifujiji","color": "yellow"},{"text": "《骗子酒馆系统》","color": "gold"},{"text": "","color": "gold"},{"text": " 数据包加载成功!","color": "yellow"}]
