#execute as @e[type=!#minigunbow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] run function minigunbow:entity/bullet/hit
execute positioned ^ ^ ^-1 run particle enchanted_hit ~ ~ ~ 0 0 0 0.25 1
kill @s