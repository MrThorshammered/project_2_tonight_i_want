class RecipesController < ApplicationController


	def show
		@countries = Country.find(params[:id])
	end


	def new
		@recipe = Recipe.new(@countries)
	end

	def create
		@recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to recipe_path(recipe_params[:country_id])
      else
         redirect_to :new
      end

	end




  private
    def recipe_params
      params.require(:recipe).permit(:name, :method, :recipe_image, :country_id)
    end
end
