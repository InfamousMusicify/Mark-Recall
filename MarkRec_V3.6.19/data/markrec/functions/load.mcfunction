#load
#patch
### Update Patch ### 
# dev purposes only because apperntly this is broken for some ungodly unintuitive reason - literally the same command down below is working... i dont fucking know............
#execute unless score #patch marks.config matches 0.. run scoreboard players set #patch marks.config 0
#scoreboard players add #patch marks.config 0
# - Stable 3.1+ = 61
#execute if score #patch marks.config matches ..60 run function markrec:patch


scoreboard objectives add setmark trigger "Set Mark"
scoreboard objectives add marks trigger "Marks"
scoreboard objectives add mark trigger "Mark"
scoreboard objectives add namemark trigger "Name Mark"
scoreboard objectives add delmark trigger "Delete Mark"
scoreboard objectives add marks.target dummy
scoreboard objectives add marks.delay dummy
scoreboard objectives add marks.cooldown dummy
scoreboard objectives add marks.dummy dummy
scoreboard objectives add marks.config dummy "Marks Config"
scoreboard objectives add marks.x dummy
scoreboard objectives add marks.y dummy
scoreboard objectives add marks.z dummy
scoreboard objectives add marks.limit dummy "Max Mark Limit"
execute unless score #limit marks.config matches 0.. run scoreboard players set #limit marks.config 5
execute unless score #delay marks.config matches 0.. run scoreboard players set #delay marks.config 0
execute unless score #cooldown marks.config matches 0.. run scoreboard players set #cooldown marks.config 0

#done
# "SetHome # Tracker"
scoreboard objectives add mark_track dummy
# "Set Marker"
scoreboard objectives add mark.recall minecraft.used:minecraft.carrot_on_a_stick
# "Toggle to unmark players/entities with cycle"
scoreboard objectives add mark_crouch minecraft.custom:minecraft.sneak_time

scoreboard objectives add mark_tag_along dummy

# "Player ID"
scoreboard objectives add markrec_id dummy

#port principles:
#the word 'home' in this load file now = mark
#homess = marks
#home: = markrec:  
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#