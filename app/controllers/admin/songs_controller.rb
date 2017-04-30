class Admin::SongsController < ApplicationController

	def index
		@songs = Song.all
	end

	def show 
		@song = Song.find(params[:id])
	end

	def edit
		@song = Song.find(params[:id])
		@tag = Tag.new
	end

	def update
		@song = Song.find(params[:id])
		@song.update(song_params)
		@song.save
		redirect_to admin_song_path(@song)
	end

	private
		def song_params
			params.require(:song).permit(:title, :tags_attributes => [:name], :tag_ids => [])
		end

end