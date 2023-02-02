schedule function markrec:tick 1t

# markrec:tick
#execute as @a unless score @s markrec_id matches 1.. store result score @s markrec_id run scoreboard players add #last markrec_id 1
execute as @a if score @s tpa.pid matches 1.. unless score @s markrec_id matches 1.. store result score @s markrec_id run scoreboard players get @s tpa.pid
execute as @a unless score @s markrec_id matches 1.. store result score @s markrec_id run scoreboard players add #last markrec_id 1

# 
execute as @a[scores={mark.recall=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark_add"]}}}] run function markrec:trigger_add
execute as @a[scores={mark.recall=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark_add"]}}]}] run function markrec:trigger_add
#scoreboard players set @a mark_add 0
# 
execute as @a[scores={mark.recall=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}}] run function markrec:trigger_markrec
execute as @a[scores={mark.recall=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}]}] run function markrec:trigger_markrec
#scoreboard players set @a recall 0
# 
execute as @a[scores={mark.recall=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark"]}}}] run function markrec:trigger_setmarkrec
execute as @a[scores={mark.recall=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark"]}}]}] run function markrec:trigger_setmarkrec
scoreboard players set @a mark.recall 0
scoreboard players set @a mark_crouch 0
#####################################################################################
scoreboard players enable @a setmark
execute as @a[scores={setmark=1..}] at @s run function markrec:trigger_setmark
scoreboard players enable @a delmark
execute as @a[scores={delmark=1..}] run function markrec:trigger_delmark
scoreboard players enable @a marks
execute as @a[scores={marks=1..}] run function markrec:trigger_marks
scoreboard players enable @a mark
execute as @a[scores={mark=1..}] run function markrec:trigger_mark
scoreboard players enable @a namemark
execute as @a[scores={namemark=1..}] run function markrec:trigger_namemark
execute as @a[scores={marks.target=1..}] run function markrec:try_to_try_to_try_to_go_mark
# Bind old to new! Port is a success!
