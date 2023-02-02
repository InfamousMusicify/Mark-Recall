summon minecraft:marker ~ ~ ~ {Tags:["marks.dimension","marks.newDimension"]}
data modify entity @e[type=minecraft:marker,tag=marks.newDimension,limit=1,distance=..0.01] data.Dimension set from entity @s Item.tag.marksData.markDimension
tag @e[type=minecraft:marker,tag=marks.newDimension,limit=1,distance=..0.01] remove marks.newDimension
kill @s
scoreboard players set #marked marks.dummy 1
#done