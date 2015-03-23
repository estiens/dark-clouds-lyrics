class Song < ActiveRecord::Base

  def slug
    title.gsub(/\s+/, "").downcase
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

end
