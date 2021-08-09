
# 何で攻撃されたのかタグ付与
    tag @s add Revo.Hit.Bullet

# ヘッドショットテスト
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=armor_stand,tag=Revo.Bullet,dx=0] run function minigunbow:entity/bullet/hit_headshot

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# 演出ダメージ
    #execute if entity @s[type=!player] run function minigunbow:uuid_hit_no_kb
    
# ダメージを設定
    data merge storage gat.bow_score_damage: {Damage:2.00}
    execute at @s run function gat.bow_score_damage:api/attack
