# sw:show_help

tellraw @s ["",{"text":"Mark and Recall help:","color":"yellow","bold":"true"}]
tellraw @s ["",{"text":"1.","color":"dark_red"},{"text":" Throw a ","color":"gold"},{"text":"3 Eye of Enders and Pieces of Paper","color":"red"},{"text":"\n \u0020 on top of an ","color":"gold"},{"text":"enchanting table","color":"red"},{"text":" to ","color":"gold"},{"text":"Craft 3 Marks","color":"green"},{"text":".","color":"gold"},{"text":"\n\n"},{"text":"2.","color":"dark_red"},{"text":" Right click","color":"green"},{"text":" the ","color":"gold"},{"text":"ground","color":"green"},{"text":" with Marker to set a ","color":"gold"},{"text":"Mark","color":"green"},{"text":".","color":"gold"},{"text":"\n\n"},{"text":"3.","color":"dark_red"},{"text":" Right Click ","color":"dark_purple"},{"text":"the ","color":"gold"},{"text":"ground","color":"dark_purple"},{"text":" with ","color":"gold"},{"text":"Recall","color":"dark_purple"},{"text":" to return to ","color":"gold"},{"text":"Mark","color":"green"},{"text":".","color":"gold"},{"text":"\n\n"},{"text":"4.","color":"dark_red"},{"text":" Your Mark will be erased when you recall to it.","color":"red"}]
tellraw @s ["",{"text":"\n"},{"text":"5.","color":"dark_red"},{"text":" You get ","color":"gold"},{"text":"3 Different Marks","color":"dark_green"},{"text":".","color":"gold"},{"text":"\n\n"},{"text":"6.","color":"dark_red"},{"text":" You can Rename Mark/Recall Items to whatever.","color":"gold"}]
scoreboard players set @s mark_help 0
scoreboard players enable @s mark_help