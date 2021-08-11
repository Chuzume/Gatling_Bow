
# ストレージ
    execute as @a at @s run function gat.bow:storage

# リセット
    tag @a[tag=Chuz.UsingBow] remove Chuz.UsingBow
    scoreboard players reset @a[scores={GatBow.Shot=0..}] GatBow.Shot