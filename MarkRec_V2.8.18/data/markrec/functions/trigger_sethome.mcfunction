# markrec:trigger_home
# execute if score @s mark_track matches 0 run tag @a[distance=..7] add tag_along

execute store result score @s sethome run scoreboard players get @s mark_track
scoreboard players set @s mark 0

# function homes:trigger_sethome
# trigger sethome
