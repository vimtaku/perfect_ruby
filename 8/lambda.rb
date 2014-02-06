

def proc_return
  Proc.new { return 1; puts "unreachable" }.call
  :unreachable
end

##  1 になる
p proc_return


## local jump error
Proc.new { return 1; puts :unreachable }.call rescue nil


p lambda { return 1; puts :unreachable }.call

def lambda_break
  lambda { break 1; puts :unreachable }.call
  :reachable
end

p lambda_break


def wrap_method(proc_or_lambda)
  x = proc_or_lambda.call(1)
  x.to_s
end

p wrap_method proc {|x| next x; x.succ; }
p wrap_method lambda {|x| next x; x.succ; }


p Proc.new {|x,y| x }.call(1)
## 引数の数は正しくする必要がある
p lambda {|x,y| x }.call(1,2)


meso = ->(){}
p meso.class




