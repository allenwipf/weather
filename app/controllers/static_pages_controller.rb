class StaticPagesController < ApplicationController

	def index

		if session[:geoinfo].nil?
			@forecast = ForecastIO.forecast(41.207121, -96.000644)
		else
			@forecast = ForecastIO.forecast(session[:geoinfo][0].data["longt"], session[:geoinfo][0].data["latt"])
		end

	end 
end
