
## エクスクラメーションの使い方


## 破壊的な変更
str = "hoge"
p str.reverse
p str
str.reverse!
p str



## (active record などで)例外の発生

# user.save  ## 失敗すると false
# user.save! ## 例外の発生


