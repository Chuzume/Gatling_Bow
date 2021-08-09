
# 拡散と距離の設定
    #scoreboard players operation $spread ForwardSpread = @s Revo.Spread
    #scoreboard players set $distance ForwardSpread 210

# 発砲!
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 2 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2
    playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2
    scoreboard players set $Delay Chuz.Temporary 1
    scoreboard players set $AmmoUse Chuz.Temporary 1
    tag @s add Revo.NormalShot

# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
# 拡散
    function minigunbow:item/techkit_revo_reloader/shot/spread
# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=Revo.BulletInit,limit=1] at @s run function minigunbow:entity/bullet/init

# 弾丸消費
    execute in overworld run function minigunbow:item/consume_ammo

# 精度上昇
    scoreboard players remove @s[scores={Revo.Spread=1..}] Revo.Spread 1
    scoreboard players remove @s[scores={Revo.Spread=1..}] Revo.Spread 1

# リセット
    scoreboard players reset @s Revo.Shot