summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["marks.checkChunkFullyLoaded"]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=marks.checkChunkFullyLoaded,limit=1,distance=..0.01] run function markrec:start_to_mark_dimension
# Done