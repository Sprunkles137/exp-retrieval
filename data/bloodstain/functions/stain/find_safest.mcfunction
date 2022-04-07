scoreboard players remove temp bloodstain_var 1
execute as @e[type=area_effect_cloud,tag=selected] at @s if score @s bloodstain_var = temp bloodstain_var unless block ~ ~ ~ minecraft:lava unless block ~ ~-1 ~ #bloodstain:unsafe run function bloodstain:stain/is_safe
execute if score temp bloodstain_var matches 1.. run function bloodstain:stain/find_safest