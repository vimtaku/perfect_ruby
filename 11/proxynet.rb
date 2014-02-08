
require 'uri'
require 'net/http'

proxy_class = Net::HTTP::Proxy('127.0.0.1', 8080)
http_proxy = proxy_class.new('example.com')
http_proxy.start do |h|
  h.get("/")
end
