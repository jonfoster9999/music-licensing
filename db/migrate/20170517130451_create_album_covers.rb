class CreateAlbumCovers < ActiveRecord::Migration[5.0]
  def change
    create_table :album_covers do |t|
      t.string :file_name
      t.timestamps
    end
  end
end
