# make a api call
require 'net/http'
require 'uri'
require 'json'

http = Net::HTTP.new("localhost", 3000)
request = Net::HTTP::Get.new()