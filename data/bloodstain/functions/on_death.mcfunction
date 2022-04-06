execute store result score @s bloodstain_levels run experience query @s levels
execute store result score @s bloodstain_points run experience query @s points
execute if score gamerule bloodstain_var matches 0 run kill @e[type=experience_orb,distance=..1.5]
execute if score gamerule bloodstain_var matches 1 run experience set @s 0 points
execute if score gamerule bloodstain_var matches 1 run experience set @s 0 levels
tag @s remove bloodstain_retrieved