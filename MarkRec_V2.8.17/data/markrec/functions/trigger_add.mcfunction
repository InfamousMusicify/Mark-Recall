scoreboard players add @s mark_track 1
# workiung
execute if score #limit homes.config < @s mark_track run scoreboard players set @s mark_track 0
# loot give @s loot markrec:mark_add_loot
tellraw @s [{"text":"Home: ","color":"gold"},{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
# execute if score #last kit_tick_cd matches 0 run tellraw @s[tag=kitcd,scores={kitcd=1..}] [{"text":"","color":"gold"},{"score":{"name":"@s","objective":"kit_cdc"},"color":"red"},{"text":"","color":"gold"},{"text":"","color":"yellow"},{"text":" Minutes until you can use Kit again!","color":"gold"}]

scoreboard players set @a mark_add 0
