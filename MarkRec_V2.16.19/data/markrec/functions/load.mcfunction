# Creates all scores required by the datapack
# patch
execute if score #patch markrec_id matches ..30 run function markrec:patch
execute if score #last markrec_id matches 2147483646.. run function markrec:uninstall
# "SetHome # Tracker"
scoreboard objectives add mark_track dummy
# "Add Sethome #"
#scoreboard objectives add mark_add minecraft.used:minecraft.carrot_on_a_stick
# "Set Marker"
#scoreboard objectives add recall minecraft.used:minecraft.carrot_on_a_stick
# "Recall to Marker"
scoreboard objectives add mark.recall minecraft.used:minecraft.carrot_on_a_stick
# "Player ID"
scoreboard objectives add markrec_id dummy
# "Tag Along Dummy"
scoreboard objectives add mark_tag_along dummy
# "Toggle to unmark players/entities with cycle"
scoreboard objectives add mark_crouch minecraft.custom:minecraft.sneak_time
