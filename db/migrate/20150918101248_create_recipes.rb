class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :method
      t.string :image
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
