

o = Object.new
ObjectSpace.define_finalizer(o, proc{puts "finalizing..."})

