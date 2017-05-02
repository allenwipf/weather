class DarkSkyController < ApplicationController

	def new
		session[:geoinfo] = Geocoder.search(params[:zip])
		redirect_to root_path
	end 
end
