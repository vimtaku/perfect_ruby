

fiber = Fiber.new {
  puts "Hello, Fiber"

  Fiber.yield

  puts "Hello again"
}

fiber.resume
fiber.resume
fiber.resume
