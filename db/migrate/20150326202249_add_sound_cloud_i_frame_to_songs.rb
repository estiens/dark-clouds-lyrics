class AddSoundCloudIFrameToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :soundcloud_html, :text
  end
end
