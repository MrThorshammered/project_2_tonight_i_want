class CountriesController < ApplicationController

	def index
		@countries = Country.all
	end

	def show
	end

	def new
	end
end
