data modify storage markrec:storage temp2 append from storage markrec:storage temp[-1]
data remove storage markrec:storage temp[-1]
scoreboard players operation #id1 marks.dummy = #id2 marks.dummy
scoreboard players set #id2 marks.dummy 0
#done