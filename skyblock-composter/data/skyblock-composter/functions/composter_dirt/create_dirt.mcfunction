
# Depositing item if there is a hopper
execute if block ~ ~-1 ~ minecraft:hopper run function skyblock-composter:composter_dirt/hopper_check

# Creating item if there's no hopper or if it's full
execute if entity @s[tag=ready] run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:dirt",Count:1b},PickupDelay:10s,Motion:[0.15d,0.15d,0.05d],Tags:["composter_dirt"]}
execute unless block ~ ~-1 ~ minecraft:hopper run data modify entity @e[type=item,tag=composter_dirt,limit=1,sort=nearest,distance=..1] Motion set from entity @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:1b}},limit=1,sort=nearest,distance=..1] Motion
execute if entity @s[tag=ready] run tag @e[type=item,tag=composter_dirt,limit=1,sort=nearest,distance=..1] remove composter_dirt


tag @s[tag=ready] remove ready