class Country < ActiveRecord::Base
	mount_uploader :country_image, CountryImageUploader
	has_many :recipes
end
