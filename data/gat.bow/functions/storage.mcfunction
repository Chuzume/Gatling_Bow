

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# 武器
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Gatling_Bow} run function gat.bow:item/gatling_bow/main

# オフハンドに持てないアイテムが入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:1b} run function gat.bow:item/no_offhand

# 削除
    data remove storage chuz:context Item

# やかましいので止める
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic
