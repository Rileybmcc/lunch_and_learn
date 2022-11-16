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
    JSON.parse(response.body, symbolize_names: true)
  end

end
