# Teleports the player to their set warp

execute if score @s sw_dim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s sw_dim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s sw_dim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["sw_warp"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add sw_tpwarp

execute as @e[tag=sw_warp,sort=nearest,limit=1] at @s run function sw:position_warp

scoreboard players set @s warp 0
