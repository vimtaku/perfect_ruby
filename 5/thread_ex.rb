

t = Thread.fork {
  begin
    loop do
      # do something
      p "something.."
    end
  ensure
    puts "ensuring "
  end
}


## 例外を発生させる
t.raise

# 異常終了している
p t.status
p t.status
p t.status
p t.status


