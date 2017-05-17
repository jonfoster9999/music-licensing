class AddAlbumCoversToSongs < ActiveRecord::Migration[5.0]
  def change
  	add_column :songs, :album_cover_id, :integer, :default => 1
  end
end
