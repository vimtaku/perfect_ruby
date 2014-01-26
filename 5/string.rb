
p "foobar".empty?
p "".empty?


p "foobar".length
p "てにおは".length
p "てにおは".bytesize

p "hoge fuga piyo".include?("hoge")
p "hoge fuga piyo".start_with?("hoge")

p "moge" + "moga"
p "hoge" * 3

p 'hoge %08d' % 59

moge = "moge"
moge << "moge"
p moge

str='The Answer, to Life, theuniverse, andeverything:42'
p str.slice(4)
p str.slice(4, 6) # 4文字目start 6文字とる
p str.slice(4..6)
p str.slice(/and/)


