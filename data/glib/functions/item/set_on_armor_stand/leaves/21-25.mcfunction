execute if score @s glib.itemId matches 21 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:ancient_debris",Count:1b}]}
execute if score @s glib.itemId matches 22 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:andesite",Count:1b}]}
execute if score @s glib.itemId matches 23 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:andesite_slab",Count:1b}]}
execute if score @s glib.itemId matches 24 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:andesite_stairs",Count:1b}]}
execute if score @s glib.itemId matches 25 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:andesite_wall",Count:1b}]}
execute at @s run scoreboard players operation @e[type=armor_stand,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
