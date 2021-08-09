
# 連射力が下がる
    execute unless entity @s[tag=Chuz.UsingBow] unless score @s GatBow.FireRate matches 8.. run scoreboard players add @s GatBow.FireRate 1

# 発砲
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{CoolTime:0} unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} if entity @s[tag=Chuz.UsingBow] run function gat.bow:item/gatling_bow/shot/normal

# Replace処理
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function gat.bow:item/replaceitem