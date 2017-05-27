class AddPriceToAcceptedLicenses < ActiveRecord::Migration[5.0]
  def change
  	add_column :accepted_licenses, :price, :integer
  end
end
