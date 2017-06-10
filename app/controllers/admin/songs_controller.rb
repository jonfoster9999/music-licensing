class Admin::SongsController < ApplicationController

	layout "texture"
	
	def index
		@songs = Song.find_each
		render :"admin/songs/index", :layout => "texture"
	end

	def show
		@song = Song.find(params[:id])
		respond_to do |format|
			format.html { render :show}
			format.json { render :json => @song}
		end
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
			params.require(:song).permit(:title, :catalog_id, :catalog_name, :lyrics, :tags_attributes => [:name], :genres_attributes => [:name], :artist_attributes => [:description, :name], :tag_ids => [], :genre_ids => [])
		end

end