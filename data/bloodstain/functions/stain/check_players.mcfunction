scoreboard players set temp bloodstain_var 0
scoreboard players operation current bloodstain_id = @s bloodstain_id
scoreboard players operation current bloodstain_deathcount = @s bloodstain_deathcount
execute positioned ~-32 ~-32 ~-32 as @a[dx=64,dy=64,dz=64] if score @s bloodstain_id = current bloodstain_id if score @s bloodstain_deathcount = current bloodstain_deathcount run scoreboard players add temp bloodstain_var 1
execute if score temp bloodstain_var matches 0 as @e[tag=bloodstain,distance=..1] if score @s bloodstain_id = current bloodstain_id run function bloodstain:stain/remove