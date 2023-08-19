execute if score #id1 marks.dummy matches 0 store result score #id1 marks.dummy run data get storage markrec:storage temp[-1].id
execute if score #id2 marks.dummy matches 0 store result score #id2 marks.dummy run data get storage markrec:storage temp[-2].id
execute if score #id1 marks.dummy > #id2 marks.dummy run function markrec:bubble_1
execute if score #id2 marks.dummy > #id1 marks.dummy run function markrec:bubble_2
scoreboard players remove #remaining marks.dummy 1
execute unless score #remaining marks.dummy matches 1 run function markrec:bubble
# done
# all done