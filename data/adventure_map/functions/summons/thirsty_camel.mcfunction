summon minecraft:llama ~ ~ ~ {DeathLootTable:"adventure_map:entities/thirsty_camel",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 100
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 100
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 100
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 30
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Thirsty Camel"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:8.0f}, {Name:"generic.follow_range",Base:256.0f},{Name:"generic.knockbackResistance",Base:0.20f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common