
fib = Fiber.new {
  a, b = 0, 1
  loop do
    a, b = b, a+b
    p a
    p b
    Fiber.yield(a)
  end
}

p 2.times.map{fib.resume}

# p fib.resume
# p fib.resume
