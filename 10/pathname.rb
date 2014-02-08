

require "pathname"

# pn = Pathname("/tmp")
# p pn.parent
#
# fuga = Pathname("fuga")
# p fuga.parent.expand_path.to_s

thisfile = Pathname("pathname.rb")
thisfile.open do |fp|
  while line = fp.gets do
    p line
  end
end

Pathname("/tmp").opendir {|dir| p dir.entries }

