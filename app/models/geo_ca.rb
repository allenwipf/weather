class Geo_ca
	include ActiveModel::Model

	def initialize(zip = 68117)
     
    zipInfo = Geocoder.search(zip)

		@city = 1
		@state =2
		@weather = 2

	end





end