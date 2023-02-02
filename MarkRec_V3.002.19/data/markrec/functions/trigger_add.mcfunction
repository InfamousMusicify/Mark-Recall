# whos marked message, crouch-move to activate
execute as @s[scores={mark_track=0,mark_crouch=1..}] as @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]

# add to cycle score
scoreboard players add @s[scores={mark_crouch=0}] mark_track 1
# link to marks limit, resets track when limit surpassed
execute if score #limit marks.config < @s[scores={mark_crouch=0}] mark_track run scoreboard players set @s[scores={mark_crouch=0}] mark_track 0

# msg
tellraw @s[scores={mark_crouch=0}] [{"text":"Mark: ","color":"gold"},{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
# reset cycle
scoreboard players set @a mark_add 0
scoreboard players set @s mark_crouch 0

