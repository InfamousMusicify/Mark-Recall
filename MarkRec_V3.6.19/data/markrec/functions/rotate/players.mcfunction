execute store result score #remaining marks.dummy run data get storage markrec:storage players
data modify storage markrec:storage temp set from entity @s UUID
execute store success score #success marks.dummy run data modify storage markrec:storage temp set from storage markrec:storage players[-1].uuid
execute unless score #remaining marks.dummy matches 0 if score #success marks.dummy matches 1 run function markrec:rotate/player
execute if score #remaining marks.dummy matches 0 run function markrec:rotate/add_player
# Done
# done all these