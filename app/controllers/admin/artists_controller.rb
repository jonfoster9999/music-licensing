class Admin::ArtistsController < ApplicationController
	
	layout "texture"

	def index 
		@artists = Artist.find_each	
	end

	def show 
		@artist = Artist.find(params[:id])
	end

	def edit 
		@artist = Artist.find(params[:id])
	end

	def update 
		@artist = Artist.find(params[:id])
		@artist.update(admin_artist_params)
		redirect_to admin_artist_path(@artist)
	end

	private 
		def admin_artist_params 
			params.require(:artist).permit(:description)
		end
end
