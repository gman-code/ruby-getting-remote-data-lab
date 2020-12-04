require 'net/http'
require 'open-uri'
require 'json'

# require 'bundler'
# Bundler.require
# require 'yaml'

class GetRequester
    def initialize(url) 
        @url = url

    end
    

    
    def get_response_body 
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body  
    end 

    def parse_json  
     requester = JSON.parse(self.get_response_body)
    end


    # def requester
    #     # we use the JSON library to parse the API response into nicely formatted JSON
    #     requester = JSON.parse(self.get_requester)
    #      requester.each do |requester|
    #         program["occupation"]  
    #     end 
     
end
# requester = GetRequester.new.get_requester
# puts requester