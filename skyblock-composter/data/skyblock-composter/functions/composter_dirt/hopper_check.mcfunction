
# Clear score
scoreboard players set %hopper_dirt Var 64

# If first slot is empty====Never used because bonemeal always goes in first slot if able
#execute unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:0b}]} run scoreboard players set %hopper_dirt Var 0
#execute if score %hopper_dirt Var matches 0 run data modify block ~ ~-1 ~ Items prepend value {Slot:0b,id:"minecraft:dirt",Count:1b}
#execute if score %hopper_dirt Var matches 0 run tag @s remove ready

# If first slot has dirt
execute if block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:0b,id:"minecraft:dirt"}]} store result score %hopper_dirt Var run data get block ~ ~-1 ~ Items[{Slot:0b}].Count
scoreboard players add %hopper_dirt Var 1
execute if score %hopper_dirt Var matches ..64 store result block ~ ~-1 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get %hopper_dirt Var
execute if score %hopper_dirt Var matches ..64 run tag @s remove ready

# If second slot is empty
execute if entity @s[tag=ready] unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:1b}]} run scoreboard players set %hopper_dirt Var 0
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run data modify block ~ ~-1 ~ Items prepend value {Slot:1b,id:"minecraft:dirt",Count:1b}
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run tag @s remove ready

# If second slot has dirt
execute if entity @s[tag=ready] if block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:1b,id:"minecraft:dirt"}]} store result score %hopper_dirt Var run data get block ~ ~-1 ~ Items[{Slot:1b}].Count
execute if entity @s[tag=ready] run scoreboard players add %hopper_dirt Var 1
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 store result block ~ ~-1 ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get %hopper_dirt Var
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 run tag @s remove ready

# If third slot is empty
execute if entity @s[tag=ready] unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:2b}]} run scoreboard players set %hopper_dirt Var 0
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run data modify block ~ ~-1 ~ Items prepend value {Slot:2b,id:"minecraft:dirt",Count:1b}
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run tag @s remove ready

# If third slot has dirt
execute if entity @s[tag=ready] if block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:2b,id:"minecraft:dirt"}]} store result score %hopper_dirt Var run data get block ~ ~-1 ~ Items[{Slot:2b}].Count
execute if entity @s[tag=ready] run scoreboard players add %hopper_dirt Var 1
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 store result block ~ ~-1 ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get %hopper_dirt Var
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 run tag @s remove ready

# If fourth slot is empty
execute if entity @s[tag=ready] unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:3b}]} run scoreboard players set %hopper_dirt Var 0
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run data modify block ~ ~-1 ~ Items prepend value {Slot:3b,id:"minecraft:dirt",Count:1b}
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run tag @s remove ready

# If fourth slot has dirt
execute if entity @s[tag=ready] if block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:3b,id:"minecraft:dirt"}]} store result score %hopper_dirt Var run data get block ~ ~-1 ~ Items[{Slot:3b}].Count
execute if entity @s[tag=ready] run scoreboard players add %hopper_dirt Var 1
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 store result block ~ ~-1 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get %hopper_dirt Var
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 run tag @s remove ready

# If fifth slot is empty
execute if entity @s[tag=ready] unless block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:4b}]} run scoreboard players set %hopper_dirt Var 0
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run data modify block ~ ~-1 ~ Items prepend value {Slot:4b,id:"minecraft:dirt",Count:1b}
execute if entity @s[tag=ready] if score %hopper_dirt Var matches 0 run tag @s remove ready

# If fifth slot has dirt
execute if entity @s[tag=ready] if block ~ ~-1 ~ minecraft:hopper{Items:[{Slot:4b,id:"minecraft:dirt"}]} store result score %hopper_dirt Var run data get block ~ ~-1 ~ Items[{Slot:4b}].Count
execute if entity @s[tag=ready] run scoreboard players add %hopper_dirt Var 1
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 store result block ~ ~-1 ~ Items[{Slot:4b}].Count byte 1 run scoreboard players get %hopper_dirt Var
execute if entity @s[tag=ready] if score %hopper_dirt Var matches ..64 run tag @s remove ready