class Dark_sky
	include ActiveModel::Model

	attr_accessor :info
	
	# Creates an object that contains the weather for a specific longitude and latitude
	def initialize(longt, latt)
    @info = ForecastIO.forecast(latt, longt)["daily"]["data"][0]
	end
end