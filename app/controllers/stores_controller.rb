class StoresController < ApplicationController

	def index
		MusicImporter.import  
		@songs = Song.all.paginate(:page => params[:page], per_page: 20)
		respond_to do |format|
			format.json { render json: Song.all }
			format.html { render :index}
		end
	end
end