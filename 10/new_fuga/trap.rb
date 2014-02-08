

trap :INT do
  puts "\nInterrupted!"
  exit
end

loop do
  p "sleeping.."
  sleep 1
end

