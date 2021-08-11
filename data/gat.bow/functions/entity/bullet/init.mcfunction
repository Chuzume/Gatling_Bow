
# 無限から放たれたなら拾えなくなる(というか砕ける)
    execute if data storage chuz:context Item.Mainhand.tag.Enchantments[{id:"minecraft:infinity"}] run data modify entity @s pickup set value 2b

# フレイムから放たれたなら燃える
    execute if data storage chuz:context Item.Mainhand.tag.Enchantments[{id:"minecraft:flame"}] run data modify entity @s Fire set value 90000

# 弾速設定
    scoreboard players set @s Chuz.Speed 50

# UUIDコピー
    execute run data modify entity @s Owner set from entity @p[tag=Chuz.This] UUID

# 射出
    execute facing entity @e[type=marker,tag=GatBow.Spread,limit=1] feet run function gat.bow:move
    kill @e[type=marker,tag=GatBow.Spread]

# タグセット
    tag @s remove GatBow.ArrowInit
    tag @s add GatBow.Arrow