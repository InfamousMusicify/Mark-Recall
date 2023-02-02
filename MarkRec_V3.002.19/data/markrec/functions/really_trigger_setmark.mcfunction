function markrec:rotate/players
scoreboard players operation #mark marks.dummy = @s setmark
function markrec:rotate/marks
execute if score #remaining marks.dummy matches 0 run function markrec:try_to_add_mark
execute unless score #remaining marks.dummy matches 0 run function markrec:set_mark
scoreboard players set @s setmark 0
#done