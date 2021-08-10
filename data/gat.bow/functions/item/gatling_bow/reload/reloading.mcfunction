# スコア減らしてく 20になったら終了
    scoreboard players add @s Revo.Reload 1
    execute if score @s Revo.Reload matches 20.. run function gat.bow:item/techkit_gatbow_reloader/reload/finish
