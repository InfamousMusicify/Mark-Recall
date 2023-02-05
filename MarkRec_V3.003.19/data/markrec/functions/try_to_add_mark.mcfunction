execute if score @s marks.limit matches 0.. run scoreboard players operation #limit marks.dummy = @s marks.limit
execute unless score @s marks.limit matches 0.. run scoreboard players operation #limit marks.dummy = #limit marks.config
execute if score #marks marks.dummy < #limit marks.dummy run function markrec:add_mark
execute unless score #marks marks.dummy < #limit marks.dummy run tellraw @s [{"text":"You can only set a maximum of ","color":"red"},{"score":{"name":"#limit","objective":"marks.dummy"},"color":"red"},{"text":" mark(s).","color":"red"}]
# Done all these