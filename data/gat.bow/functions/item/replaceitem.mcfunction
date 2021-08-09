
# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run clear @s arrow 0

# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item set from entity @s SelectedItem
    loot replace block 100001 0 100000 container.0 loot gat.bow:set_ammo
    data modify storage chuz:context Item.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    #execute store result storage chuz:context Item.tag.CustomModelData int 1 run scoreboard players get $CMD Chuz.Temporary
    execute store result storage chuz:context Item.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    #execute store result storage chuz:context Item.tag.ChuzData.CoolTime int 1 run scoreboard players get @s GatBow.FireRate
    execute store result storage chuz:context Item.tag.ChuzData.CoolTime int 1 run data get storage chuz:context Item.tag.ChuzData.CoolTime 0.99999
    #data modify storage chuz:context Item.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    execute if entity @s[scores={Revo.Shot=0..}] run scoreboard players reset @a Revo.Shot
