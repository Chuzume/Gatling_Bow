
# 拡散と距離の設定
    #scoreboard players operation $spread ForwardSpread = @s Revo.Spread
    #scoreboard players set $distance ForwardSpread 210

# 発砲!
    playsound entity.arrow.shoot player @a ~ ~ ~ 2 1
    execute unless score @s GatBow.FireRate matches ..0 run scoreboard players remove @s GatBow.FireRate 1
    tag @s add Chuz.This

# 弾を召喚
    execute anchored eyes run summon arrow ^ ^-0.15 ^-0.75 {damage:1,crit:1b,pickup:1b,Tags:["GatBow.Projectile","GatBow.ArrowInit"],Owner:{},Rotation:[0F,0F]}
    execute as @p[tag=Chuz.This] at @s run function gat.bow:item/gatling_bow/shot/spread

# 弾丸にInit処理
    execute as @e[type=arrow,tag=GatBow.ArrowInit,limit=1] at @s run function gat.bow:entity/bullet/init

# 矢を消費
    execute unless data storage chuz:context Item.Mainhand.tag.Enchantments[{id:"minecraft:infinity"}] anchored eyes run clear @s[gamemode=!creative] arrow 1

# 弾薬更新
    execute in overworld run function gat.bow:item/consume_ammo

# リセット
    tag @s remove Chuz.This
