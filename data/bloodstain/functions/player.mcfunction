execute unless score @s bloodstain_id matches 0.. store result score @s bloodstain_id run scoreboard players add max bloodstain_id 1

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["new","bloodstain_trail"],Age:0,WaitTime:0,Duration:200}
scoreboard players operation @e[type=area_effect_cloud,tag=new,limit=1] bloodstain_id = @s bloodstain_id
tag @e[type=area_effect_cloud,tag=new,limit=1] remove new

data modify storage bloodstain: Player.Pos set from entity @s Pos
execute store result score player_x bloodstain_var run data get storage bloodstain: Player.Pos[0]
execute store result score player_y bloodstain_var run data get storage bloodstain: Player.Pos[1]
execute store result score player_z bloodstain_var run data get storage bloodstain: Player.Pos[2]
scoreboard players operation player_x bloodstain_var -= @s bloodstain_deathx
scoreboard players operation player_y bloodstain_var -= @s bloodstain_deathy
scoreboard players operation player_z bloodstain_var -= @s bloodstain_deathz

execute unless entity @s[tag=bloodstain_retrieved] if score player_x bloodstain_var matches -32..32 if score player_y bloodstain_var matches -32..32 if score player_z bloodstain_var matches -32..32 run function bloodstain:player/test_1
execute at @s positioned ~-2 ~-2 ~-2 if entity @e[type=villager,tag=bloodstain,dx=3,dy=3,dz=3] run title @s actionbar {"color":"yellow","translate":"key.use","extra":[{"color":"white","text":" to retrieve experience"}]}