execute store result score #id marks.dummy run data get storage markrec:storage lastDimension
execute store result entity @e[type=minecraft:marker,tag=,limit=1] data.id int 1 run scoreboard players add #id marks.dummy 1
execute store result storage markrec:storage lastDimension int 1 run scoreboard players get #id marks.dummy
data modify entity @e[type=minecraft:marker,tag=,limit=1] data.name set from entity @s Dimension
#done