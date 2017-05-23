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

	def toggle_favorites 
		user = User.find(params[:user_id])
		song = Song.find(params[:song_id])
		if user.favorites.include?(song)
			user.favorites.delete(song)
		else
			user.favorites << song 
		end
		user.save
	end
end
