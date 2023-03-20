execute store result storage markrec:storage players[-1].marks[-1].id int 1 run scoreboard players get #mark marks.dummy
data modify storage markrec:storage players[-1].marks[-1].dim set from entity @s Dimension
data modify storage markrec:storage players[-1].marks[-1].pos set from entity @s Pos
data modify storage markrec:storage players[-1].marks[-1].rot set from entity @s Rotation
execute if data storage markrec:storage players[-1].marks[-1].name run tag @s add marks.nameSet
execute if entity @s[tag=marks.nameSet] run tellraw @s [{"storage":"markrec:storage","nbt":"players[-1].marks[-1].name","interpret":true,"color":"yellow"},{"text":" set.","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] if score #mark marks.dummy matches 1 run tellraw @s [{"text":"Mark","color":"yellow"},{"text":" set.","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] unless score #mark marks.dummy matches 1 run tellraw @s [{"text":"Mark ","color":"yellow"},{"score":{"name":"#mark","objective":"marks.dummy"},"color":"yellow"},{"text":" set.","color":"gold"}]
tag @s remove marks.nameSet
# Done
