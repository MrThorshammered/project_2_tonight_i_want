class Recipe < ActiveRecord::Base
	belongs_to :country
	has_many :ingredients
end
