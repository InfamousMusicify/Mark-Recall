schedule function markrec:decrement_cooldowns 1s
execute as @a[scores={marks.cooldown=1..}] run function markrec:decrement_cooldown
#done