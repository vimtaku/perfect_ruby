

# File.open 'counter', File::RDWR|File::CREAT do |f|
#   f.flock File::LOCK_EX
#
#   count = f.read.to_i
#   f.rewind
#   sleep 25
#
#   f.write count.succ
# end


File.open 'counter', File::RDWR|File::CREAT do |f|
  hoge = f.flock File::LOCK_SH
  p hoge

  count = f.read.to_i
  f.rewind
  sleep 10

  f.write count.succ
end


