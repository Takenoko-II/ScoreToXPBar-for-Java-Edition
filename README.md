# ScoreToXPBar for Java Edition

ScoreToXPBar for Java Edition 1.20.2

プレイヤーの経験値バーにscoreboardの値を代入します。

## Usage

### ScoreToXPBar.points

オブジェクト `ScoreToXPBar.points` に値を設定すると、経験値ポイントを操作することができます。

入力した値は経験値バーを1000等分した際の割合として扱われます。

0 ~ 1000までの範囲が有効です。

### ScoreToXPBar.levels

オブジェクト `ScoreToXPBar.levels` に値を設定すると、経験値レベルを操作することができます。

入力した値がそのまま経験値レベルになります。

0 ~ 32767までの範囲が有効です。

### ScoreToXPBar.animation_speed

オブジェクト `ScoreToXPBar.animation_speed` に値を設定すると、経験値ポイントのアニメーションの速度を操作することができます。

1が最遅、10が最速で、デフォルトでは4です。

1 ~ 10までの範囲が有効です。

### 使用例

- 経験値バーを600/1000だけ埋める。
```mcfunction
scoreboard players set @s ScoreToXPBar.points 600
```

- 経験値ポイントのアニメーション速度を最遅にする。
```mcfunction
scoreboard players set @s ScoreToXPBar.animation_speed 1
```

- 経験値レベルを99に設定する。
```mcfunction
scoreboard players set @s ScoreToXPBar.levels 99
```

## Compatible Versions

- 1.20.2

## Note

- コマンドマクロ機能は一切使用しておりません。

## License

そんなものはない( ᐛ )

## Author

- [GitHub](https://github.com/Takenoko-II)
- [Twitter](https://twitter.com/Takenoko_4096)
- Discord: takenoko_4096 | たけのこII#1119
