class YoutubeFacade

  def self.country_video(country)
    response = YoutubeService.vids_about_country(country)

# require "pry"; binding.pry

    response[:items].map { |video_data| Video.new(video_data) }
  end

end
