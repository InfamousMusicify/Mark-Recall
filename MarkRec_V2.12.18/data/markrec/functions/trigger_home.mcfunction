# markrec:trigger_home
# store mark cycle to home score
execute store result score @s home run scoreboard players get @s mark_track
# Teleport marked players to self
execute as @s[scores={recall=1..,mark_track=0,mark_crouch=0}] as @e[scores={mark_tag_along=1..},distance=1..] at @a[sort=nearest,scores={recall=1..}] run execute if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={recall=1..}] markrec_id run tp @s ~ ~ ~
# Recal self to nearest marked player
execute as @s[scores={recall=1..,mark_track=0,mark_crouch=1..}] at @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] if score @s markrec_id = @e[sort=nearest,limit=1] mark_tag_along run tp @s ~ ~ ~

# reset
scoreboard players set @s recall 0
scoreboard players set @s mark_crouch 0
