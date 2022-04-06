scoreboard objectives add bloodstain_var dummy
scoreboard objectives add bloodstain_id dummy
scoreboard objectives add bloodstain_points dummy
scoreboard objectives add bloodstain_levels dummy
scoreboard objectives add bloodstain_deaths deathCount
scoreboard objectives add bloodstain_deathcount deathCount
execute unless score $keepExperience bloodstain_var = $keepExperience bloodstain_var run scoreboard players set $keepExperience bloodstain_var 1
schedule function bloodstain:tick_5 5t
schedule function bloodstain:tick_10 10t