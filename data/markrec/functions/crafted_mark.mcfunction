

clear @s minecraft:knowledge_book
recipe take @a markrec:mark_rcp
advancement revoke @s only markrec:mark_adv
loot give @s loot markrec:mark_loot
loot give @s loot markrec:cycle_loot
loot give @s loot markrec:recall_loot


#
#execute unless entity @s[scores={mark_track=1..}] run scoreboard players set @s mark_track 1