#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:object/convert/block/block_to_id
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/object#block
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.block.id dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.block.id 0
execute unless block ~ ~ ~ #glib:group/group0 run scoreboard players add @s glib.block.id 512
execute unless block ~ ~ ~ #glib:group/group1 run scoreboard players add @s glib.block.id 256
execute unless block ~ ~ ~ #glib:group/group2 run scoreboard players add @s glib.block.id 128
execute unless block ~ ~ ~ #glib:group/group3 run scoreboard players add @s glib.block.id 64
execute unless block ~ ~ ~ #glib:group/group4 run scoreboard players add @s glib.block.id 32
execute unless block ~ ~ ~ #glib:group/group5 run scoreboard players add @s glib.block.id 16
execute unless block ~ ~ ~ #glib:group/group6 run scoreboard players add @s glib.block.id 8
execute unless block ~ ~ ~ #glib:group/group7 run scoreboard players add @s glib.block.id 4
execute unless block ~ ~ ~ #glib:group/group8 run scoreboard players add @s glib.block.id 2
execute unless block ~ ~ ~ #glib:group/group9 run scoreboard players add @s glib.block.id 1
