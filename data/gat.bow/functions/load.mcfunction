
# スコアボード作成
    scoreboard objectives add GatBow.Shot minecraft.used:minecraft.bow
    scoreboard objectives add GatBow.FireRate dummy

# スコアIDだ
    #scoreboard objectives add Revo.Pl.ID.Core dummy
    #scoreboard objectives add Revo.Pl.ID dummy
    #scoreboard objectives add Revo.En.ID dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}

# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Calc dummy

    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

# やぶちのクラフター用レシピ
    data modify storage yv:custom_crafter Import append value {Pattern:[{Count:1b,Slot:2b,id:"minecraft:dispenser"},{Count:1b,Slot:3b,id:"minecraft:chain"},{Count:1b,Slot:10b,id:"minecraft:dispenser"},{Count:1b,Slot:11b,id:"minecraft:repeater"},{Count:1b,Slot:12b,id:"minecraft:chain"},{Count:1b,Slot:20b,id:"minecraft:dispenser"},{Count:1b,Slot:21b,id:"minecraft:chain"}],Result:{Count:1b,Slot:15b,id:"minecraft:bow",tag:{ChuzData:{Ammo:0,AmmoUse:1,CoolTime:0,ItemID:"Gatling_Bow",MaxAmmo:2147483647,MaxCoolTime:1,NoOffhand:1b,RawName:'{"text":"Gatling Bow","color":"gold","italic":false}'},Damage:0,Unbreakable:1b,display:{Lore:['{"text":" "}','{"text":"[Hold RClick:FIRE!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"圧倒的連射力！\\"","color":"gray","italic":false}'],Name:'{"text":"Gatling Bow","color":"gold","italic":false}'}}}}