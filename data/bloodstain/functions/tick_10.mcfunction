scoreboard players set temp bloodstain_var 0
execute store result score gamerule bloodstain_var run gamerule keepInventory
# If keepInventory is false, or if keepInventory is true and keepExperience is false
execute if score gamerule bloodstain_var matches 0 run scoreboard players set temp bloodstain_var 1
execute if score gamerule bloodstain_var matches 1 if score $keepExperience bloodstain_var matches 0 run scoreboard players set temp bloodstain_var 1
execute if score temp bloodstain_var matches 1 as @a at @s run function bloodstain:player
execute as @e[type=villager,tag=bloodstain] at @s run function bloodstain:stain/check_players
schedule function bloodstain:tick_10 10t