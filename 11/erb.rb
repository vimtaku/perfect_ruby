

require 'erb'

name = 'Alice'


erb = ERB.new('Hello, <%= name %>')
p erb.result();
