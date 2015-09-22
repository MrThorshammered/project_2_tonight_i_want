class RecipesController < ApplicationController


	def index
	end


	def show
		# binding.pry
		@country = Country.find(params[:id])
	end


	def new
		@recipe = Recipe.new(@countries)
	end

	def create
		# binding.pry
		@recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to recipe_path(recipe_params[:country_id])
      else
         redirect_to :new
      end
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
      if @recipe.update(recipe_params)
      	redirect_to recipe_path(recipe_params[:country_id])
      end
	end

	def destroy
		@recipe = Recipe.find(params[:id]).destroy
		redirect_to :back
	end

  private


    def recipe_params
      params.require(:recipe).permit(:name, :method, :amounts, :recipe_image, :country_id)
    end
end
