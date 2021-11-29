# Sets the warp of the player to teleport to
execute store result score @s sw1_x run data get entity @s Pos[0]
execute store result score @s sw1_y run data get entity @s Pos[1]
execute store result score @s sw1_z run data get entity @s Pos[2]
execute store result score @s sw1_dim run data get entity @s Dimension
scoreboard players operation @s sw1_y += #sw1_y sw1_y

execute if score @s sw1_x matches 0 if score @s sw1_y matches 0 if score @s sw1_z matches 0 run tellraw @s {"text":"You may not set your warp at 0 0 0, it has been moved to 0 0 1","color":"yellow"}
execute if score @s sw1_x matches 0 if score @s sw1_y matches 0 if score @s sw1_z matches 0 run scoreboard players set @s sw1_z 1

execute unless entity @s[scores={sw1_x=0}] run execute unless entity @s[scores={sw1_y=0}] run execute unless entity @s[scores={sw1_z=0}] run execute at @p[scores={setwarp=1..}] run playsound minecraft:entity.witch.throw master @a[distance=..25] ~ ~ ~

give @a[sort=nearest,limit=1] bat_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Invisible:1,Tags:["Cursed5"]},CustomModelData:2,display:{Name:"[{\"text\":\"Recall 2\",\"italic\":false,\"color\":\"white\"}]",Lore:["[{\"text\":\"Recall 2\",\"italic\":false,\"color\":\"gray\"}]"]}}

scoreboard players set @s setwarp1 0
