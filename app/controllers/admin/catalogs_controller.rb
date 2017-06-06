class Admin::CatalogsController < ApplicationController

	
	def index 
		@catalogs = Catalog.find_each
	end 

	def destroy
		@catalog = Catalog.find(params[:id])
		@catalog.destroy 
		redirect_to admin_catalogs_path  
	end 

	def new
		@catalog = Catalog.new
		render :new, :layout => "admin"
	end

	def edit
		@catalog = Catalog.find(params[:id]) 
	end

	def create 
		@catalog = Catalog.new(catalogs_params)
		if @catalog.save 	
			redirect_to admin_catalogs_path
		else 
			render :new 
		end
	end

	def update
		@catalog = Catalog.find(params[:id])
		if @catalog.update(catalogs_params)
			redirect_to admin_catalogs_path 
		else
			render :edit 
		end
	end

	def show 
		@catalog = Catalog.find(params[:id])
	end

	private 
		def catalogs_params 
			params.require(:catalog).permit(:name, :song_ids => [])
		end
end
