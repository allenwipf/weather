class Dark_sky
	include ActiveModel::Model

	attr_accessor :daily
	attr_accessor :alerts
	
	# Creates an object that contains the weather for a specific longitude and latitude
	def initialize(longt, latt)
    weather = ForecastIO.forecast(latt, longt)
    
    @daily = weather["daily"]["data"][0]
    @alerts = weather.alerts ? weather.alerts[0][:description] : "There are no alerts for this location."
	end
end