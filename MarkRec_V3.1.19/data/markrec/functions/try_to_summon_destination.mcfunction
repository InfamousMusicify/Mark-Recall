data modify storage markrec:storage temp set from storage markrec:storage players[-1].marks[-1].dim
execute store success score #success marks.dummy run data modify storage markrec:storage temp set from entity @s data.Dimension
execute if score #success marks.dummy matches 0 at @s run summon minecraft:marker ~ ~ ~ {Tags:["marks.destination"]}
#done