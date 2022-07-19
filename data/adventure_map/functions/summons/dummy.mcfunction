summon minecraft:zombie ~ ~ ~ {Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 10000
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 10000
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 10000
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Attack Dummy"', CustomNameVisible:1, HandItems:[ {id:"minecraft:paper",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {id:"hay_block",Count:1b} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:0.0f}, {Name:"generic.movementSpeed",Base:0.0f},{Name:"generic.follow_range",Base:256.0f},{Name:"generic.knockbackResistance",Base:1.00f}] }
function adventure_map:summons/enemy_common