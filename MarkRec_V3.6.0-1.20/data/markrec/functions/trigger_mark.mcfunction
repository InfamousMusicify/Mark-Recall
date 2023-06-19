execute if score @s marks.cooldown matches 1.. run tellraw @s [{"text":"Your Mark cooldown will end in ","color":"red"},{"score":{"name":"@s","objective":"marks.cooldown"},"color":"red"},{"text":" seconds.","color":"red"}]
execute unless score @s marks.cooldown matches 1.. run function markrec:try_to_start_to_go_mark
scoreboard players set @s mark 0
#done
