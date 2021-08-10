# ホログラム銃を召喚
    item replace entity @s weapon.mainhand with crossbow{ChuzData:{NoOffhand:1b,ItemID:TechKit_gatbow_Reloader_Reload},display:{Name:'[{"text":"TechKit: Revo Reloader ","color":"gold","italic":false},{"text":" | Reloading |","color":"gray","italic":false}]', Lore: ['{"text":" "}', '{"text":"[Reloading!]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"もっと大事に扱ってよ！\\"","color":"gray","italic":false}']}, HideFlags: 7, Unbreakable: 1b, CustomModelData: 11, Enchantments: [{id: "minecraft:quick_charge", lvl: 6s}]}

# 音
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 2

# リセット
    scoreboard players reset @s Revo.Burst
    scoreboard players reset @s Revo.Charge

# これが俺のリロードだ
    execute at @s run function gat.bow:item/techkit_gatbow_reloader/throw_gun
