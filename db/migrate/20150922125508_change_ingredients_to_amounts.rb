class ChangeIngredientsToAmounts < ActiveRecord::Migration
  def change
  	rename_column :recipes, :ingredients, :amounts
  end
end
