
## これで euc-jp 前提で読み込もうとするとエラー
File.open 'io_encoding.txt', 'r:euc-jp:utf-8' do |f|
  puts f.read
end

## これで utf-8 前提で読み込もうとするとエラー
# File.open 'io_encoding.txt' do |f|
#   puts f.read
# end



