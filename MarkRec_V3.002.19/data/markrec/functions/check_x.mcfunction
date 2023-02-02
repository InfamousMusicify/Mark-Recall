execute store result score #value marks.dummy run data get entity @s Pos[0] 10
execute if score #value marks.dummy = @s marks.x run function markrec:check_z
#done