experience add @s[scores={bloodstain_levels=256..}] 256 levels
scoreboard players remove @s[scores={bloodstain_levels=256..}] bloodstain_levels 256
experience add @s[scores={bloodstain_levels=128..}] 128 levels
scoreboard players remove @s[scores={bloodstain_levels=128..}] bloodstain_levels 128
experience add @s[scores={bloodstain_levels=64..}] 64 levels
scoreboard players remove @s[scores={bloodstain_levels=64..}] bloodstain_levels 64
experience add @s[scores={bloodstain_levels=32..}] 32 levels
scoreboard players remove @s[scores={bloodstain_levels=32..}] bloodstain_levels 32
experience add @s[scores={bloodstain_levels=16..}] 16 levels
scoreboard players remove @s[scores={bloodstain_levels=16..}] bloodstain_levels 16
experience add @s[scores={bloodstain_levels=8..}] 8 levels
scoreboard players remove @s[scores={bloodstain_levels=8..}] bloodstain_levels 8
experience add @s[scores={bloodstain_levels=4..}] 4 levels
scoreboard players remove @s[scores={bloodstain_levels=4..}] bloodstain_levels 4
experience add @s[scores={bloodstain_levels=2..}] 2 levels
scoreboard players remove @s[scores={bloodstain_levels=2..}] bloodstain_levels 2
experience add @s[scores={bloodstain_levels=1..}] 1 levels
scoreboard players remove @s[scores={bloodstain_levels=1..}] bloodstain_levels 1
execute if score @s bloodstain_levels matches 1.. run function bloodstain:retrieve_levels