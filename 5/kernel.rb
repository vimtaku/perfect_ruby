
# open('counter') do |f|
#   puts f.read
# end
#

## | から始めるとコマンド
# open('|ls') do |io|
#   puts io.read
# end

# open('|ls || grep counter') do |io|
#   puts io.read
# end

open '|-', 'w' do |io|
  if io
    ## 親プロセスではブロック引数が IO オブジェクト
    io.puts "hello world"
    sleep 3
  else
    puts "aaaaaaaaaaaaaaaaa"
    sleep 2
    puts "bbbbbb"
    ## 子プロセスでは引数が nil
    puts gets
  end

end


