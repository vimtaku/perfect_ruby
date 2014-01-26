
# ## 期待通りに動かない
# for item in %w(foo bar baz)
#   Thread.fork do
#     sleep 1
#     puts item
#   end
# end
#
# (Thread.list - [Thread.current]).each(&:join)


for item in %w(foo bar baz meso)
  Thread.fork item do |value|
    sleep 1
    puts value
  end
end

(Thread.list - [Thread.current]).each(&:join)
