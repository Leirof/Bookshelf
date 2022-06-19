# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.math,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.math] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.math] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.math,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.math,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.math,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.math,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.math] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.math] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.math] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.math] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.math,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.math] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.math.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.math.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.math.close] remove glib.menu.debug.glib.math
tag @a[tag=glib.menu.debug.glib.math.close] remove glib.menu.debug.glib.math.close

tellraw @a[tag=glib.menu.debug.glib.math] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.math,scores={glib.menu.page = 0}] {"text": "   + algebra", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.algebra"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.math,scores={glib.menu.page = 0}] {"text": "   + bitwise", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.bitwise"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.math,scores={glib.menu.page = 0}] {"text": "   + common", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.common"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.math,scores={glib.menu.page = 0}] {"text": "   + special", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.special"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.math,scores={glib.menu.page = 0}] {"text": "   + trig", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.trig"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}

tellraw @a[tag=glib.menu.debug.glib.math] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.math", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.math.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]