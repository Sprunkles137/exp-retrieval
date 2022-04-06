scoreboard players set temp bloodstain_var 1
tag @s add bloodstain_retrieved
function bloodstain:retrieve_levels
function bloodstain:retrieve_points
playsound item.trident.riptide_3 player @s ~ ~ ~ 1 0.5
title @s times 13 30 12
title @s subtitle {"text":"EXPERIENCE RETRIEVED"}
title @s title {"text":""}
scoreboard players operation current bloodstain_id = @s bloodstain_id
execute as @e[tag=bloodstain] if score @s bloodstain_id = current bloodstain_id run function bloodstain:stain/remove