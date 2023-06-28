execute unless score #cooldown marks.config matches 0 run scoreboard players operation @a[tag=marks.subject,limit=1] marks.cooldown = #cooldown marks.config
#execute as @a[tag=marks.subject,limit=1] at @s run function back:set_back
data modify entity @s Pos set from storage markrec:storage players[-1].marks[-1].pos
data modify entity @s Rotation set from storage markrec:storage players[-1].marks[-1].rot
tp @a[tag=marks.subject,limit=1] @s
kill @s
#done