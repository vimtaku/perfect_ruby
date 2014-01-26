
## 順番がアレ
# for c in "hello world".split('')
#   Thread.fork c do |value|
#     sleep 1
#     p value
#   end
# end
# (Thread.list - [Thread.current]).each(&:join)


threads = []
for c in "hello world".split('')
  threads << (Thread.fork c do |value|
    Thread.stop
    p value
  end)
end
(Thread.list - [Thread.current]).each {|t|
  t.run
  sleep 0.2
}




