class StaticPagesController < ApplicationController

	def index

		@forecast = ForecastIO.forecast(37.8267, -122.423)
		debugger
		
	end 
end
