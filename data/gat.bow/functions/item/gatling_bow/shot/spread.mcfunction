    
# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 拡散の設定 // この場合最大10mで1.5m拡散する
    # どれくらい視点から離すか
        data modify storage gatbow_forward_spreader: Distance set value 10f
    # どれくらい拡散させるか
        data modify storage gatbow_forward_spreader: Spread set value 1.0f
# 処理の実行
    execute at @s as @e[type=marker,tag=SpreadMarker,limit=1] run function gatbow_forward_spreader:api/circle
# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^-0.12 ^ ^10 run particle electric_spark
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^-0.12 ^ ^10 run summon marker ~ ~ ~ {Tags:["GatBow.Spread"]}
# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]