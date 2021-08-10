
# プレイヤーの衝突判定
    #execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#gat.bow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#gat.bow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s run say yo
    execute positioned ^ ^ ^1 if entity @e[type=!arrow,nbt=!{HurtTime:0s},distance=..3] run function gat.bow:entity/bullet/woah
