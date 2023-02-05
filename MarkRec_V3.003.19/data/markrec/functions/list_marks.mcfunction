execute store result score #reducedDebugInfo marks.dummy run gamerule reducedDebugInfo
data modify storage markrec:storage temp set from storage markrec:storage players[-1].marks
execute store result score #remaining marks.dummy store result score #marks marks.dummy run data get storage markrec:storage temp
function markrec:list_mark
#done
#all done