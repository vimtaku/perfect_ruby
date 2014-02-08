


puts "moge"

print "Hi"
print "Hi"

print 1, 0.5, 'foo'

p sprintf("moge is %d", 3)


p "hogehoge %d" % 3 ## sprintf の sugar (だけどわかりにくい


class Ruler
  def initialize(length)
    @length = length
  end

  def to_s
    '=' * @length
  end

  def inspect
    "Ruler(length: #{@length})"
  end
end

ruler = Ruler.new(30)
puts ruler
p ruler # p は puts ruler.inspect の sugar


warn "mogera"



