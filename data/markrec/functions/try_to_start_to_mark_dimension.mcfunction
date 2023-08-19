execute store success score #success marks.dummy run forceload add ~ ~
execute if score #success marks.dummy matches 1 run function markrec:start_to_mark_dimension
execute unless score #success marks.dummy matches 1 run function markrec:check_chunk_fully_loaded
# Done
########################################### Done porting these