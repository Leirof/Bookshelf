execute if score @s glib.itemId matches 383 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:firework_rocket",Count:1b}]}
execute if score @s glib.itemId matches 384 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:firework_star",Count:1b}]}
execute if score @s glib.itemId matches 385 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:fishing_rod",Count:1b}]}
execute if score @s glib.itemId matches 386 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:0b,Small:1b,Tags:["glib.new","glib"],HandItems:[{id:"minecraft:fletching_table",Count:1b}]}
execute at @s run scoreboard players operation @e[type=armor_stand,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
