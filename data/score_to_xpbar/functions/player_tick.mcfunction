#> score_to_xpbar:player_tick
#
# @internal

# 入力の検知
    #declare tag ScoreToXPBar.scoreboard_set
    tag @s add ScoreToXPBar.scoreboard_set

    execute unless score @s ScoreToXPBar.points = @s ScoreToXPBar.points unless score @s ScoreToXPBar.levels = @s ScoreToXPBar.levels run tag @s remove ScoreToXPBar.scoreboard_set

    execute if entity @s[tag=ScoreToXPBar.scoreboard_set] run function score_to_xpbar:

# 進捗の剥奪
    advancement revoke @s only score_to_xpbar:player_tick
