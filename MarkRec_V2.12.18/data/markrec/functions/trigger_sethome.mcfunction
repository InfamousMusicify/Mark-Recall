# markrec:trigger_home
# store mark cycle to sethome score
execute store result score @s sethome run scoreboard players get @s mark_track

# unmark message
# execute as @s[scores={mark_track=0,mark_crouch=100..}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=100..},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=100..},distance=1..] [{"selector":"@s","color":"red"},{"text":" Un-Marked","color":"gold"}]

# Crouch to unmark people, nearest first, 1 at a time
execute at @s[scores={mark=1..,mark_track=0,mark_crouch=1..}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..},distance=1..] markrec_id run scoreboard players reset @s mark_tag_along
# mark people within 8 blocks
execute at @s[scores={mark=1..,mark_track=0,mark_crouch=1..}] store result score @e[sort=nearest,limit=1,distance=1..8] mark_tag_along run scoreboard players get @s markrec_id

##### useful but not on for reasons.    execute as @s[scores={mark_track=0,mark_crouch=..99}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=..99},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=..99},distance=1..] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
# reset
scoreboard players set @s mark 0
scoreboard players set @s mark_crouch 0
