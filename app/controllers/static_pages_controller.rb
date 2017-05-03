class StaticPagesController < ApplicationController

	def index
	  @geoInfo = session[:zip] ? Location.new(session[:zip]) : Location.new
	  @today = Dark_sky.new(@geoInfo.longt, @geoInfo.latt)
	end 

end
