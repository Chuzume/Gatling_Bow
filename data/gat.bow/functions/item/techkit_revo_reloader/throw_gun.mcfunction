# 銃を投げる
    execute anchored eyes positioned ^-0.25 ^ ^ run summon armor_stand ~ ~-1 ~ {Silent:1b,Small:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.ThrownGunInit"],Pose:{Head:[0f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:9}}]}
    execute as @e[type=armor_stand,tag=Revo.ThrownGunInit] at @s run function minigunbow:entity/thrown_gun/init

# 音
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1 

# 精度リセット
    scoreboard players set @s Revo.Spread 25