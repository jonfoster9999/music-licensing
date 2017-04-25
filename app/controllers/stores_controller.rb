class StoresController < ApplicationController

	def index
		MusicImporter.import  
		@songs = Song.all
		respond_to do |format|
			format.json { render json: Song.all }
			format.html { render :index}
		end
	end
end