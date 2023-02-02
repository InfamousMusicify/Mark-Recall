scoreboard players operation @s marks.target = #mark marks.dummy
scoreboard players operation @s marks.delay = #delay marks.config
execute store result score @s marks.x run data get entity @s Pos[0] 10
execute store result score @s marks.y run data get entity @s Pos[1] 10
execute store result score @s marks.z run data get entity @s Pos[2] 10
execute if data storage markrec:storage players[-1].marks[-1].name run tag @s add marks.nameSet
execute if entity @s[tag=marks.nameSet] run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"storage":"markrec:storage","nbt":"players[-1].marks[-1].name","interpret":true,"color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] if score #mark marks.dummy matches 1 run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"text":"mark","color":"yellow"},{"text":"...","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] unless score #mark marks.dummy matches 1 run tellraw @s [{"text":"Teleporting to ","color":"gold"},{"text":"mark ","color":"yellow"},{"score":{"name":"#mark","objective":"marks.dummy"},"color":"yellow"},{"text":"...","color":"gold"}]
tag @s remove marks.nameSet
#done