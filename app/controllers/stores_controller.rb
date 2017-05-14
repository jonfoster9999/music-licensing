class StoresController < ApplicationController

	def index
		MusicImporter.import  
		  @filterrific = initialize_filterrific(
		    Song,
		    params[:filterrific]
		  ) or return
		  @songs = @filterrific.find.page(params[:page]).paginate(:page => params[:page], per_page: 10)

		  respond_to do |format|
		    format.html
		    format.js
		  end
	end
end