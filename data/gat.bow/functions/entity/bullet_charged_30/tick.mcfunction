
# パーティクル
    particle minecraft:dust 0.3 1 1 0.75 ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
    particle minecraft:dust 0 0.75 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
    particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..80]

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run scoreboard players operation @s Revo.Recursion = @s Revo.Speed

# 前進
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Revo.NoHitUser

# プレイヤーから出るまでヒット判定ナシ
    execute at @s[tag=Revo.Bullet.NoMore] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0,type=!#minigunbow:unhurtable,tag=!Revo.Unhurtable] run tag @s remove Revo.Bullet.NoMore

# スコア減算
    scoreboard players remove @s Revo.Recursion 1
    scoreboard players remove @s Revo.Range 1

# プレイヤーの衝突判定
    execute if entity @s[tag=!Revo.Bullet.NoMore,tag=Revo.NoHit,tag=Revo.NoHitUser] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#minigunbow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#minigunbow:unhurtable,tag=!Revo.Unhurtable,sort=nearest,limit=1] at @s run function minigunbow:entity/bullet_charged_30/explosion

# 壁の衝突判定
    execute unless block ^ ^ ^1 #minigunbow:no_collision run function minigunbow:entity/bullet_charged_30/break
    
# 再帰
    execute if entity @s[scores={Revo.Recursion=1..,Revo.Range=1..}] at @s run function minigunbow:entity/bullet_charged_30/tick

# キル
    execute if entity @s[scores={Revo.Range=0}] run kill @s