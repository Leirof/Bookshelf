# 4.5 × level^2 – 162.5 × level + 2220 (at levels 32+)
# => 1/2 × (9 × level^2 - 325 × level) + 2220

scoreboard players operation #xp.get_total_points.x bs.data *= 325 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data *= #xp.get_total_points.x2 bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data *= 9 bs.const
scoreboard players operation #xp.get_total_points.x2 bs.data -= #xp.get_total_points.x bs.data
scoreboard players operation #xp.get_total_points.x2 bs.data /= 2 bs.const

scoreboard players operation #xp.get_total_points.result bs.data += #xp.get_total_points.x2 bs.data
scoreboard players add #xp.get_total_points.result bs.data 2220
