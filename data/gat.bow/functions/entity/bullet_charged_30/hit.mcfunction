
# 最寄りの弾丸に消えてもらう
    #execute as @e[type=armor_stand,tag=Revo.Bullet,sort=nearest,limit=1] at @s run function minigunbow:entity/bullet/break

# ヒット
    execute as @e[type=!#minigunbow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s run function minigunbow:entity/bullet_charged_30/explosion

# 消失
    tag @s remove Revo.NoHit
    function minigunbow:entity/bullet_charged_30/break