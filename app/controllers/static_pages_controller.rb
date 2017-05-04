class StaticPagesController < ApplicationController

	def index
	  @geoInfo = session[:address] ? Location.new(session[:address]) : Location.new
	  @today = Dark_sky.new(@geoInfo.longt, @geoInfo.latt)
	end 

end
