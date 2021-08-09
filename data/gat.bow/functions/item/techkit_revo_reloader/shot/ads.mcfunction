
# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set $Delay Chuz.Temporary 6
    scoreboard players set $AmmoUse Chuz.Temporary 1
    tag @s add Revo.ADSShot

# 弾を召喚
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon marker ^ ^ ^10 {Tags:["Revo.Spread"]}
    execute as @e[type=armor_stand,tag=Revo.BulletInit] at @s run function minigunbow:entity/bullet/init

# 弾丸消費
    execute in overworld run function minigunbow:item/consume_ammo

# リセット
    scoreboard players reset @s Revo.Charge