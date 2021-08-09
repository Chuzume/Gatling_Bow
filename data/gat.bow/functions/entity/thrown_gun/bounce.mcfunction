
# 跳ねる(固定値)
    execute if score @s Revo.Speed matches ..10 run data modify entity @s Motion[1] set value 0.5d
    #data modify entity @s Motion[1] set value 0.5d

# 跳ねる
    execute if score @s Revo.Speed matches 10.. store result entity @s Motion[1] double 0.05 run scoreboard players get @s Revo.Speed
    scoreboard players reset @s Revo.Speed

# 音
    function minigunbow:entity/thrown_gun/hit_wall