
# hoges = %W(hoge fuga piyo meso).to_enum
# nums = [9, 5, 4, 1].to_enum
#
#
# loop do
#   hoge = hoges.next
#   num = nums.next
#
#   p "hoge is #{hoge}, num is #{num}"
# end

hoges = %W(hoge fuga piyo meso).map

ret = nil;
fugas = loop do
  begin
    hoge = hoges.next
    hoges.feed hoge + "1"
  rescue StopIteration => e
    p e.result
    break
  end
end
p hoges
p fugas
p ret




