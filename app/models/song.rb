class Song < ActiveRecord::Base

  rails_admin do
    edit do
      field :title
      field :lyrics, :ck_editor
      field :soundcloud_url
      field :original_song_url
    end
  end

end
