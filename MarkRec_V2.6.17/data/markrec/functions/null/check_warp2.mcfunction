# Makes sure a proper warp is set before being able to go to it
execute if score @s sw2_x matches 0 if score @s sw2_y matches 0 if score @s sw2_z matches 0 run tellraw @s [{"text":"No warp has been set yet!","color":"red"},{"text":" Click here for help","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger mark_help"},"hoverEvent":{"action":"show_text","value":"/trigger sw_help"}}]

execute unless score @s sw2_x matches 0 run tag @s add sw_legal
execute unless score @s sw2_y matches 0 run tag @s add sw_legal
execute unless score @s sw2_z matches 0 run tag @s add sw_legal

execute unless entity @s[scores={sw2_x=0}] run execute unless entity @s[scores={sw2_y=0}] run execute unless entity @s[scores={sw2_z=0}] run execute at @p[scores={warp=1..}] run playsound minecraft:block.portal.trigger music @a[distance=..25] ~ ~ ~

execute as @s[tag=sw_legal] run function sw:warp2

tag @s remove sw_legal

scoreboard players set @s warp2 0
