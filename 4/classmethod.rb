
class Ruler
  attr_accessor :length

  def self.pair
    [new, new]
  end

  ## クラスメソッドまとめて定義
  ## 特異クラス
  class << self
    def hoge
      p "hoge"
    end
  end

end

p Ruler.pair
Ruler.hoge


