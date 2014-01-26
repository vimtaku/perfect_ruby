
require 'socket'

Process.daemon
server = TCPServer.new 'localhost', 4423
loop do
  client = server.accept
  client.puts Time.now
  client.close
end

