summon minecraft:phantom ~ ~ ~ {DeathLootTable:"adventure_map:entities/empty",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 20
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 30
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Sewer Creature"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:7.0f}, {Name:"generic.follow_range",Base:256.0f},{Name:"generic.movementSpeed",Base:0.1f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common