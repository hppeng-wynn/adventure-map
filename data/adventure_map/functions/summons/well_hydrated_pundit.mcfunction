summon minecraft:husk ~ ~ ~ {DeathLootTable:"adventure_map:entities/region_4",Tags:["unprocessed"],Team:Enemies}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.hp 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mh 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.prev_hp 60
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.dmgrb 10
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] fine_hp.mdmgrb 5
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] { CustomName:'"Well Hydrated Pundit"', CustomNameVisible:1, HandItems:[ {id:"minecraft:iron_sword",Count:1b}, {id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}} ], ArmorItems:[ {id:"minecraft:chainmail_boots",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_leggings",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[]}}, {id:"minecraft:player_head",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[],SkullOwner:"hello000"}} ], HandDropChances:[0.0f,0.0f], ArmorDropChances:[0.0f,0.0f,0.0f,0.0f], Health:200.0f, Attributes:[{Name:"generic.max_health",Base:200.0f},{Name:"generic.attack_damage",Base:30.0f}, {Name:"generic.follow_range",Base:256.0f},{Name:"generic.knockbackResistance",Base:0.08f}, {Name:"generic.movementSpeed",Base:0.28f}] }
function adventure_map:summons/enemy_aggro
function adventure_map:summons/enemy_common