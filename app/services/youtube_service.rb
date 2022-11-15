class YoutubeService

  def self.conn
    Faraday.new(url: "https://www.youtube.googleapis.com/youtube/v3/") do |faraday|
      faraday.params['key'] = ENV['ytube_key']
      faraday.params['part'] = "snippet"
      faraday.params['channelId'] = "UCluQ5yInbeAkkeCndNnUhpw"
    end
  end

  def self.vids_about_country(country)
    response = conn.get("search?q=#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
