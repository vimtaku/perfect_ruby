require "bundler"
Bundler.require

sample_value = 'sample value'

class Poke
  def hoge
    moge = "mogemoge"
    binding.pry
    p "hogehoge"
    moga = "mogamoga"
    binding.pry
  end
end


Poke.new.hoge
