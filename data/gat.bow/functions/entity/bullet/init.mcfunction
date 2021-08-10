

# 弾速設定
    scoreboard players set @s Chuz.Speed 50

# UUIDコピー
    execute run data modify entity @s Owner set from entity @p[tag=Chuz.This] UUID

# 向き
    execute facing entity @e[type=marker,tag=GatBow.Spread,limit=1] feet run tp @s ~ ~ ~ ~ ~
    tp @s ~ ~-0.15 ~
    kill @e[type=marker,tag=GatBow.Spread]
# 射出
    function gat.bow:move


# タグセット
    tag @s remove GatBow.ArrowInit
    tag @s add GatBow.Arrow
