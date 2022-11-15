class YoutubeService

  def self.conn
    Faraday.new(url: "https://www.youtube.googleapis.com/youtube/v3/") do |faraday|
      faraday.params['key'] = ENV["ytube_key"]
      faraday.params['part'] = "snippet"
      faraday.params['channelId'] = "UCluQ5yInbeAkkeCndNnUhpw"
    end
  end

  def self.vids_about_country(country)

# require "pry"; binding.pry

    # response = conn.get("search?q=#{country}")
    response = conn.get("search?q=#{country}") do |request|
      request.params['country'] = country
    end

    JSON.parse(response.body, symbolize_names: true)
  end

end
