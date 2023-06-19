tag @s add marks.subject
kill @e[type=minecraft:marker,tag=marks.destination]
execute as @e[type=minecraft:marker,tag=marks.dimension] run function markrec:try_to_summon_destination
execute unless entity @e[type=minecraft:marker,tag=marks.destination,limit=1] run tellraw @s {"text":"The destination has not loaded yet. Try again.","color":"red"}
execute as @e[type=minecraft:marker,tag=marks.destination,limit=1] run function markrec:set_destination
tag @s remove marks.subject
#done
#all done