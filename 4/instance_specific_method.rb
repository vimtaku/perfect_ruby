

class Foo
end

foo = Foo.new
bar = Foo.new

def bar.singleton_method
  p "Called!"
end

bar.singleton_method
foo.singleton_method rescue nil ## NoMethodError


class Foo
  def override_me
    p "Foo class"
  end
end

bar = Foo.new

def bar.override_me
  super
  p "in singleton method"
end

bar.override_me



