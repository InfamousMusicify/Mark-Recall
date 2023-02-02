schedule clear markrec:tick
schedule clear markrec:decrement_cooldowns
schedule clear markrec:try_to_mark_dimension
execute as @e[type=minecraft:marker,tag=marks.dimension] at @s run function markrec:remove_dimension_marker
data remove storage markrec:storage players
data remove storage markrec:storage temp
data remove storage markrec:storage temp2
scoreboard objectives remove setmark
scoreboard objectives remove marks
scoreboard objectives remove mark
scoreboard objectives remove namemark
scoreboard objectives remove delmark
scoreboard objectives remove marks.target
scoreboard objectives remove marks.delay
scoreboard objectives remove marks.cooldown
scoreboard objectives remove marks.dummy
scoreboard objectives remove marks.config
scoreboard objectives remove marks.x
scoreboard objectives remove marks.y
scoreboard objectives remove marks.z
#done