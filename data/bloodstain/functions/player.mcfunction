execute unless score @s bloodstain_id matches 0.. store result score @s bloodstain_id run scoreboard players add max bloodstain_id 1
data modify storage bloodstain: Player set from entity @s {}
execute store result score player_x bloodstain_var run data get storage bloodstain: Player.Pos[0]
execute store result score player_y bloodstain_var run data get storage bloodstain: Player.Pos[1]
execute store result score player_z bloodstain_var run data get storage bloodstain: Player.Pos[2]
execute store result score death_x bloodstain_var run data get storage bloodstain: Player.LastDeathLocation.pos[0]
execute store result score death_y bloodstain_var run data get storage bloodstain: Player.LastDeathLocation.pos[1]
execute store result score death_z bloodstain_var run data get storage bloodstain: Player.LastDeathLocation.pos[2]
scoreboard players operation player_x bloodstain_var -= death_x bloodstain_var
scoreboard players operation player_y bloodstain_var -= death_y bloodstain_var
scoreboard players operation player_z bloodstain_var -= death_z bloodstain_var

execute unless entity @s[tag=bloodstain_retrieved] if score player_x bloodstain_var matches -32..32 if score player_y bloodstain_var matches -32..32 if score player_z bloodstain_var matches -32..32 run function bloodstain:stain/test_1
execute at @s positioned ~-2 ~-2 ~-2 if entity @e[type=villager,tag=bloodstain,dx=3,dy=3,dz=3] run title @s actionbar {"color":"yellow","translate":"key.use","extra":[{"color":"white","text":" to retrieve experience"}]}