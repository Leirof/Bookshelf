#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:object/convert/block/id_to_head_slot
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/object#block
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s glib.var matches ..511 run function glib:object/convert/block/child/id_to_head_slot/nodes/0-511
execute if score @s glib.var matches 512.. run function glib:object/convert/block/child/id_to_head_slot/nodes/512-675
