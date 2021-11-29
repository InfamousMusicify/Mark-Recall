scoreboard players add @s mark_track 1
# workiung
execute if score #limit homes.config < @s mark_track run scoreboard players set @s mark_track 0
# loot give @s loot markrec:mark_add_loot
tellraw @s [{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
scoreboard players set @a mark_add 0
