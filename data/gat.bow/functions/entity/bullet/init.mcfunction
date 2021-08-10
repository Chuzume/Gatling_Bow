
# 弾速設定
    scoreboard players set @s Chuz.Speed 50

# UUIDコピー
    execute run data modify entity @s Owner set from entity @p[tag=Chuz.This] UUID

# 射出
    execute rotated as @p[tag=Chuz.This] run function gat.bow:move

# タグセット
    tag @s remove GatBow.ArrowInit
    tag @s add GatBow.Arrow
