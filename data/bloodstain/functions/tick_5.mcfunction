scoreboard players set temp bloodstain_var 0
# If keepInventory is false, or if keepInventory is true and keepExperience is false
execute if score gamerule bloodstain_var matches 0 run scoreboard players set temp bloodstain_var 1
execute if score gamerule bloodstain_var matches 1 if score $keepExperience bloodstain_var matches 0 run scoreboard players set temp bloodstain_var 1
execute if score temp bloodstain_var matches 1 as @a[scores={bloodstain_deaths=1}] at @s run function bloodstain:player/on_death
execute at @e[type=villager,tag=bloodstain] run particle minecraft:scrape ~ ~1.5 ~ 0 4 0 1 0
scoreboard players reset @a bloodstain_deaths
schedule function bloodstain:tick_5 5t