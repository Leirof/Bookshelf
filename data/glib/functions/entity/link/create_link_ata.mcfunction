#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:entity/link/create_link_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#link
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.var9 dummy

scoreboard objectives add glib.link.r.x dummy
scoreboard objectives add glib.link.r.y dummy
scoreboard objectives add glib.link.r.z dummy

scoreboard objectives add glib.link.l.x dummy
scoreboard objectives add glib.link.l.y dummy
scoreboard objectives add glib.link.l.z dummy

scoreboard objectives add glib.link.r.v dummy
scoreboard objectives add glib.link.r.h dummy

scoreboard objectives add glib.link.to dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove glib.link.target
tag @e[limit=1,sort=nearest] add glib.link.target

#   Relative Position
execute store result score @s glib.var run data get entity @s Pos[0] 1000
execute store result score @s glib.var2 run data get entity @s Pos[1] 1000
execute store result score @s glib.var3 run data get entity @s Pos[2] 1000

execute store result score @s glib.link.r.x run data get entity @e[tag=glib.link.target,limit=1] Pos[0] 1000
execute store result score @s glib.link.r.y run data get entity @e[tag=glib.link.target,limit=1] Pos[1] 1000
execute store result score @s glib.link.r.z run data get entity @e[tag=glib.link.target,limit=1] Pos[2] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Create_Link_By_Target_glib.id]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}},{"text":".   Child Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}},{"text":".   Child Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.x"}},{"text":".   Parent Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.y"}},{"text":".   Parent Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.z"}}]
### END DEBUG

scoreboard players operation @s glib.link.r.x -= @s glib.var
scoreboard players operation @s glib.link.r.y -= @s glib.var2
scoreboard players operation @s glib.link.r.z -= @s glib.var3

scoreboard players operation @s glib.link.r.x *= -1 glib.const
scoreboard players operation @s glib.link.r.y *= -1 glib.const
scoreboard players operation @s glib.link.r.z *= -1 glib.const

#   Relative Orientation
execute store result score @s glib.var run data get entity @s Rotation[0] 1000
execute store result score @s glib.var2 run data get entity @s Rotation[1] 1000

execute store result score @s glib.link.r.v run data get entity @e[tag=glib.link.target,limit=1] Rotation[0] 1000
execute store result score @s glib.link.r.h run data get entity @e[tag=glib.link.target,limit=1] Rotation[1] 1000

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Child Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var"}},{"text":".   Child Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Parent Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.v"}},{"text":".   Parent Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.h"}}]
### END DEBUG

scoreboard players operation @s glib.link.r.v -= @s glib.var
scoreboard players operation @s glib.link.r.h -= @s glib.var2

scoreboard players operation @s glib.link.r.v *= -1 glib.const
scoreboard players operation @s glib.link.r.h *= -1 glib.const

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.x"}},{"text":".   Diff Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.y"}},{"text":".   Diff Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.z"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Diff Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.v"}},{"text":".   Diff Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.h"}}]
### END DEBUG

execute as @e[tag=glib.link.target] run function glib:entity/orientation/get

# tellraw @a[tag=Debug] ["",{"text":"----------\nLoc -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.x"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.y"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.link.r.z"}}]
# tellraw @a[tag=Debug] ["",{"text":"Ori -> ","color":"gray"},{"text":"H: ","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriH"}},{"text":".   V: ","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriV"}}]

# Cos(Phi)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriH
function glib:math/cos
scoreboard players operation @s glib.var4 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"CosH -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriH"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}}]
# Sin(Phi)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriH
function glib:math/sin
scoreboard players operation @s glib.var5 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"SinH -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriH"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var5"}}]

# Cos(Theta)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriV
function glib:math/cos
scoreboard players operation @s glib.var5 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"CosV -> ","color":"gray"},{"text":"Cos(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var5"}}]
# Sin(Theta)
scoreboard players operation @s glib.var = @e[tag=glib.link.target] OriV
function glib:math/sin
scoreboard players operation @s glib.var7 = @s glib.res
# tellraw @a[tag=Debug] ["",{"text":"SinV -> ","color":"gray"},{"text":"Sin(","color":"red"},{"score":{"name":"@e[tag=glib.link.target]","objective":"OriV"}},{"text":") = ","color":"red"},{"score":{"name":"@s","objective":"glib.var7"}}]

# Vector Left -> L = cos(P)*X + sin(P)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.x = @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Calc -> ","color":"gray"},{"text":"cos(H)*X= ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.x"}}]

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.x += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Left -> ","color":"gray"},{"text":"cos(H)*X + sin(H)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.x"}}]

# Vector Up -> U = -sin(P)sin(T)*X + cos(T)*Y + cos(P)sin(T)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= -1 glib.const
scoreboard players operation @s glib.link.l.y = @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.y
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.y += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Up -> ","color":"gray"},{"text":"-sin(H)sin(V)*X + cos(V)*Y + cos(H)sin(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.y"}}]

# Vector Front -> F = -sin(P)cos(T)*X + sin(T)*Y + cos(P)cos(T)*Z
scoreboard players operation @s glib.var = @s glib.link.r.x
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= -1 glib.const
scoreboard players operation @s glib.link.l.z = @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.y
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.z -= @s glib.var

scoreboard players operation @s glib.var = @s glib.link.r.z
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.link.l.z += @s glib.var

# tellraw @a[tag=Debug] ["",{"text":"Front -> ","color":"gray"},{"text":"-sin(H)cos(V)*X - sin(V)*Y + cos(H)cos(V)*Z = ","color":"red"},{"score":{"name":"@s","objective":"glib.link.l.z"}}]
