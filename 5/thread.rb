
p Thread.list
files = %w(moge)
Dir.chdir( Dir.home ) do |path|
  threads = files.map{|file|
    Thread.fork{
      p "Thread.current is "
      p Thread.current
      num = File.readlines(file).length
      "#{file}: #{num}"
    }
  }
  p Thread.current
  p Thread.list
  p threads.map(&:value)
end
p Thread.list

