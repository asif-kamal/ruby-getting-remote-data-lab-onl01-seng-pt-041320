# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
  uri = URI.parse(@url)
  response = Net::HTTP.get_response(uri)
  response.body
  end

  def parse_json
# we use the JSON library to parse the API response into nicely formatted JSON
  people = JSON.parse(self.get_response_body)
end

end

# people = GetRequester.new(url)
# puts people.parse_json.uniq
