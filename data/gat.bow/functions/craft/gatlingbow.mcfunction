# まぁまずはアイテムが必要であろう
    give @s bow{ChuzData:{NoOffhand:true,Ammo:0,MaxAmmo:2147483647,AmmoUse:1,CoolTime:0,MaxCoolTime:1,ItemID:Gatling_Bow,RawName:'{"text":"Gatling Bow","color":"gold","italic":false}'},display:{Name:'{"text":"Gatling Bow","color":"gold","italic":false}',Lore:['{"text":" "}','{"text":"[Hold RClick:FIRE!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"圧倒的連射力！\\"","color":"gray","italic":false}']},Unbreakable:1b} 1

# 次回以降も実行するためにレシピ没収
    recipe take @s gat.bow:gatlingbow

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only gat.bow:crafting/gatlingbow