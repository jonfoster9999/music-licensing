class SongsController < ApplicationController
	def show
		@song = Song.find(params[:id])
		respond_to do |format|
			format.html { :show}
			format.json { render json: @song}
		end
	end

	def create 
		raise params.inspect
	end

	def index 
		raise params.inspect 
	end
end
