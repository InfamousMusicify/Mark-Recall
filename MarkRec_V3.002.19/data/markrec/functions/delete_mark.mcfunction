execute if data storage markrec:storage players[-1].marks[-1].name run tag @s add marks.nameSet
execute if entity @s[tag=marks.nameSet] run tellraw @s [{"storage":"markrec:storage","nbt":"players[-1].marks[-1].name","interpret":true,"color":"yellow"},{"text":" deleted.","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] if score #mark marks.dummy matches 1 run tellraw @s [{"text":"mark","color":"yellow"},{"text":" deleted.","color":"gold"}]
execute unless entity @s[tag=marks.nameSet] unless score #mark marks.dummy matches 1 run tellraw @s [{"text":"mark ","color":"yellow"},{"score":{"name":"#mark","objective":"marks.dummy"},"color":"yellow"},{"text":" deleted.","color":"gold"}]
tag @s remove marks.nameSet
data remove storage markrec:storage players[-1].marks[-1]
#done