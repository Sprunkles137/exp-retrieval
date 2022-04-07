execute store result score @s bloodstain_levels run experience query @s levels
execute store result score @s bloodstain_points run experience query @s points
execute if score gamerule bloodstain_var matches 0 run kill @e[type=experience_orb,distance=..1.5]
execute if score gamerule bloodstain_var matches 1 run experience set @s 0 points
execute if score gamerule bloodstain_var matches 1 run experience set @s 0 levels
tag @s remove bloodstain_retrieved

data modify storage bloodstain: TrailMarker.Pos set value [0.0d, 0.0d, 0.0d]
scoreboard players operation current bloodstain_id = @s bloodstain_id
execute as @e[type=area_effect_cloud,tag=bloodstain_trail] if score @s bloodstain_id = current bloodstain_id run tag @s add selected
scoreboard players set temp bloodstain_var 20
function bloodstain:stain/find_safest
# Failsafe to their position if there are no valid locations in the last ten seconds
execute if score temp bloodstain_var matches 0 run data modify storage bloodstain: TrailMarker.Pos set from entity @s Pos
execute store result score @s bloodstain_deathx run data get storage bloodstain: TrailMarker.Pos[0]
execute store result score @s bloodstain_deathy run data get storage bloodstain: TrailMarker.Pos[1]
execute store result score @s bloodstain_deathz run data get storage bloodstain: TrailMarker.Pos[2]
tag @e[type=area_effect_cloud,tag=bloodstain_trail] remove selected