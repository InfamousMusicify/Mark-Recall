function markrec:rotate/marks
execute if score #remaining marks.dummy matches 0 run tellraw @s [{"text":"Mark ","color":"red"},{"score":{"name":"#mark","objective":"marks.dummy"},"color":"red"},{"text":" not found.","color":"red"}]
execute unless score #remaining marks.dummy matches 0 run function markrec:go_mark
#done
#all done