class Admin::TagsController < ApplicationController

	def index 
		@tags = Tag.find_each
	end 

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy 
		redirect_to "admin/tags" 
	end 

	def new
		@tag = Tag.new
		render :new, :layout => "admin"
	end

	def show 
		redirect_to admin_tags_path
	end

	def edit
		@tag = Tag.find(params[:id]) 
	end

	def create 
		@tag = Tag.new(tags_params)
		if @tag.save 	
			redirect_to admin_tags_path
		else 
			render :new 
		end
	end

	def update 
		@tag = Tag.find(params[:id])
		if @tag.update(tags_params)
			redirect_to admin_tags_path 
		else
			render :edit 
		end
	end

	private 
		def tags_params 
			params.require(:tag).permit(:name)
		end
end
