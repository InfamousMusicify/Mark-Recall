execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark_add"]}}}] run function markrec:trigger_add
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark_add"]}}]}] run function markrec:trigger_add
#scoreboard players set @s mark_add 0
# 
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}}] run function markrec:trigger_markrec
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Recall"]}}]}] run function markrec:trigger_markrec
#scoreboard players set @s recall 0
# 
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark"]}}}] run function markrec:trigger_setmarkrec
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["Mark"]}}]}] run function markrec:trigger_setmarkrec