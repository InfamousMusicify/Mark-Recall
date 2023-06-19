execute if score @s marks.delay matches 0 run function markrec:try_to_try_to_go_mark
execute unless score @s marks.delay matches 0 run scoreboard players remove @s marks.delay 1
#done