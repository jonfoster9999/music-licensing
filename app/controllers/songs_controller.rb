class SongsController < ApplicationController
	def show
		@song = Song.find(params[:id])
		respond_to do |format|
			format.html { :show}
			format.json { render json: @song}
		end
	end
end
