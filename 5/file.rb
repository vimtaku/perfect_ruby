

# file = File.open("file.txt")
# puts file.read
# file.close
#

## using block
# File.open "file.txt" do |file|
#   puts file.read
# end

# ## each line read
# File.open "file.txt" do |file|
#   while line = file.gets
#     puts line
#   end
# end


# File.open "file.txt" do |file|
#   file.each_line do |line|
#     puts line
#   end
# end



# File.open "moge.txt", 'w' do |fp|
#   fp.write 'Hello'
# end


# File.open 'foo', File::WRONLY|File::CREAT do |f|
#   f.puts 'puts'
#   f.puts
#
#   f.print 'print'
#   f.printf "%03d", 7
#   f.putc 97
# end


File.open 'blank', File::WRONLY|File::CREAT do |f|
  f.puts "hogehoge"
  f.seek 100
  f.puts "hogehoge"
end


