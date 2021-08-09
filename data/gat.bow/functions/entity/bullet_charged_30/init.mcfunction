execute facing entity @e[type=marker,tag=Revo.Spread] feet run tp @s ~ ~ ~ ~ ~
tp @s ~ ~-0.15 ~
kill @e[type=marker,tag=Revo.Spread]
tag @s add Revo.Bullet.Ch30
tag @s remove Revo.Bullet.Ch30Init
scoreboard players set @s Revo.Speed 10
scoreboard players set @s Revo.Range 400

# UUIDコピー
    execute run data modify entity @s ArmorItems[0].tag.OwnerUUID set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Revo.En.ID = @p Revo.Pl.ID