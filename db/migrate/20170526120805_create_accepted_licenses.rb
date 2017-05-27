class CreateAcceptedLicenses < ActiveRecord::Migration[5.0]
  def change
    create_table :accepted_licenses do |t|
      t.string :details
      t.integer :song_id
      t.integer :user_id
      t.timestamps
    end
  end
end
