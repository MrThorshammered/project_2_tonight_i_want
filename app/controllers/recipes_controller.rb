class RecipesController < ApplicationController

	def show
		# @recipe = Recipe.all

@countries = Country.find(params[:id])
	end
end
