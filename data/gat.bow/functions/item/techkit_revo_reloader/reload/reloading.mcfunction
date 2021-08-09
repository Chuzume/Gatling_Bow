# スコア減らしてく 20になったら終了
    scoreboard players add @s Revo.Reload 1
    execute if score @s Revo.Reload matches 20.. run function minigunbow:item/techkit_revo_reloader/reload/finish
