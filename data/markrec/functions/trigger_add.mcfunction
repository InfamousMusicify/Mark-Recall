


# crouch to recall with cycle item, store mark cycle to mark score             -[scores={mark_crouch=1..}]
#execute store result score @s mark run scoreboard players get @s mark_track

# bugfix for zerod players  -avoids logout func  -
#scoreboard players set @s[scores={mark_track=0}] mark_track 1

# add to cycle score    - [scores={mark_crouch=0}]
scoreboard players add @s mark_track 1
# link to marks limit, resets track when limit surpassed
execute if score #limit marks.config < @s mark_track run scoreboard players set @s mark_track 1

# msg
tellraw @s [{"text":"Mark: ","color":"gold"},{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
# reset cycle


############### Old with tag along
# whos marked message, crouch-move to activate
#####execute at @s[scores={mark_track=0,mark_crouch=1..}] as @e[sort=nearest,scores={mark_tag_along=1..},distance=1..] if score @s mark_tag_along = @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] markrec_id run tellraw @a[sort=nearest,limit=1,scores={mark_track=0,mark_crouch=1..}] [{"selector":"@s","color":"red"},{"text":" Marked","color":"gold"}]

# add to cycle score
#####scoreboard players add @s mark_track 1
# link to marks limit, resets track when limit surpassed
#####execute if score #limit marks.config < @s mark_track run scoreboard players set @s mark_track 0

# msg
#####tellraw @s [{"text":"Mark: ","color":"gold"},{"score":{"name":"@s","objective":"mark_track"},"color":"red"}]
# reset cycle
