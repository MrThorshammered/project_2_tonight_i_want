class CountriesController < ApplicationController

	def index
		@countries = Country.all
	end

	def show
		@country = Country.find(params[:id])
	end

	def new
		@country = Country.new
	end

	def create
		@country = Country.new(country_params)
      if @country.save
        redirect_to '/countries'
      else
         redirect_to :new
      end
	end


	def destroy
		@country = Country.find(params[:id]).destroy
		redirect_to :back
	end




 private


    def country_params
      params.require(:country).permit(:name, :country_image)
    end
end