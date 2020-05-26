require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

attr_accessor :url

 def initialize(url)
   @url = url
 end

 def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body

    #sends a GET request to the URL passed in on initialization
    #body of the response should be returned

  end

  def parse_json
    requester = JSON.parse(get_response_body)

#programs = GetPrograms.new.get_programs
#puts programs
programs = GetPrograms.new
puts programs.program_school.uniq
