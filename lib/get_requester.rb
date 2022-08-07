class GetRequester
    attr_accessor :url
    require 'net/http'
    require 'open-uri'
    require 'json'

    def initialize(url)
        @url = url     
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    

    def parse_json
    json = get_response_body
    JSON(json)
    end

end
