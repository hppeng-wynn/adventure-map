scoreboard players operation @e[tag=unprocessed,sort=nearest,limit=1] current_region = [GLOBALS] current_region
# fk u paper
tag @e[tag=unprocessed,sort=nearest,limit=1] add Enemies
team join Enemies @e[tag=unprocessed,sort=nearest,limit=1]
execute store result entity @e[tag=unprocessed,sort=nearest,limit=1] PersistenceRequired byte 1 run scoreboard players get [GLOBALS] persistence 
tag @e[tag=unprocessed,sort=nearest,limit=1] add fine_hp.tracker
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed