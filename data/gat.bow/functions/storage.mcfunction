

# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# リロード
    execute if entity @s[tag=Revo.Hold,scores={Revo.Throw=0..}] run function minigunbow:item/reload_start

# タグ削除
    tag @s remove Revo.Hold

# 武器
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revo_Reloader} run function minigunbow:item/techkit_revo_reloader/main
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revo_Reloader_Reload} run function minigunbow:item/techkit_revo_reloader/reload/reloading
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revo_Reloader_Reload} run scoreboard players reset @s Revo.Reload

# もし持ってるヤツが古いなら
    execute if data storage chuz:context Item.Mainhand.tag{ItemName:TechKit_Revo_Reloader} run function minigunbow:item/techkit_revo_reloader/reload/start

# オフハンドに持てないアイテムが入ったら戻す
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:1b} run function minigunbow:item/no_offhand

# 装弾数制御
    execute store result score @s Revo.Ammo run scoreboard players get $Ammo Chuz.Temporary

# 削除
    data remove storage chuz:context Item

# やかましいので止める
    stopsound @a[distance=..20] player minecraft:item.armor.equip_generic
