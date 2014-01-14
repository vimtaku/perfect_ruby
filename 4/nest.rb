
VALUE = 'toplevel'
class My
  VALUE = 'in_my'
  class SweetClass
     VALUE = 'in_sweet'
     def self.value
       p ::VALUE ## :: はトップレベルを参照スル
     end
  end
end

p My.new
p My::SweetClass.new
My::SweetClass.value

