gamerule showDeathMessages false
execute as @e[tag=Revo.Projectile,sort=nearest,limit=1] at @a if score @s Revo.En.ID = @p Revo.Pl.ID run tag @p add Chuz.This
execute if entity @s[tag=Revo.Hit.Bullet] run tellraw @a ["",{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] で撃ち抜かれた"}]
execute if entity @s[tag=Revo.Hit.ThrownGun] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" に ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] をぶつけられた"}]
execute if entity @s[tag=Revo.Hit.BulletHS] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] でヘッドショットされた"}]
execute if entity @s[tag=Revo.Hit.Bullet.Charged] run tellraw @a ["",{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=Chuz.This]"},{"text":" の ["},{"text":"TechKit: Revo Reloader","color":"gold"},{"text":"] で消し飛ばされた"}]
tag @a remove Chuz.This
kill @s
gamerule showDeathMessages true