
# ストレージ
    execute as @a at @s run function gat.bow:storage

# スコアID
    #execute as @a unless score @s Revo.Pl.ID matches 0.. run function gat.bow:score_id/player_score_id

# 弾丸
    #execute as @e[type=arrow,tag=GatBow.Arrow] at @s run function gat.bow:entity/bullet/tick
    #execute as @e[type=armor_stand,tag=Revo.Bullet.Ch30] at @s run function gat.bow:entity/bullet_charged_30/tick

# UUIDヒット後のリセット
    #execute as @e[tag=UUIDHit.Reset,nbt=!{HurtTime:0s}] run function gat.bow:uuid_hit_reset

# リセット
    tag @a[tag=Chuz.UsingBow] remove Chuz.UsingBow
    scoreboard players reset @a[scores={GatBow.Shot=0..}] GatBow.Shot