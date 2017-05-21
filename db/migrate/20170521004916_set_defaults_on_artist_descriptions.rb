class SetDefaultsOnArtistDescriptions < ActiveRecord::Migration[5.0]
  def change
  	change_column :artists, :description, :text, :default => "No description available."
  end
end
