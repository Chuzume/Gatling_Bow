
# 現状はオフハンドに入れると戻ってくる
    data modify storage chuz:context Item merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot give @s mine 100001 0 100000 debug_stick
    #execute if entity @s[scores={C.Apex_Shot=0..}] run scoreboard players reset @a C.Apex_Shot
    item replace entity @s weapon.offhand with air