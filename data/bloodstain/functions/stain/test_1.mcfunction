scoreboard players operation current bloodstain_id = @s bloodstain_id
scoreboard players operation current bloodstain_deathcount = @s bloodstain_deathcount
scoreboard players set temp bloodstain_id 0
execute positioned ~-32 ~-32 ~-32 as @e[tag=bloodstain,dx=64,dy=64,dz=64] if score @s bloodstain_id = current bloodstain_id if score @s bloodstain_deathcount = current bloodstain_deathcount run scoreboard players add temp bloodstain_id 1
execute if score temp bloodstain_id matches 0 run function bloodstain:stain/summon