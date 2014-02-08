
require 'erb'

erb = ERB.new('Hello <%= str %>.')

kaigi =  -> {
  str = "Ruby kaigi"

  binding
}

conf = -> {
  str = "Ruby conf"
  binding
}

## コンテキストが違う
p erb.result(kaigi.call)
p erb.result(conf.call)


class Something
  attr_accessor :value

  def instance_binding
    binding
  end
end

erb = ERB.new('value: <%= value %>')
something = Something.new
something.value = 'foo'
p erb.result( something.instance_binding )
something.value = 'bar'
p erb.result( something.instance_binding )




