
p 0.zero?
p 3.zero?
p 0.nonzero?
p 3.nonzero?

p 356.integer?

p 3.6.integer?
p 3.integer?
p Complex(1, 2).real?



p 1 <=> 2 ## -1
p 1 <=> 1 ## 0
p 2 <=> 1 ## 1


sorted = %w(5 4 3).sort {|a,b|
  a <=> b
  ## b <=> a ## 降順
}
p  sorted

sorted_words_by_len = %w(Alice Bob Charie).sort {|a,b|
  a.length <=> b.length
}
p sorted_words_by_len


## 自身の整数値か、自身より大きい整数値のうち最小を返す
p (5.5).ceil
p (5.1).ceil
p (5.0).ceil
p (-5.0).ceil
p (-5.1).ceil

## 自身の整数値か、自身より小さい整数値のうち最小を返す
p (5.5).floor
p (5.1).floor
p (5.0).floor
p (-5.0).floor
p (-5.1).floor

## 四捨五入
p 1.4.round
p 1.5.round

## 自身と 0 の間で自身に最も近い整数値を返す
p 1.4.truncate
p 1.5.truncate
p 0.9.truncate
p -0.9.truncate
p -1.4.truncate
p -1.5.truncate


3.step 5 do |n|
  p n
end

3.step 5, 0.1 do |n|
  p n
end

p 100.class
p 10000000000000000000000000.class

