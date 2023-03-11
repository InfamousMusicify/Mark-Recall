execute if entity @s[tag=marks.nameSet] run function markrec:reset_mark_name
tellraw @s[tag=!marks.nameSet] {"text":"You must rename the name tag to name your Mark.","color":"red"}
#done
#all done