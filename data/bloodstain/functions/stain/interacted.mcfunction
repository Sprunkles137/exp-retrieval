scoreboard players set temp bloodstain_var 0
execute if score @e[type=villager,tag=bloodstain,limit=1,sort=nearest] bloodstain_id = @s bloodstain_id run function bloodstain:stain/retrieve_exp
execute if score temp bloodstain_var matches 0 run tellraw @s {"text":"You can only retrieve your own experience."}
advancement revoke @s only bloodstain:use_bloodstain