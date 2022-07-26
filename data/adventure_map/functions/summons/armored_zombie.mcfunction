summon minecraft:zombie ~ ~ ~ {DeathLootTable:"adventure_map:entities/armored_zombie",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 25
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 25
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 25
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 65
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Zombie Soldier"', CustomNameVisible:1, HandItems:[ {id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {} ], ArmorItems:[ {id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:20.0f}, {Name:"generic.movementSpeed",Base:0.35f},{Name:"generic.follow_range",Base:256.0f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common