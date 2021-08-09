
# 何で攻撃されたのかタグ付与
    tag @s add Revo.Hit.ThrownGun

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# ダメージを設定
    data merge storage gat.bow_score_damage: {Damage:9.00}
    function gat.bow_score_damage:api/attack
