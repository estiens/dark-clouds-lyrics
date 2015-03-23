class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :lyrics
      t.string :soundcloud_url
      t.string :original_song_url
      t.string :original_song
      t.string :when_sung

      t.timestamps null: false
    end
  end
end
