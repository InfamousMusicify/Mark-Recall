function markrec:rotate/players
scoreboard players operation #mark marks.dummy = @s namemark
function markrec:rotate/marks
execute if score #remaining marks.dummy matches 0 run tellraw @s [{"text":"Mark ","color":"red"},{"score":{"name":"#mark","objective":"marks.dummy"},"color":"red"},{"text":" not found.","color":"red"}]
execute unless score #remaining marks.dummy matches 0 run function markrec:name_mark
#done
#all done