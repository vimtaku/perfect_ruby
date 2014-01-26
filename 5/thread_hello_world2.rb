
threads = []
list = "hello world".split('')
i = list.length
for c in list
  threads << (Thread.fork c,i do |value, pri|
    Thread.stop
    p "Thread.current.priority is #{Thread.current.priority}"
    p value
  end)
end

tlist = (Thread.list - [Thread.current])
tlist.each_with_index{|t, i|
  p "list.length is #{list.length}"
  p i
  t.priority = 3-i
  p "t.priority set #{t.priority}"
  t
}.each(&:run)




