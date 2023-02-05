scoreboard players set #id1 marks.dummy 0
scoreboard players set #id2 marks.dummy 0
execute unless score #remaining marks.dummy matches 1 run function markrec:bubble
execute store result score #id marks.dummy run data get storage markrec:storage temp[0].id
execute if data storage markrec:storage temp[0].name run tag @s add marks.nameSet
execute if score #reducedDebugInfo marks.dummy matches 1 run function markrec:display_mark_with_reduced_info
execute unless score #reducedDebugInfo marks.dummy matches 1 run function markrec:display_mark_with_all_info
tag @s remove marks.nameSet
tag @e[type=minecraft:marker,tag=marks.target,limit=1] remove marks.target
data remove storage markrec:storage temp[0]
execute store result score #remaining marks.dummy run scoreboard players remove #marks marks.dummy 1
data modify storage markrec:storage temp set from storage markrec:storage temp2
data modify storage markrec:storage temp2 set value []
execute unless score #marks marks.dummy matches 0 run function markrec:list_mark
#done
#all done