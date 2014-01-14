
class Ruler
  attr_accessor :length ## インスタンス変数のみ使用可能
  ## attr_accessor :length? ## 疑問符などは使用不可
  attr_accessor :width, :height
  attr_reader :ronum ## ro accessor
  attr_writer :wonum ## wo accessor

  def initialize(num=0)
    @ronum = num
  end

  def inspect()
    "wonum=#{@wonum}, ronum=#{@ronum}"
  end

end

ruler = Ruler.new
p ruler.length
ruler.length = 30 ## Ruler#length= の呼び出し
p ruler.length

ruler.width = ruler.height = 50
p ruler.width
p ruler.height
p ruler.ronum

p "ruler 2"
ruler2 = Ruler.new(1000)
p ruler2.ronum
ruler2.wonum = 50000
hoge = ruler2.wonum rescue 3 ## undefined method error occur
p hoge

