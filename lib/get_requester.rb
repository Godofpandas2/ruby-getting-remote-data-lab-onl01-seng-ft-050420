require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"

  def parse_json
  # we use the JSON library to parse the API response into nicely formatted JSON
    programs = JSON.parse(self.get_response)
    programs.collect do |program|
      program["agency"]
    end
  end

  def get_response
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

end

#programs = GetPrograms.new.get_programs
#puts programs
programs = GetPrograms.new
puts programs.program_school.uniq
