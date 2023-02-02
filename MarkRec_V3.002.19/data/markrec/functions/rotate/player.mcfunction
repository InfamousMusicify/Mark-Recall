data modify storage markrec:storage players prepend from storage markrec:storage players[-1]
data remove storage markrec:storage players[-1]
scoreboard players remove #remaining marks.dummy 1
data modify storage markrec:storage temp set from entity @s UUID
execute store success score #success marks.dummy run data modify storage markrec:storage temp set from storage markrec:storage players[-1].uuid
execute unless score #remaining marks.dummy matches 0 if score #success marks.dummy matches 1 run function markrec:rotate/player
#done all these
