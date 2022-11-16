class Video

  # attr_reader :country,
              # :video,
              # :title,
              # :youtube_video_id
  #
  # def initialize(vid_data, country)
  # @country = country
  @video = vid_data[:snippet][:]
  @title = vid_data[:]
  @youtube_video_id = vid_data[:id][:videoId]
  # end
  #
  # def as_json(option={})
    # {:id => 'null', :type => "learning_resource", :attributes => {:country => self.country, :video => self, :images => {:images => [{ :alt_tag => , :ur => }]}}}
  # end

end
