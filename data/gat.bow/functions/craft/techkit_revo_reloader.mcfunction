# まぁまずはアイテムが必要であろう
    give @s crossbow{ChuzData:{Reloadable:true,NoOffhand:true,Ammo:30,MaxAmmo:30,AmmoUse:1,CoolTime:0,MaxCoolTime:1,ItemID:TechKit_Revo_Reloader,RawName:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}'},display:{Name:'{"text":"TechKit: Revo Reloader","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[RClick:Shot]","color":"white","italic":false}','{"text":"[Sneak: ADS]","color":"white","italic":false}','{"text":"[Drop: Reload]","color":"white","italic":false}','{"text":" "}','{"text":"\\"ヴォルトを目指せ！\\"","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,CustomModelData:9,Charged:1b,ItemName:TechKit_Revo_Reloader,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-100,Operation:0,UUID:[I;-1325817302,-411482978,-1222952476,823678823],Slot:"mainhand"}]} 1

# 次回以降も実行するためにレシピ没収
    recipe take @s minigunbow:techkit_revo_reloader

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only minigunbow:crafting/techkit_revo_reloader