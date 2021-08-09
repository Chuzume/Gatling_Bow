
# タグ設定
    tag @e[nbt={Invulnerable:1b}] add Revo.Unhurtable
    tag @a[gamemode=!survival,gamemode=!adventure] add Revo.Unhurtable

# リロード
    #execute as @a[tag=Revo.Hold,scores={Revo.Throw=0..}] at @s run function minigunbow:item/techkit_revo_reloader/reload
    #tag @a[tag=Revo.Hold] remove Revo.Hold

# ストレージ
    execute as @a at @s run function minigunbow:storage

# スコアID
    execute as @a unless score @s Revo.Pl.ID matches 0.. run function minigunbow:score_id/player_score_id

# 弾丸
    execute as @e[type=armor_stand,tag=Revo.Bullet] at @s run function minigunbow:entity/bullet/tick
    execute as @e[type=armor_stand,tag=Revo.Bullet.Ch30] at @s run function minigunbow:entity/bullet_charged_30/tick

# 飛んでく銃
    execute as @e[type=armor_stand,tag=Revo.ThrownGun] at @s run function minigunbow:entity/thrown_gun/tick

# UUIDヒット後のリセット
    execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function minigunbow:uuid_hit_reset

# リセット
    execute if entity @e[tag=Revo.Unhurtable,limit=1] run tag @e[tag=Revo.Unhurtable] remove Revo.Unhurtable
    execute if entity @a[scores={Revo.Throw=0..},limit=1] run scoreboard players reset @a Revo.Throw