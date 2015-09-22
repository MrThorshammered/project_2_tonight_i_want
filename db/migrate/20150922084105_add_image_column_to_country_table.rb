class AddImageColumnToCountryTable < ActiveRecord::Migration
  def change
  	add_column :countries, :country_image, :string
  end
end
