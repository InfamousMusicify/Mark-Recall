data modify storage markrec:storage players[-1].marks prepend from storage markrec:storage players[-1].marks[-1]
data remove storage markrec:storage players[-1].marks[-1]
scoreboard players remove #remaining marks.dummy 1
execute store result score #id marks.dummy run data get storage markrec:storage players[-1].marks[-1].id
execute unless score #remaining marks.dummy matches 0 unless score #id marks.dummy = #mark marks.dummy run function markrec:rotate/mark
#done