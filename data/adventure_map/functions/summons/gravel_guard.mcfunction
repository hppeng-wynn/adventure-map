summon minecraft:husk ~ ~ ~ {DeathLootTable:"adventure_map:entities/basic_zombie",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 65
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 65
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 65
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 5
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 0
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Gravel Guard"', CustomNameVisible:1, HandItems:[ {id:"minecraft:stone_hoe",Count:1b}, {id:"minecraft:gravel",Count:1b} ], ArmorItems:[ {id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:wither_skeleton_skull",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:30.0f}, {Name:"generic.follow_range",Base:20.0f},{Name:"generic.knockbackResistance",Base:0.5f}] }
function adventure_map:summons/enemy_common