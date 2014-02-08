

require "uri"
require "net/http"

uri = URI.parse(ARGV.first)
Net::HTTP.start(uri.host, uri.port) do |http|
  response = http.get(uri.path)

  case response
  when Net::HTTPOK
    puts response.body
  else
    puts %(#{response.code} #{response.message})
  end
end


