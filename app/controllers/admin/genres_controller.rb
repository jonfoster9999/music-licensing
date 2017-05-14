class Admin::GenresController < ApplicationController
	def index 
		@genres = Genre.find_each
	end 

	def destroy
		@genre = Genre.find(params[:id])
		@genre.destroy 
		redirect_to admin_genres_path  
	end 

	def new
		@genre = Genre.new
		render :new, :layout => "admin"
	end

	def edit
		@genre = Genre.find(params[:id]) 
	end

	def create 
		@genre = Genre.new(genres_params)
		if @genre.save 	
			redirect_to admin_genres_path
		else 
			render :new 
		end
	end

	def update 
		@genre = Genre.find(params[:id])
		if @genre.update(genres_params)
			redirect_to admin_genres_path 
		else
			render :edit 
		end
	end

	private 
		def genres_params 
			params.require(:genre).permit(:name)
		end
end
