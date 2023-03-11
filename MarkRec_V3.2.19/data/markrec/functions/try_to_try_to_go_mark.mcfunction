function markrec:rotate/players
scoreboard players operation #mark marks.dummy = @s marks.target
scoreboard players set #success marks.dummy 0
execute store result score #value marks.dummy run data get entity @s Pos[1] 10
execute if score #value marks.dummy = @s marks.y run function markrec:check_x
scoreboard players reset @s marks.x
scoreboard players reset @s marks.y
scoreboard players reset @s marks.z
execute if score #success marks.dummy matches 0 run tellraw @s [{"text":"You must stand still to teleport.","color":"red"}]
execute unless score #success marks.dummy matches 0 run function markrec:try_to_go_mark
scoreboard players reset @s marks.delay
scoreboard players reset @s marks.target
#done
#all done