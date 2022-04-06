summon minecraft:armor_stand ~ -64 ~ {Tags:["editing","bloodstain","item"],Marker:true,Invisible:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:lime_dye",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[90.0f,0.0f,0.0f]}}
summon minecraft:armor_stand ~ -64 ~ {Tags:["editing","bloodstain","grass_1"],Marker:true,Invisible:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:tall_grass",Count:1b}],Pose:{Head:[0.0f,135.0f,0.0f]}}
summon minecraft:armor_stand ~ -64 ~ {Tags:["editing","bloodstain","grass_2"],Marker:true,Invisible:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:tall_grass",Count:1b}],Pose:{Head:[0.0f,45.0f,0.0f]}}
summon minecraft:villager ~ -64 ~ {Tags:["editing","bloodstain"],Silent:true,NoAI:true,Invulnerable:true,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
scoreboard players operation @e[tag=editing] bloodstain_id = @s bloodstain_id
scoreboard players operation @e[tag=editing] bloodstain_deathcount = @s bloodstain_deathcount
# Storage must be set manually to respect data type
data modify storage bloodstain: ArmorStand.Pos set value [0.0d, 0.0d, 0.0d]
execute store result storage bloodstain: ArmorStand.Pos[0] double 1 run scoreboard players get death_x bloodstain_var
execute store result storage bloodstain: ArmorStand.Pos[1] double 1 run scoreboard players get death_y bloodstain_var
execute store result storage bloodstain: ArmorStand.Pos[2] double 1 run scoreboard players get death_z bloodstain_var
execute as @e[type=armor_stand,tag=editing,tag=item,limit=1] run function bloodstain:stain/edit
tag @e[tag=editing] remove editing