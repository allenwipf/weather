class DarkSkyController < ApplicationController

	def new
		session[:geoinfo] = Geocoder.search(params[:address])
		redirect_to root_path
	end 
end
