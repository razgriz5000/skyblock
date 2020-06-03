execute anchored eyes positioned ^ ^ ^.5 run function skyblock-composter:composter_dirt/search_composter
execute unless entity @e[type=minecraft:armor_stand,name=composter,tag=found] anchored eyes positioned ^ ^ ^1.5 run function skyblock-composter:composter_dirt/search_composter
execute unless entity @e[type=minecraft:armor_stand,name=composter,tag=found] anchored eyes positioned ^ ^ ^2.5 run function skyblock-composter:composter_dirt/search_composter
execute unless entity @e[type=minecraft:armor_stand,name=composter,tag=found] anchored eyes positioned ^ ^ ^3.5 run function skyblock-composter:composter_dirt/search_composter
execute unless entity @e[type=minecraft:armor_stand,name=composter,tag=found] anchored eyes positioned ^ ^ ^4.5 run function skyblock-composter:composter_dirt/search_composter

execute unless entity @e[type=minecraft:armor_stand,name=composter,tag=found] run tellraw @s [{"text":"[Compost_Dirt] ","color":"dark_red"},{"text":"Composter not found, break and place again.","color":"white"}]

tag @e[type=minecraft:armor_stand,name=composter,tag=found] remove found

scoreboard players set @s place_composter 0