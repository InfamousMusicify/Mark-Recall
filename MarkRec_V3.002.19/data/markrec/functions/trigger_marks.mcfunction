function markrec:rotate/players
execute store result score #marks marks.dummy run data get storage markrec:storage players[-1].marks
execute if score #marks marks.dummy matches 0 run tellraw @s {"text":"You are markless.","color":"red"}
execute unless score #marks marks.dummy matches 0 run function markrec:list_marks
scoreboard players set @s marks 0
#done
#all done