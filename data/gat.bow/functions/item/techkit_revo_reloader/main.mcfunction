# リロードに使うタグ
    tag @s add Revo.Hold

# 見た目
    # 通常時
        execute if entity @s[tag=!Revo.ADSShot] run scoreboard players set $CMD Chuz.Temporary 9
    # ADS
        execute if entity @s[tag=!Revo.NormalShot] if predicate minigunbow:sneak run scoreboard players set $CMD Chuz.Temporary 10

# ADSのサウンド
    #構える
        execute if predicate minigunbow:sneak run scoreboard players add @s Revo.ADS 1
        execute if score @s Revo.ADS matches 1 run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
    #戻す
        execute if score @s Revo.ADS matches 1.. unless predicate minigunbow:sneak run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1.5
        execute if score @s Revo.ADS matches 1.. unless predicate minigunbow:sneak run scoreboard players reset @s Revo.ADS

# 精度が25まで低下する
    execute unless score @s Revo.Shot matches 0.. unless score @s Revo.Spread matches 15.. run scoreboard players add @s Revo.Spread 1

# 弾切れならリロード処理に
    execute if entity @s[scores={Revo.Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function minigunbow:item/techkit_revo_reloader/reload/start

# 発砲(非スニーク・フルオート射撃)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=!minigunbow:sneak,scores={Revo.Ammo=1..,Revo.Shot=0..}] run scoreboard players set @s Revo.Burst 3
    execute unless predicate minigunbow:sneak unless entity @s[scores={Revo.Burst=2}] if score @s Revo.Burst matches 1.. unless score @s Revo.Ammo matches ..0 run function minigunbow:item/techkit_revo_reloader/shot/normal

# 発砲(スニーク・高精度3点バースト)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=minigunbow:sneak,scores={Revo.Ammo=1..,Revo.Shot=0..,Revo.Charge=..29}] run scoreboard players set @s Revo.Burst 3
    execute if predicate minigunbow:sneak if score @s Revo.Burst matches 1.. unless score @s Revo.Ammo matches ..0 run function minigunbow:item/techkit_revo_reloader/shot/ads

# 発砲(スニーク・チャージショット)
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=minigunbow:sneak,scores={Revo.Ammo=3..,Revo.Shot=0..,Revo.Charge=30..}] run function minigunbow:item/techkit_revo_reloader/shot/charged
    # 弾薬足りねえ
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} if entity @s[predicate=minigunbow:sneak,scores={Revo.Ammo=..2,Revo.Shot=0..,Revo.Charge=30..}] run function minigunbow:item/techkit_revo_reloader/reload/start


# ディレイ
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} run tag @s remove Revo.NormalShot
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} run tag @s remove Revo.ADSShot

# チャージ 
    scoreboard players add @s[predicate=minigunbow:sneak] Revo.Charge 1

# チャージ値リセット
    execute unless predicate minigunbow:sneak run scoreboard players reset @s Revo.Charge

# チャージぴかぴか
    execute if score @s Revo.Charge matches 25.. anchored eyes run particle minecraft:dust 0 0.75 1 0.5 ^ ^-0.1 ^1 1 0 0 0 0 normal @s
    execute if score @s Revo.Charge matches 25 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s Revo.Charge matches 25 run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 2 2

# Replace処理
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChuzData:{Reloadable:1b}}}}] if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function minigunbow:item/replaceitem

# バースト値減少
    scoreboard players remove @s[scores={Revo.Burst=1..}] Revo.Burst 1