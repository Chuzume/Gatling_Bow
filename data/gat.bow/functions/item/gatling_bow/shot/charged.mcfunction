
# 発砲!
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 2 2
    playsound minecraft:entity.player.levelup player @a ~ ~ ~ 2 2
    scoreboard players set @s Revo.Delay 10
    scoreboard players set $AmmoUse Chuz.Temporary 3


# 弾を召喚
    execute anchored eyes run summon armor_stand ^ ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.Bullet.Ch30Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
    execute anchored eyes run summon marker ^ ^ ^10 {Tags:["Revo.Spread"]}
    execute as @e[type=armor_stand,tag=Revo.Bullet.Ch30Init] at @s run function gat.bow:entity/bullet_charged_30/init

# 弾丸消費
    execute in overworld run function gat.bow:item/consume_ammo

# リセット
    scoreboard players reset @s Revo.Charge