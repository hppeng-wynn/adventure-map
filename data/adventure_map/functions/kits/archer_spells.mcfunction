# Apply buffs
# None rn  
# Class restriction
effect give @a[tag=!archer,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Archer: Melee"}']}}}}] slowness 3 9
effect give @a[tag=!archer,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Archer: Melee"}']}}}}] weakness 3 9
tag @a[tag=archer,nbt={SelectedItem:{tag:{display:{Lore:['{"text":"Archer: Melee"}']}}}}] add holdingWeapon
tag @a[tag=archer,nbt={SelectedItemSlot:0}] remove holdingWeapon
effect give @a[tag=archer,tag=holdingWeapon] slowness 3 9
effect give @a[tag=archer,tag=holdingWeapon] weakness 3 9
tag @a[tag=archer] remove holdingWeapon  
# Arrow replenish mechanics for archer
clear @a[gamemode=adventure] arrow
clear @a[gamemode=adventure] tipped_arrow
clear @a[gamemode=adventure] spectral_arrow
tag @a[tag=archer,nbt={Inventory:[{Slot:-106b}]}] add offhandOccupied 
item replace entity @a[tag=archer,tag=!offhandOccupied,nbt={SelectedItemSlot:1,SelectedItem:{tag:{display:{Lore:['{"text":"Archer: Normal Arrows"}']}}}}] weapon.offhand with arrow 1
item replace entity @a[tag=archer,tag=!offhandOccupied,nbt={SelectedItemSlot:1,SelectedItem:{tag:{display:{Lore:['{"text":"Archer: Piercing Arrows 1"}']}}}}] weapon.offhand with tipped_arrow 1
stopsound @a player minecraft:item.armor.equip_generic
tag @a[tag=archer] remove offhandOccupied  
# Piercing arrow spell
tag @a[tag=archer,nbt={Inventory:[{Slot:2b,tag:{display:{Name:'{"italic":false,"text":"Piercing Arrow 1"}'}}}]}] add pa_1
scoreboard players set @a[tag=pa_1] spell.7.power 10 
# Different tiers
item replace entity @a[tag=pa_1,scores={mana.mana=..599}] container.2 with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Piercing Arrow 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow that pierces 7 enemies,"}','{"italic":false,"color":"white","text":"  dealing 10 magic damage and 7-10 physical damage."}','{"italic":false,"color":"blue","text":"Cost: 600MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Piercing Arrow Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1
item replace entity @a[tag=!pa_1,tag=archer,nbt={SelectedItem:{tag:{display:{Name:'{"italic":false,"text":"Piercing Arrow 1"}'}}}}] weapon.mainhand with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Piercing Arrow 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow that pierces 7 enemies,"}','{"italic":false,"color":"white","text":"  dealing 10 magic damage and 7-10 physical damage."}','{"italic":false,"color":"blue","text":"Cost: 600MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Piercing Arrow Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1
item replace entity @a[tag=archer,nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"italic":false,"text":"Piercing Arrow 1"}'}}}]}] weapon.offhand with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Piercing Arrow 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow that pierces 7 enemies,"}','{"italic":false,"color":"white","text":"  dealing 10 magic damage and 7-10 physical damage."}','{"italic":false,"color":"blue","text":"Cost: 600MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Piercing Arrow Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1 
# All piercing arrow casts
tag @a[tag=archer,nbt={SelectedItemSlot:2,SelectedItem:{tag:{Charged:0b,display:{Lore:['{"text":"Archer: Piercing Arrow Spell"}']}}}}] add shotPierce
scoreboard players remove @a[tag=shotPierce] mana.mana 600
execute as @a[tag=shotPierce] at @s run scoreboard players operation @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] spell.7.power = @s spell.7.power
execute as @a[tag=shotPierce] at @s run tag @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] add piercing_arrow 
# Different tiers
item replace entity @a[tag=pa_1,scores={mana.mana=600..}] container.2 with minecraft:crossbow{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],display:{ Name:'{"italic":false,"text":"Piercing Arrow 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow that pierces 7 enemies,"}','{"italic":false,"color":"white","text":"  dealing 10 magic damage and 7-10 physical damage."}','{"italic":false,"color":"blue","text":"Cost: 600MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Piercing Arrow Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b}
tag @a remove pa_1
tag @a remove shotPierce 
execute as @e[tag=piercing_arrow,tag=!processed] run data merge entity @s {SoundEvent:"minecraft:block.glass.break",PierceLevel:5b,damage:2.0f}
execute as @e[tag=piercing_arrow] at @s run scoreboard players operation @e[tag=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] fine_hp.mdmg += @s spell.7.power   
# Windwalk spell
tag @a[tag=archer,nbt={Inventory:[{Slot:2b,tag:{display:{Name:'{"italic":false,"text":"Windwalk 1"}'}}}]}] add ww_1
scoreboard players set @a[tag=ww_1] spell.6.power 5 
# Different tiers
item replace entity @a[tag=ww_1,scores={mana.mana=..399}] container.2 with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Windwalk 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow, dealing 5 magic damage"}','{"italic":false,"color":"white","text":"  and knocking opponents airborne."}','{"italic":false,"color":"white","text":"Grants speed II to caster for 5s."}','{"italic":false,"color":"white","text":"Grants speed I to caster and allies for 20s."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Windwalk Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1
item replace entity @a[tag=!ww_1,tag=archer,nbt={SelectedItem:{tag:{display:{Name:'{"italic":false,"text":"Windwalk 1"}'}}}}] weapon.mainhand with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Windwalk 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow, dealing 5 magic damage"}','{"italic":false,"color":"white","text":"  and knocking opponents airborne."}','{"italic":false,"color":"white","text":"Grants speed II to caster for 5s."}','{"italic":false,"color":"white","text":"Grants speed I to caster and allies for 20s."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Windwalk Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1
item replace entity @a[tag=archer,nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"italic":false,"text":"Windwalk 1"}'}}}]}] weapon.offhand with minecraft:crossbow{display:{ Name:'{"italic":false,"text":"Windwalk 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow, dealing 5 magic damage"}','{"italic":false,"color":"white","text":"  and knocking opponents airborne."}','{"italic":false,"color":"white","text":"Grants speed II to caster for 5s."}','{"italic":false,"color":"white","text":"Grants speed I to caster and allies for 20s."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Windwalk Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b} 1 
# All windwalk arrow casts
tag @a[tag=archer,nbt={SelectedItemSlot:2,SelectedItem:{tag:{Charged:0b,display:{Lore:['{"text":"Archer: Windwalk Spell"}']}}}}] add shotWind
scoreboard players remove @a[tag=shotWind] mana.mana 400
execute as @a[tag=shotWind] at @s run scoreboard players operation @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] spell.6.power = @s spell.6.power
execute as @a[tag=shotWind] at @s run tag @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] add windwalk_arrow
effect give @a[tag=shotWind,scores={spell.6.power=6..}] minecraft:speed 5 1
effect give @a[tag=shotWind] minecraft:speed 20 0
execute at @a[tag=shotWind] run effect give @a[distance=0..8] minecraft:speed 10 0 
# Different tiers
item replace entity @a[tag=ww_1,scores={mana.mana=400..}] container.2 with minecraft:crossbow{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:5,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],display:{ Name:'{"italic":false,"text":"Windwalk 1"}', Lore:[ '{"italic":false,"color":"white","text":"Fire an arrow, dealing 5 magic damage"}','{"italic":false,"color":"white","text":"  and knocking opponents airborne."}','{"italic":false,"color":"white","text":"Grants speed II to caster for 5s."}','{"italic":false,"color":"white","text":"Grants speed I to caster and allies for 20s."}','{"italic":false,"color":"blue","text":"Cost: 400MP"}', '{"text":"Archer: Active Spell"}', '{"text":"Archer: Windwalk Spell"}', '{"text":"Archer: Slot 3"}' ] }, Charged:1b}
tag @a remove ww_1
tag @a remove shotWind 
execute as @e[tag=windwalk_arrow,tag=!processed] run data merge entity @s {SoundEvent:"minecraft:entity.arrow.shoot",PierceLevel:99b,damage:2.0f}
execute as @e[tag=windwalk_arrow] at @s store success score @s fine_hp.tmp0 run scoreboard players operation @e[tag=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] fine_hp.mdmg += @s spell.6.power
execute at @e[tag=windwalk_arrow] run execute at @e[tag=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] run effect give @e[tag=Enemies,distance=0..2] levitation 1 0
execute at @e[tag=windwalk_arrow,scores={fine_hp.tmp0=1..}] run playsound block.glass.break master @a[distance=0..8]
tag @e[tag=windwalk_arrow,scores={fine_hp.tmp0=1..}] add fine_hp.isdead   
# General spell stuff
tag @e[type=spectral_arrow] add processed
execute at @e[type=minecraft:spectral_arrow] run effect clear @e[tag=Enemies,distance=0..4] minecraft:glowing 
# Kill spell arrows that are in ground
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
kill @e[type=minecraft:arrow,nbt={inGround:1b}]