
# Placing composter
execute as @a[scores={place_composter=1..}] at @s run function skyblock-composter:composter_dirt/place

# Destroying composter
execute as @e[type=minecraft:armor_stand,name=composter] at @s unless block ~ ~ ~ minecraft:composter run kill @s

# Creating dirt
execute as @e[type=minecraft:armor_stand,name=composter] at @s if block ~ ~ ~ minecraft:composter[level=7] run tag @s add ready
execute as @e[type=minecraft:armor_stand,name=composter,tag=ready] at @s unless block ~ ~ ~ minecraft:composter[level=7] unless block ~ ~ ~ minecraft:composter[level=8] run function skyblock-composter:composter_dirt/create_dirt