class CreateMusicImporters < ActiveRecord::Migration[5.0]
  def change
    create_table :music_importers do |t|

      t.timestamps
    end
  end
end
