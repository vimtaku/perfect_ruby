
class Parent
  def initialize
    @ivar = "content"
    p "ivaaaaaaaaaaaaa"
  end
  def greet
    puts "Hi"
  end
end


class Child < Parent
  attr_reader :ivar
  def initialize
    @ivar = "moge"
    super
  end
end


p Child.superclass
child = Child.new
child.greet

p Parent.new
p Child.new
## java とかと同様、constructor で暗黙に super がよばれている

## だけど super は一番上で呼び出さなきゃだめみたいなのはない模様
p child.ivar




