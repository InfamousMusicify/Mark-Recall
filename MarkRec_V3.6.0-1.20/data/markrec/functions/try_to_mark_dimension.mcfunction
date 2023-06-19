execute as @e[type=minecraft:item,tag=!marks.notDimensionMarker] unless data entity @s Item.tag.marksData.markDimension run tag @s add marks.notDimensionMarker
scoreboard players set #marked marks.dummy 0
execute as @e[type=minecraft:item,tag=!marks.notDimensionMarker,limit=1] at @s run function markrec:mark_dimension
execute if score #marked marks.dummy matches 0 run schedule function markrec:try_to_mark_dimension 1t append
#done