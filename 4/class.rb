

class MyClass
  DEFAULT_VALUE = 222

  def initialize(num=0)
    @num = num
  end

  def method_a
    p "method_a"
  end

  def hoge
    method_a
  end

  def plus?
    @num > 0
  end
  def minus?
    @num < 0
  end
  def zero?
    @num == 0
  end
end

p MyClass::DEFAULT_VALUE
myclass = MyClass.new
p myclass.zero?
myclass2 = MyClass.new(5)
p myclass.plus?
p myclass.zero?
p myclass.minus?
myclass3 = MyClass.new(-5)
p myclass.plus?
p myclass.zero?
p myclass.minus?

