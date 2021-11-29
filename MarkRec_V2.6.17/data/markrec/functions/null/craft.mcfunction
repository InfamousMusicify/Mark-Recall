# sw:craft
# called by tick (at last crafting item client)
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper"}},distance=..1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..1]

give @a[sort=nearest,limit=1] squid_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Invisible:1,Tags:["Cursed1"]},CustomModelData:1,display:{Name:"[{\"text\":\"Mark\",\"italic\":false,\"color\":\"white\"}]",Lore:["[{\"text\":\"Mark\",\"italic\":false,\"color\":\"gray\"}]"]}}
give @a[sort=nearest,limit=1] squid_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Invisible:1,Tags:["Cursed2"]},CustomModelData:2,display:{Name:"[{\"text\":\"Mark 2\",\"italic\":false,\"color\":\"white\"}]",Lore:["[{\"text\":\"Mark 2\",\"italic\":false,\"color\":\"gray\"}]"]}}
give @a[sort=nearest,limit=1] squid_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Invisible:1,Tags:["Cursed3"]},CustomModelData:3,display:{Name:"[{\"text\":\"Mark 3\",\"italic\":false,\"color\":\"white\"}]",Lore:["[{\"text\":\"Mark 3\",\"italic\":false,\"color\":\"gray\"}]"]}}

playsound minecraft:entity.enderman.ambient master @a[distance=..6]

