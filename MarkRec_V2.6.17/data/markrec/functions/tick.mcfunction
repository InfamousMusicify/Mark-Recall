# markrec:tick
execute as @a[scores={mark_add=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Mark_add"]}}}] run function markrec:trigger_add
execute as @a[scores={mark_add=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Mark_add"]}}]}] run function markrec:trigger_add
scoreboard players set @a mark_add 0

execute as @a[scores={recall=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}}] run function markrec:trigger_home
execute as @a[scores={recall=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}]}] run function markrec:trigger_home
scoreboard players set @a recall 0

execute as @a[scores={mark=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Mark"]}}}] run function markrec:trigger_sethome
execute as @a[scores={mark=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick",tag: {Tags: ["Mark"]}}]}] run function markrec:trigger_sethome
scoreboard players set @a mark 0


# # # 
