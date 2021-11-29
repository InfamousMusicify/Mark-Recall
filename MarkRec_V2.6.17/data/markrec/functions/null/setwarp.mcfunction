# Sets the warp of the player to teleport to
execute store result score @s sw_x run data get entity @s Pos[0]
execute store result score @s sw_y run data get entity @s Pos[1]
execute store result score @s sw_z run data get entity @s Pos[2]
execute store result score @s sw_dim run data get entity @s Dimension
scoreboard players operation @s sw_y += #sw_y sw_y

execute if score @s sw_x matches 0 if score @s sw_y matches 0 if score @s sw_z matches 0 run tellraw @s {"text":"You may not set your warp at 0 0 0, it has been moved to 0 0 1","color":"yellow"}
execute if score @s sw_x matches 0 if score @s sw_y matches 0 if score @s sw_z matches 0 run scoreboard players set @s sw_z 1

execute unless entity @s[scores={sw_x=0}] run execute unless entity @s[scores={sw_y=0}] run execute unless entity @s[scores={sw_z=0}] run execute at @p[scores={setwarp=1..}] run playsound minecraft:entity.witch.throw master @a[distance=..25] ~ ~ ~

give @a[sort=nearest,limit=1] bat_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Invisible:1,Tags:["Cursed4"]},CustomModelData:1,display:{Name:"[{\"text\":\"Recall\",\"italic\":false,\"color\":\"white\"}]",Lore:["[{\"text\":\"Recall\",\"italic\":false,\"color\":\"gray\"}]"]}}

scoreboard players set @s setwarp 0
