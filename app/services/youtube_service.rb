require 'faraday'
require 'json'

class YoutubeService

  def self.conn
    Faraday.new("https://www.youtube.googleapis.com") do |faraday|
      faraday.params['key'] = ENV["ytube_key"]
      faraday.params['part'] = "snippet"
      faraday.params['channelId'] = "UCluQ5yInbeAkkeCndNnUhpw"
    end
  end

  def self.vids_about_country(country)
    response = conn.get("/youtube/v3/search") do |request|
      request.params['q'] = country
    end
    # require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)

    # require "pry"; binding.pry
    # response = Faraday.get(url: "https://www.youtube.googleapis.com/youtube/v3/search") do |faraday|
    #   faraday.params['key'] = ENV['ytube_key']
    #   faraday.params['part'] = 'snippet'
    #   faraday.params['channelId'] = 'UCluQ5yInbeAkkeCndNnUhpw'
    #   faraday.params['q'] = country
    # end



    # response = conn.get("/youtube/v3/search?q=#{country}")
    # JSON.parse(response.body, symbolize_names: true)

    require "pry"; binding.pry
  end

end
