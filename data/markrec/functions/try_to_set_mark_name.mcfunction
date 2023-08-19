data modify storage markrec:storage temp set from storage markrec:storage players[-1].marks[-1].name
execute store success score #success marks.dummy run data modify storage markrec:storage temp set from entity @s SelectedItem.tag.display.Name
execute if score #success marks.dummy matches 1 run function markrec:set_mark_name
execute unless score #success marks.dummy matches 1 run tellraw @s {"text":"Your Mark is already named that.","color":"red"}
#doine
#all done