execute store result entity @s Pos[0] double 1 run scoreboard players get @p sw2_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p sw2_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p sw2_z

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=sw_tpwarp] @s

execute at @a[tag=sw_tpwarp] run playsound minecraft:entity.ender_eye.death hostile @a[distance=..25] ~ ~ ~
execute as @a[tag=sw_tpwarp] run experience add @p 0 points
tag @a remove sw_tpwarp

kill @s

scoreboard players set @p sw2_x 0
scoreboard players set @p sw2_y 0
scoreboard players set @p sw2_z 0