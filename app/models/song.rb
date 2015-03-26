class Song < ActiveRecord::Base
  before_save :get_soundcloud_embed

  def slug
    title.gsub(/\s+/, "").gsub(/\W/,'').downcase
  end

  rails_admin do
    edit do
      field :title
      field :lyrics, :ck_editor
      field :soundcloud_url
      field :original_song
      field :original_song_url
      field :when_sung
    end
  end

  private

  def get_soundcloud_embed
    unless soundcloud_url.blank?
      client = SoundCloud.new(:client_id => ENV['SOUNDCLOUD_ID'])
      track_url = self.soundcloud_url
      embed_info = client.get('/oembed', :url => track_url)
      self.soundcloud_html = embed_info.html
    end
  end

end
