class LocationsController < ApplicationController
	# Sets the session variable object to new location based on full or partial address entered
	def new
		session[:address] = params[:address]
		redirect_to root_path
	end 
end
