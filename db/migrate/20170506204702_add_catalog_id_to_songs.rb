class AddCatalogIdToSongs < ActiveRecord::Migration[5.0]
  def change
  	add_column :songs, :catalog_id, :integer
  end
end
