class LocationsController < ApplicationController
	# Sets the session variable object to new location based on the zip code entered
	def new
		session[:zip] = params[:zip]
		redirect_to root_path
	end 
end
