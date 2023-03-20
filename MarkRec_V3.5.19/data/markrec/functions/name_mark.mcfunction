execute if data entity @s SelectedItem.tag.display.Name run tag @s add marks.nameTagSet
execute if data storage markrec:storage players[-1].marks[-1].name run tag @s add marks.nameSet
execute if entity @s[tag=marks.nameTagSet] run function markrec:try_to_set_mark_name
execute unless entity @s[tag=marks.nameTagSet] run function markrec:try_to_reset_mark_name
tag @s remove marks.nameSet
tag @s remove marks.nameTagSet
#done
#all done