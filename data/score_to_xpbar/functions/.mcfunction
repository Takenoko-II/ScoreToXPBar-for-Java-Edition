#> score_to_xpbar:
#
# @internal

# デフォルト値の設定
    execute unless score @s ScoreToXPBar.animation_speed = @s ScoreToXPBar.animation_speed run scoreboard players set @s ScoreToXPBar.animation_speed 4

# 値の範囲を制限
    execute if score @s ScoreToXPBar.points matches ..-1 run scoreboard players set @s ScoreToXPBar.points 0

    execute if score @s ScoreToXPBar.points matches 1001.. run scoreboard players set @s ScoreToXPBar.points 1000

    execute if score @s ScoreToXPBar.animation_speed matches ..0 run scoreboard players set @s ScoreToXPBar.animation_speed 1

    execute if score @s ScoreToXPBar.animation_speed matches 11.. run scoreboard players set @s ScoreToXPBar.animation_speed 10

    execute if score @s ScoreToXPBar.levels matches ..-1 run scoreboard players set @s ScoreToXPBar.levels 0

    execute if score @s ScoreToXPBar.levels matches 32768.. run scoreboard players set @s ScoreToXPBar.levels 32767

# レベルを129にセット
    xp set @s 129 levels

# 現在の経験値ポイントを取得
    #declare score_holder $previous
    execute store result score $previous ScoreToXPBar.points run xp query @s points

# 次tickに加算する経験値量を計算
    # 入力値を取得
        #declare score_holder $next
        scoreboard players operation $next ScoreToXPBar.points = @s ScoreToXPBar.points

    # 現在の経験値ポイントを引く
        scoreboard players operation $next ScoreToXPBar.points -= $previous ScoreToXPBar.points

    # アニメーションさせる
        # 10からアニメーション速度を引く
            #declare score_holder $animation_speed
            scoreboard players set $animation_speed ScoreToXPBar.animation_speed 10

            scoreboard players operation $animation_speed ScoreToXPBar.animation_speed -= @s ScoreToXPBar.animation_speed

        # 加算値を割る
            scoreboard players operation $next ScoreToXPBar.points /= $animation_speed ScoreToXPBar.animation_speed

    # 加算値に元の経験値ポイントを足す
        scoreboard players operation $next ScoreToXPBar.points += $previous ScoreToXPBar.points

# 経験値バーへ代入
    # 経験値ポイントを0にセット
        xp set @s 0 points

    # 512
        execute if score $next ScoreToXPBar.points matches 512.. run xp add @s 512 points

        execute if score $next ScoreToXPBar.points matches 512.. run scoreboard players remove $next ScoreToXPBar.points 512

    # 256
        execute if score $next ScoreToXPBar.points matches 256.. run xp add @s 256 points

        execute if score $next ScoreToXPBar.points matches 256.. run scoreboard players remove $next ScoreToXPBar.points 256

    # 128
        execute if score $next ScoreToXPBar.points matches 128.. run xp add @s 128 points

        execute if score $next ScoreToXPBar.points matches 128.. run scoreboard players remove $next ScoreToXPBar.points 128

    # 64
        execute if score $next ScoreToXPBar.points matches 64.. run xp add @s 64 points

        execute if score $next ScoreToXPBar.points matches 64.. run scoreboard players remove $next ScoreToXPBar.points 64

    # 32
        execute if score $next ScoreToXPBar.points matches 32.. run xp add @s 32 points

        execute if score $next ScoreToXPBar.points matches 32.. run scoreboard players remove $next ScoreToXPBar.points 32

    # 16
        execute if score $next ScoreToXPBar.points matches 16.. run xp add @s 16 points

        execute if score $next ScoreToXPBar.points matches 16.. run scoreboard players remove $next ScoreToXPBar.points 16

    # 8
        execute if score $next ScoreToXPBar.points matches 8.. run xp add @s 8 points

        execute if score $next ScoreToXPBar.points matches 8.. run scoreboard players remove $next ScoreToXPBar.points 8

    # 4
        execute if score $next ScoreToXPBar.points matches 4.. run xp add @s 4 points

        execute if score $next ScoreToXPBar.points matches 4.. run scoreboard players remove $next ScoreToXPBar.points 4

    # 2
        execute if score $next ScoreToXPBar.points matches 2.. run xp add @s 2 points

        execute if score $next ScoreToXPBar.points matches 2.. run scoreboard players remove $next ScoreToXPBar.points 2

    # 1
        execute if score $next ScoreToXPBar.points matches 1.. run xp add @s 1 points

        execute if score $next ScoreToXPBar.points matches 1.. run scoreboard players remove $next ScoreToXPBar.points 1

# 入力値を取得
    scoreboard players operation $next ScoreToXPBar.levels = @s ScoreToXPBar.levels

# 経験値レベルへ代入
    # 経験値レベルを0にセット
        xp set @s 0 levels

    # 16384
        execute if score $next ScoreToXPBar.levels matches 16384.. run xp add @s 16384 levels

        execute if score $next ScoreToXPBar.levels matches 16384.. run scoreboard players remove $next ScoreToXPBar.levels 16384

    # 8192
        execute if score $next ScoreToXPBar.levels matches 8192.. run xp add @s 8192 levels

        execute if score $next ScoreToXPBar.levels matches 8192.. run scoreboard players remove $next ScoreToXPBar.levels 8192

    # 4096
        execute if score $next ScoreToXPBar.levels matches 4096.. run xp add @s 4096 levels

        execute if score $next ScoreToXPBar.levels matches 4096.. run scoreboard players remove $next ScoreToXPBar.levels 4096

    # 2048
        execute if score $next ScoreToXPBar.levels matches 2048.. run xp add @s 2048 levels

        execute if score $next ScoreToXPBar.levels matches 2048.. run scoreboard players remove $next ScoreToXPBar.levels 2048

    # 1024
        execute if score $next ScoreToXPBar.levels matches 1024.. run xp add @s 1024 levels

        execute if score $next ScoreToXPBar.levels matches 1024.. run scoreboard players remove $next ScoreToXPBar.levels 1024

    # 512
        execute if score $next ScoreToXPBar.levels matches 512.. run xp add @s 512 levels

        execute if score $next ScoreToXPBar.levels matches 512.. run scoreboard players remove $next ScoreToXPBar.levels 512

    # 256
        execute if score $next ScoreToXPBar.levels matches 256.. run xp add @s 256 levels

        execute if score $next ScoreToXPBar.levels matches 256.. run scoreboard players remove $next ScoreToXPBar.levels 256

    # 128
        execute if score $next ScoreToXPBar.levels matches 128.. run xp add @s 128 levels

        execute if score $next ScoreToXPBar.levels matches 128.. run scoreboard players remove $next ScoreToXPBar.levels 128

    # 64
        execute if score $next ScoreToXPBar.levels matches 64.. run xp add @s 64 levels

        execute if score $next ScoreToXPBar.levels matches 64.. run scoreboard players remove $next ScoreToXPBar.levels 64

    # 32
        execute if score $next ScoreToXPBar.levels matches 32.. run xp add @s 32 levels

        execute if score $next ScoreToXPBar.levels matches 32.. run scoreboard players remove $next ScoreToXPBar.levels 32

    # 16
        execute if score $next ScoreToXPBar.levels matches 16.. run xp add @s 16 levels

        execute if score $next ScoreToXPBar.levels matches 16.. run scoreboard players remove $next ScoreToXPBar.levels 16

    # 8
        execute if score $next ScoreToXPBar.levels matches 8.. run xp add @s 8 levels

        execute if score $next ScoreToXPBar.levels matches 8.. run scoreboard players remove $next ScoreToXPBar.levels 8

    # 4
        execute if score $next ScoreToXPBar.levels matches 4.. run xp add @s 4 levels

        execute if score $next ScoreToXPBar.levels matches 4.. run scoreboard players remove $next ScoreToXPBar.levels 4

    # 2
        execute if score $next ScoreToXPBar.levels matches 2.. run xp add @s 2 levels

        execute if score $next ScoreToXPBar.levels matches 2.. run scoreboard players remove $next ScoreToXPBar.levels 2

    # 1
        execute if score $next ScoreToXPBar.levels matches 1.. run xp add @s 1 levels

        execute if score $next ScoreToXPBar.levels matches 1.. run scoreboard players remove $next ScoreToXPBar.levels 1

# リセット
    scoreboard players reset $previous ScoreToXPBar.points

    scoreboard players reset $next ScoreToXPBar.points

    scoreboard players reset $animation_speed ScoreToXPBar.animation_speed

    scoreboard players reset $next ScoreToXPBar.levels
