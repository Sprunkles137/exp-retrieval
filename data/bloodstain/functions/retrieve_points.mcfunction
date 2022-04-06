experience add @s[scores={bloodstain_points=256..}] 256 points
scoreboard players remove @s[scores={bloodstain_points=256..}] bloodstain_points 256
experience add @s[scores={bloodstain_points=128..}] 128 points
scoreboard players remove @s[scores={bloodstain_points=128..}] bloodstain_points 128
experience add @s[scores={bloodstain_points=64..}] 64 points
scoreboard players remove @s[scores={bloodstain_points=64..}] bloodstain_points 64
experience add @s[scores={bloodstain_points=32..}] 32 points
scoreboard players remove @s[scores={bloodstain_points=32..}] bloodstain_points 32
experience add @s[scores={bloodstain_points=16..}] 16 points
scoreboard players remove @s[scores={bloodstain_points=16..}] bloodstain_points 16
experience add @s[scores={bloodstain_points=8..}] 8 points
scoreboard players remove @s[scores={bloodstain_points=8..}] bloodstain_points 8
experience add @s[scores={bloodstain_points=4..}] 4 points
scoreboard players remove @s[scores={bloodstain_points=4..}] bloodstain_points 4
experience add @s[scores={bloodstain_points=2..}] 2 points
scoreboard players remove @s[scores={bloodstain_points=2..}] bloodstain_points 2
experience add @s[scores={bloodstain_points=1..}] 1 points
scoreboard players remove @s[scores={bloodstain_points=1..}] bloodstain_points 1
execute if score @s bloodstain_points matches 1.. run function bloodstain:retrieve_points