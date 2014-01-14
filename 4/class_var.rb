
class Parent
  @@val = 'foo'

  def self.say
    p @@val
  end
end

class Child < Parent
  def say
    p @@val
  end
end

Parent.say
Child.say
Child.new.say

