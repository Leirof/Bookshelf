execute unless score #xp.use_macro bs.data matches 1 store success score #xp.storage_changed bs.data run data modify storage bs:data xp.set_levels.levels set from storage bs:in xp.set_levels.levels
execute unless score #xp.use_macro bs.data matches 1 unless score #xp.storage_changed bs.data matches 1 store result storage bs:in xp.set_levels.levels int 1 run scoreboard players get $xp.set_levels.levels bs.in
execute unless score #xp.use_macro bs.data matches 1 run function bs.xp:set/levels/macro with storage bs:in xp.set_levels
scoreboard players reset #xp.use_macro bs.data