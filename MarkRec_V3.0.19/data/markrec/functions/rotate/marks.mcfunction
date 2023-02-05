execute store result score #marks marks.dummy run data get storage markrec:storage players[-1].marks
scoreboard players operation #remaining marks.dummy = #marks marks.dummy
execute store result score #id marks.dummy run data get storage markrec:storage players[-1].marks[-1].id
execute unless score #remaining marks.dummy matches 0 unless score #id marks.dummy = #mark marks.dummy run function markrec:rotate/mark
# Done
#done all these