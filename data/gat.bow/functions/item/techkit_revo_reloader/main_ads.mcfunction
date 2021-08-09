
# 発砲(スニーク)
    execute unless score @s Revo.Charge matches 25.. unless score @s Revo.Delay matches 0.. if entity @s[scores={Revo.Ammo=1..,Revo.Shot=1..}] run scoreboard players set @s Revo.Burst 3
    execute unless score @s Revo.Charge matches 25.. if score @s Revo.Burst matches 1.. run function minigunbow:item/techkit_revo_reloader/shot/ads

# チャージ値上昇
    scoreboard players add @s Revo.Charge 1

# チャージぴかぴか
    execute if score @s Revo.Charge matches 25.. anchored eyes run particle minecraft:dust 0 0.75 1 0.5 ^ ^-0.1 ^1 1 0 0 0 0 normal @s
    execute if score @s Revo.Charge matches 25 run playsound entity.player.levelup player @s ~ ~ ~ 2 2 
    execute if score @s Revo.Charge matches 25 run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 2 2

# チャージ30
    execute if entity @s[scores={Revo.Ammo=3..,Revo.Shot=1..,Revo.Charge=25..}] run function minigunbow:item/techkit_revo_reloader/shot_charged_30

# 弾足りてないチャージショット
    execute if entity @s[scores={Revo.Ammo=..3,Revo.Shot=1..,Revo.Charge=25..}] run scoreboard players set @s Revo.Ammo 0

# タグ整備
    tag @s remove Revo.NowNormal
    tag @s add Revo.NowADS