

proc_obj = Proc.new{|a| a }
p proc_obj.call(1)

def proc_factory
  ## 引数を渡さない場合は 渡されたブロック が実行される
  Proc.new
end

block_proc = proc_factory { 'method block' }
p block_proc.call

proc_factory rescue "" ## in `new': tried to create Proc object without a block (ArgumentError)



p proc_obj.(1)
p proc_obj[1]

sum_proc = Proc.new{|x, y| x+y}
p sum_proc === [1,2]

def what_class(obj)
  case obj
  # when /\Ahoge\z/
  #   "Match"
  when proc {|x| x.kind_of? String}
    String
  when proc {|x| x.kind_of? Numeric}
    Numeric
  else
    Class
  end
end

p what_class "string"
p what_class 1
p what_class  nil
p what_class  "hoge"



proc_obj = proc { 1 }
p proc_obj.()
p proc_obj[2]



## & をつけて呼び出すと proc になる
def convert_proc(&block)
  block
end

proc_obj = convert_proc { 1 }
p proc_obj.class
p proc_obj.call



add = Proc.new {|x,y| x + y }
inc = add.curry.(1)
p inc.(3)

add_at_mark = add.curry.('@')
p add_at_mark.("hogehoge")


add = Proc.new{|x,y| x + y }
inc = Proc.new{|y| add.(1, y)}

p inc.(1)


lambda_obj = lambda { 1 }
p lambda_obj.class
p lambda_obj.call


inc = ->(x){x+1}
p inc.(1)

add = ->(x,y){x+y}
incr = add.curry.(1)
p incr.(5)

