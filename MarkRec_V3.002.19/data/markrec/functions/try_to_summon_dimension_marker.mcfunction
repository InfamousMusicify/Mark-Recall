execute store result score #success marks.dummy run forceload add ~ ~
execute if score #success marks.dummy matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["marks.dimension"]}
execute if entity @e[type=minecraft:marker,tag=marks.dimension,distance=0..] run function markrec:initialize_dimension_marker
#done