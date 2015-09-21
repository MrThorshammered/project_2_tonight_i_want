class Recipe < ActiveRecord::Base
	mount_uploader :recipe_image, RecipeImageUploader
	belongs_to :country
	has_many :ingredients

end
