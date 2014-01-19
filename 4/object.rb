class Ruler
  attr_accessor :length

  def initialize(length)
    @length = length
  end

  def ==(other)
    length == other.length
  end
end

a = Ruler.new(30)
b = Ruler.new(20)
c = Ruler.new(30)

def a.my_method
  p "a's instance_method"
end

[a,b,c].map{|x| x.freeze }

p a.frozen?
#a.length = 5 ## cant modify frozen ruler


## dup, clone ともに
## 汚染状態はコピーされる
p ENV['PATH'].tainted? ## true
moge = ENV['PATH']

p "tainted?"
p moge.clone.tainted?
p moge.dup.tainted?
p "__both true__"

#
p a.object_id
a.my_method
copy_dup = a.dup
p copy_dup
## dup は freeze や特異メソッドはコピーされない
copy_dup.length = 3
copy_dup.my_method rescue nil ## undefined method

## clone だと freeze はコピーされない
copy_clone = a.clone
##copy_clone.length = 3 ## frozen error
copy_clone.my_method

