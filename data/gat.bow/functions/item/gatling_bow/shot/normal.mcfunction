
# 拡散と距離の設定
    #scoreboard players operation $spread ForwardSpread = @s Revo.Spread
    #scoreboard players set $distance ForwardSpread 210

# 発砲!
    playsound entity.arrow.shoot player @a ~ ~ ~ 2 1
    execute unless score @s GatBow.FireRate matches ..0 run scoreboard players remove @s GatBow.FireRate 1
    tag @s add Revo.NormalShot

## 弾を召喚
#    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Revo.Projectile","Revo.NoHit","Revo.BulletInit"],ArmorItems:[{id:"minecraft:structure_void",Count:1b},{},{},{}]}
## 拡散
#    function gat.bow:item/techkit_revo_reloader/shot/spread
## 弾丸にInit処理
#    execute as @e[type=armor_stand,tag=Revo.BulletInit,limit=1] at @s run function gat.bow:entity/bullet/init
#
## 弾丸消費
#    execute in overworld run function gat.bow:item/consume_ammo
#
## 精度上昇
#    scoreboard players remove @s[scores={Revo.Spread=1..}] Revo.Spread 1
#    scoreboard players remove @s[scores={Revo.Spread=1..}] Revo.Spread 1
#
## リセット
#    scoreboard players reset @s Revo.Shot

# 矢を消費
    clear @s arrow 1

# 
    execute in overworld run function gat.bow:item/consume_ammo