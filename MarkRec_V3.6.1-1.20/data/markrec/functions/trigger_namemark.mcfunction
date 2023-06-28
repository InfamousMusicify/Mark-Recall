tag @s[nbt={SelectedItem:{id:"minecraft:name_tag"}}] add marks.hasNameTag
execute if entity @s[tag=marks.hasNameTag] run function markrec:try_to_name_mark
tellraw @s[tag=!marks.hasNameTag] {"text":"You must be holding a name tag in your main hand to name a mark.","color":"red"}
tag @s remove marks.hasNameTag
scoreboard players set @s namemark 0
#done
#all done