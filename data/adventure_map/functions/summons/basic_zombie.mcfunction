summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_zombie",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 0
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Zombie"', CustomNameVisible:1, HandItems:[ {id:"minecraft:rotten_flesh",Count:1b}, {} ], ArmorItems:[ {}, {}, {}, {id:"minecraft:chainmail_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:20.0f}, {Name:"generic.follow_range",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common