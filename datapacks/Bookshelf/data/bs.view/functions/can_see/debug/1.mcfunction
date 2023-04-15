tellraw @a[tag=bs.debug.view.can_see_ata] [{"text":"> Bookshelf | ","color":"dark_aqua"},{"text":"Record from bs.view:can_see_ata","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.view.can_see_ata"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
tellraw @a[tag=bs.debug.view.can_see_ata] {"text":" Trajectory displayed using particles","color":"gray"}
execute if entity @s[tag=bs.view.CanSee] run tellraw @a[tag=bs.debug.view.can_see_ata] [{"text":" Result: Can see ","color":"gray"},{"text":"✔","color":"green"}]
execute unless entity @s[tag=bs.view.CanSee] run tellraw @a[tag=bs.debug.view.can_see_ata] [{"text":" Result: Can't see ","color":"gray"},{"text":"❌","color":"red"}]
tellraw @a[tag=bs.debug.view.can_see_ata] [{"text":"<","color":"dark_aqua"}]