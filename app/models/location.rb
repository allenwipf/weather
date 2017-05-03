class Location
	include ActiveModel::Model

	attr_accessor :city
	attr_accessor :state
	attr_accessor :zip
	attr_accessor :confidence
	attr_accessor :longt
	attr_accessor :latt

	DEFAULT_ZIP = 68117

# Creates a Location Object based on the zip code entered.
	def initialize(zip = DEFAULT_ZIP)
    zipInfo = (!Geocoder.search(zip).empty? ? Geocoder.search(zip) : Geocoder.search(DEFAULT_ZIP))

		@city = zipInfo[0].data["standard"]["city"]
		@state = zipInfo[0].data["standard"]["prov"]
		@zip = zipInfo[0].data["standard"]["postal"]
		@confidence = zipInfo[0].data["standard"]["confidence"]
		@longt = zipInfo[0].data["longt"]
		@latt = zipInfo[0].data["latt"]
	end
end