# add to cycle score
scoreboard players add @s mark_track 1
# link to homes limit, resets track when limit surpassed
execute if score #limit homes.config < @s mark_track run scoreboard players set @s mark_track 0
# msg
tellraw @s [{"text":"Home: ","color":"gold"},{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
# reset cycle
scoreboard players set @a mark_add 0
scoreboard players set @s mark_crouch 0