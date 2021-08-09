
# 最寄りの弾丸に消えてもらう
    #execute as @e[type=armor_stand,tag=Revo.Bullet,sort=nearest,limit=1] at @s run function gat.bow:entity/bullet/break

# ヒット
    execute as @e[type=!#gat.bow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s run function gat.bow:entity/bullet/hit_damage

# 消失
    tag @s remove Revo.NoHit
    function gat.bow:entity/bullet/break