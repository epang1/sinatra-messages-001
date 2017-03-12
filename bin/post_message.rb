# post_message.rb
require "net/http"
require 'uri'
require 'json'
require 'pry'
# require_relative '../models/message.rb'

puts ""
print "Who do you want to message? "
to = gets.chomp
print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:9292")
params = {from: from, to: to, content: content}

http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri)

request["Content-Type"] = "application/json"
request.body = params.to_json
response = http.request(request)

if response.message == "OK"
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end

puts ""
