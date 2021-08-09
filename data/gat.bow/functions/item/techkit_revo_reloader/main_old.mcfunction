
# 弾持ってないんすか
    execute unless score @s Revo.Ammo = @s Revo.Ammo run scoreboard players set @s Revo.Ammo 30

# アイテム所持のタグ付与
    tag @s add Revo.Hold

# 弾切れならリロード処理に
    execute unless score @s Revo.Ammo matches 1.. run function minigunbow:item/techkit_revo_reloader/reload_start_alt

# バースト値減少
    scoreboard players remove @s[scores={Revo.Burst=1..}] Revo.Burst 1

# 発砲(非スニーク)
    execute unless predicate minigunbow:sneak unless score @s Revo.Delay matches 0.. if entity @s[scores={Revo.Ammo=1..,Revo.Shot=1..}] run scoreboard players set @s Revo.Burst 3
    execute unless predicate minigunbow:sneak unless entity @s[scores={Revo.Burst=2}] if score @s Revo.Burst matches 1.. run function minigunbow:item/techkit_revo_reloader/shot

# スニーク中はmain_adsを実行する
    execute if predicate minigunbow:sneak run function minigunbow:item/techkit_revo_reloader/main_ads

# 発砲後即座に交換
    #execute if score @s Revo.Shot matches 1.. run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,ItemName:TechKit_Revo_Reloader,Charged:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# ディレイ
    execute if score @s Revo.Delay matches 1.. run scoreboard players remove @s Revo.Delay 1

# ディレイ0で銃復活
    #execute unless entity @s[tag=Revo.Hold_Delay] run replaceitem entity @s weapon.mainhand crossbow{display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader} 1
    execute if score @s Revo.Delay matches 0 run function minigunbow:item/techkit_revo_reloader/recharge

# 残弾表示
    title @s actionbar [{"text":"| Ammo: "},{"score":{"name":"@s","objective":"Revo.Ammo"}},{"text":" |"}]

# 精度が25まで低下する
    execute unless score @s Revo.Spread matches 25.. run scoreboard players add @s Revo.Spread 1

# スニーク解除で武器を戻す
    execute unless predicate minigunbow:sneak if entity @s[tag=Revo.NowADS] run item replace entity @s weapon.mainhand with crossbow{display: {Name: '{"text":"TechKit: Revo Reloader","color":"gold","italic":false}', Lore: ['{"text":" "}', '{"text":"[RClick:Shot]","color":"white","italic":false}', '{"text":"[Sneak: ADS]","color":"white","italic":false}', '{"text":"[Drop: Reload]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']}, HideFlags: 7, Unbreakable: 1b, CustomModelData: 9, Charged: 1b, ItemName: TechKit_Revo_Reloader, AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -100, Operation: 0, UUID: [I; -1325817302, -411482978, -1222952476, 823678823], Slot: "mainhand"}]} 1

# 現在のスニーク状況    
    execute unless predicate minigunbow:sneak run tag @s add Revo.NowNormal
    execute unless predicate minigunbow:sneak run tag @s remove Revo.NowADS

# チャージ値リセット
    execute unless predicate minigunbow:sneak run scoreboard players reset @s Revo.Charge