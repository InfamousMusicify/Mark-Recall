# markrec:trigger_mark


# store mark cycle to mark score
execute store result score @s mark run scoreboard players get @s mark_track


#scoreboard players set @s mark 0
#
# Teleport marked players to self    - execute as @s[scores={mark_track=0,mark_crouch=0}] as @e[scores={mark_tag_along=1..},distance=1..] at @a[sort=nearest] if score @s mark_tag_along = @a[sort=nearest,limit=1] markrec_id run tp @s ~ ~ ~
#execute at @s[scores={mark_track=0,mark_crouch=0}] as @e[scores={mark_tag_along=1..},distance=1..] at @a[sort=nearest] if score @s mark_tag_along = @a[sort=nearest,limit=1] markrec_id run tp @s ~ ~ ~
# Recal self to (nearest) marked player
#execute at @s[scores={mark_track=0,mark_crouch=1..}] at @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] if score @s markrec_id = @e[sort=nearest,limit=1] mark_tag_along run tp @s ~ ~ ~




################### old tagalong
# store mark cycle to mark score
#####execute store result score @s mark run scoreboard players get @s mark_track
#scoreboard players set @s mark 0
#
# Teleport marked players to self    - execute as @s[scores={mark_track=0,mark_crouch=0}] as @e[scores={mark_tag_along=1..},distance=1..] at @a[sort=nearest] if score @s mark_tag_along = @a[sort=nearest,limit=1] markrec_id run tp @s ~ ~ ~
#####execute at @s[scores={mark_track=0,mark_crouch=0}] as @e[scores={mark_tag_along=1..},distance=1..] at @a[sort=nearest] if score @s mark_tag_along = @a[sort=nearest,limit=1] markrec_id run tp @s ~ ~ ~
# Recal self to (nearest) marked player
#####execute at @s[scores={mark_track=0,mark_crouch=1..}] at @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] if score @s markrec_id = @e[sort=nearest,limit=1] mark_tag_along run tp @s ~ ~ ~


