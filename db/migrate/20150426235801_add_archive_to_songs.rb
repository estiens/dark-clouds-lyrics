class AddArchiveToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :archived, :boolean
  end
end
