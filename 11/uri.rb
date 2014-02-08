

require 'uri'
require 'net/http'

# uri = URI('http://example.com/')
# #print Net::HTTP.get( uri )
# Net::HTTP.get_print( uri )
#


uri = URI('http://example.com/')
response = Net::HTTP.get_response( uri )
p response.code
p response.message
p response.value # nil


uri = URI('http://example.com/hogehohgoehg')
response = Net::HTTP.get_response( uri )
p response.code
p response.message
p response.value ## (Net::HTTPServerException)



