class StoresController < ApplicationController

	def index
		MusicImporter.import  
		# @songs = Song.all.paginate(:page => params[:page], per_page: 20)
		# respond_to do |format|
		# 	format.json { render json: Song.all }
		# 	format.html { render :index}
		# end
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