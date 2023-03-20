execute unless entity @e[type=minecraft:marker,tag=marks.dimension,limit=1,distance=0..] positioned 12104128 1000 -8245808 run function markrec:try_to_start_to_mark_dimension
function markrec:rotate/players
scoreboard players operation #mark marks.dummy = @s setmark
function markrec:rotate/marks
execute if score #remaining marks.dummy matches 0 run function markrec:try_to_add_mark
execute unless score #remaining marks.dummy matches 0 run function markrec:set_mark
scoreboard players set @s setmark 0
# Done
########################################### Done porting these
