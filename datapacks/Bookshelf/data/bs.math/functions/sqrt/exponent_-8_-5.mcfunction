# if E = -5
execute store result score #in bs.data run data get storage bs.in math.sqrt 34359738368
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000065854450798271929168823261686546190196711592079736874438822269439697265625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -6
execute store result score #in bs.data run data get storage bs.in math.sqrt 68719476736
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000023283064365386962890625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -7
execute store result score #in bs.data run data get storage bs.in math.sqrt 137438953472
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000329272253991359645844116308432730950983557960398684372194111347198486328125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -8
execute store result score #in bs.data run data get storage bs.in math.sqrt 274877906944
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.000000000116415321826934814453125 run scoreboard players get #out bs.data