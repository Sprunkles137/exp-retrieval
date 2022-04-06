data modify entity @s Pos set from storage bloodstain: ArmorStand.Pos
execute at @s align xyz run teleport @s ~0.5 ~-1.7 ~-0.2375
execute at @s align xyz run teleport @e[type=villager,tag=editing,limit=1] ~0.5 ~0.65 ~1.5
execute at @s align xyz run teleport @e[type=armor_stand,tag=grass_1,tag=editing,limit=1] ~0.3 ~0.115 ~1.3
execute at @s align xyz run teleport @e[type=armor_stand,tag=grass_2,tag=editing,limit=1] ~0.3 ~0.115 ~1.7