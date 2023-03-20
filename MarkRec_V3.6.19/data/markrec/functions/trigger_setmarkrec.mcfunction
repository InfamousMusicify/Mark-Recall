# markrec:trigger_mark
# store mark cycle to setmark score
execute store result score @s setmark run scoreboard players get @s mark_track


# Crouch to unmark people, nearest first, 1 at a time
execute at @s[scores={mark_track=0,mark_crouch=1..}] as @e[type=!minecraft:armor_stand,sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] markrec_id run scoreboard players reset @s mark_tag_along
execute at @s[scores={mark_track=0,mark_crouch=1..}] as @e[type=!minecraft:armor_stand,sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] markrec_id run tag @s remove mark_msg
# unmark message
execute at @s[scores={mark_track=0,mark_crouch=1..}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] [{"selector":"@s","color":"red"},{"text":" Un-Marked","color":"gold"}]


# mark people within 8 blocks (tweaked so only 1 entity can be selected at a time.)
#execute at @s[scores={mark_track=0,mark_crouch=0}] unless entity @e[type=!minecraft:armor_stand,sort=nearest,limit=1,distance=1..,tag=mark_msg,scores={mark_tag_along=1..}] store result score @e[type=!minecraft:armor_stand,sort=nearest,limit=1,distance=1..8] mark_tag_along run scoreboard players get @s markrec_id
execute at @s[scores={mark_track=0,mark_crouch=0}] store result score @e[type=!minecraft:armor_stand,sort=nearest,limit=1,distance=1..8] mark_tag_along run scoreboard players get @s markrec_id

#execute at @s[scores={mark_track=0,mark_crouch=0}] run summon pig

# mark message
# execute at @s[scores={mark_track=0,mark_crouch=0}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] unless entity @s[tag=mark_msg] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
# execute as @s[scores={mark_track=0,mark_crouch=0}] as @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] unless entity @s[tag=mark_msg] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
# execute at @s[scores={mark_track=0,mark_crouch=0}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
execute at @s[scores={mark_track=0,mark_crouch=0}] as @e[sort=nearest,scores={mark_tag_along=1..},distance=1..,limit=1] unless entity @s[tag=mark_msg] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]

execute at @s[scores={mark_track=0,mark_crouch=0}] run tag @e[type=!minecraft:armor_stand,sort=nearest,limit=1,distance=1..8,scores={mark_tag_along=1..}] add mark_msg

# execute as @s[scores={mark_track=0,mark_crouch=0}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] unless entity @s[tag=mark_msg] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=0}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
# execute at @s[scores={mark_track=0,mark_crouch=0}] run tag @e[sort=nearest,limit=1,distance=1..8,scores={mark_tag_along=1..}] add mark_msg

##### useful but not on for reasons.    execute as @s[scores={mark_track=0,mark_crouch=..99}] as @e[sort=nearest,limit=1,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=..99},distance=1..] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=..99},distance=1..] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]
# reset


