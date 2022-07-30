# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)

        return response.body
    end

    def parse_json
        return JSON.parse(self.get_response_body)
    end
end


get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json