

def hoge
  p "1"

  array = (1..10).map{|x|
    x * 5
  }

  p "a"
end

TracePoint.trace do |e|
  p e
end

hoge

